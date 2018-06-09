/* =========================================
* AXI Lite Interface for ARM CPU cores to
* access MIPS instruction/data memory.
* Total Address space is 16KB.
* The low 8KB is allocated to distributed memory.
* The high 8KB is allocated to memory-mapped
* I/O registers
*
* Author: Yisong Chang (changyisong@ict.ac.cn)
* Date: 31/05/2016
* Version: v0.0.1
*===========================================
*/

`define C_S_AXI_DATA_WIDTH 32
`define C_S_AXI_ADDR_WIDTH 10

module axi_lite_if (
  input wire	S_AXI_ACLK,
  input wire	S_AXI_ARESETN,

  //AXI AW Channel
  input  wire [`C_S_AXI_ADDR_WIDTH - 1:0] S_AXI_AWADDR,
  input  wire                          S_AXI_AWVALID,
  output wire                          S_AXI_AWREADY,

  //AXI W Channle
  input  wire [`C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
  input  wire [`C_S_AXI_DATA_WIDTH/8-1:0] S_AXI_WSTRB,
  input  wire                          S_AXI_WVALID,
  output wire                          S_AXI_WREADY,

  //AXI B Channel
  output wire [1:0]                    S_AXI_BRESP,
  output wire                          S_AXI_BVALID,
  input  wire                          S_AXI_BREADY,

  //AXI AR Channel
  input  wire [`C_S_AXI_ADDR_WIDTH - 1:0] S_AXI_ARADDR,
  input  wire                          S_AXI_ARVALID,
  output wire                          S_AXI_ARREADY,

  //AXI R Channel
  output wire [`C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
  output wire [1:0]                    S_AXI_RRESP,
  output wire                          S_AXI_RVALID,
  input  wire                          S_AXI_RREADY,
 
  //MIPS reset signal
  output reg                           mips_rst
);

reg                           axi_rvalid;
reg [`C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg [1:0]					  axi_rresp;

wire                          axi_bvalid;
reg [1:0]                     axi_bresp;

reg                           axi_awready;

reg                           axi_wready;

reg                           axi_arready;

//MMIO decode signal for MIPS reset register (addr: 0x000)
wire 						  mips_rst_sel;
wire						  mips_rst_wdata;

wire                          wren;

assign S_AXI_AWREADY = axi_awready;

assign S_AXI_WREADY  = axi_wready;

assign S_AXI_BRESP  = axi_bresp;
assign S_AXI_BVALID = axi_bvalid;

assign S_AXI_ARREADY = axi_arready;

assign S_AXI_RDATA  = axi_rdata;
assign S_AXI_RVALID = axi_rvalid;
assign S_AXI_RRESP  = axi_rresp;


////////////////////////////////////////////////////////////////////////////
// Implement axi_awready generation
//
//  axi_awready is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
//  de-asserted when reset is low.

  always @( posedge S_AXI_ACLK )
  begin
	  if(S_AXI_ARESETN == 1'b0)
		  axi_awready <= 1'b0;
	  else
	  begin
		  ////////////////////////////////////////////////////////////////////////////
		  // slave is ready to accept write address when
		  // there is a valid write address and write data
		  // on the write address and data bus. This design
		  // expects no outstanding transactions.
		  if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
			  axi_awready <= 1'b1;
		  else
			  axi_awready <= 1'b0;
	  end
  end

////////////////////////////////////////////////////////////////////////////
// Implement axi_wready generation
//
//  axi_wready is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is
//  de-asserted when reset is low.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
        axi_wready <= 1'b0;
    else
      begin
	    ////////////////////////////////////////////////////////////////////////////
        // slave is ready to accept write data when
        // there is a valid write address and write data
        // on the write address and data bus. This design
        // expects no outstanding transactions.
        if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
            axi_wready <= 1'b1;
        else
            axi_wready <= 1'b0;
      end
  end

//decoder for AXI write operations
  assign wren = ~axi_awready & ~axi_wready & S_AXI_AWVALID & S_AXI_WVALID;

  assign mips_rst_sel = (~|S_AXI_AWADDR) & wren; 
  assign mips_rst_wdata = ~S_AXI_WDATA[0];

//MMIO MIPS reset register
//hold valid MIPS reset signal when system reset
//ARM CPU cores write 1 to invalidate MIPS reset signal
//This register is write-only for ARM cores 
  always @( posedge S_AXI_ACLK )
  begin
    if (S_AXI_ARESETN == 1'b0)
        mips_rst <= 1'b1;
    else if (mips_rst_sel)
        mips_rst <= mips_rst_wdata;
	else
        mips_rst <= mips_rst;
  end 

////////////////////////////////////////////////////////////////////////////
// Implement write response logic generation
//
//  The write response and response valid signals are asserted by the slave
//  when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.
//  This marks the acceptance of address and indicates the status of
//  write transaction.

reg [7:0] bvalid_cnt;

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        //axi_bvalid  <= 0;
        
        bvalid_cnt <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && S_AXI_AWVALID && axi_wready && S_AXI_WVALID)
          begin
            // indicates a valid write response is available
            //axi_bvalid <= 1'b1;
            if(S_AXI_BREADY && axi_bvalid)
                bvalid_cnt <= bvalid_cnt;
            else
                bvalid_cnt <= bvalid_cnt + 1;
            axi_bresp  <= 2'b0; // 'OKAY' response
          end                   // work error responses in future
        else
          begin
            if (S_AXI_BREADY && axi_bvalid)
              //check if bready is asserted while bvalid is high)
              //(there is a possibility that bready is always asserted high)
              begin
                //axi_bvalid <= 1'b0;
                bvalid_cnt <= bvalid_cnt - 1;
              end
          end
      end
  end
assign axi_bvalid  = |(bvalid_cnt);

////////////////////////////////////////////////////////////////////////////
// Implement axi_arready generation
//
//  axi_arready is asserted for one S_AXI_ACLK clock cycle when
//  S_AXI_ARVALID is asserted. axi_awready is
//  de-asserted when reset (active low) is asserted.
//  The read address is also latched when S_AXI_ARVALID is
//  asserted. axi_araddr is reset to zero on reset assertion.

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
        axi_arready <= 1'b0;
    else
      begin
        // indicates that the slave has acceped the valid read address
        if (~axi_arready && S_AXI_ARVALID)
            axi_arready <= 1'b1;
        else
            axi_arready <= 1'b0;
      end
  end

////////////////////////////////////////////////////////////////////////////
// Implement memory mapped register select and read logic generation
//
//  axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both
//  S_AXI_ARVALID and axi_arready are asserted. The slave registers
//  data are available on the axi_rdata bus at this instance. The
//  assertion of axi_rvalid marks the validity of read data on the
//  bus and axi_rresp indicates the status of read transaction.axi_rvalid
//  is deasserted on reset (active low). axi_rresp and axi_rdata are
//  cleared to zero on reset (active low).

  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
      begin
        axi_rvalid <= 1'd0;
        axi_rresp  <= 2'd0;
      end
    else
      begin
        // Valid read data is available at the read data bus
        if (~axi_arready && S_AXI_ARVALID && ~axi_rvalid)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b00; // 'OKAY' response
          end
        
		// Read data is accepted by the master
        else if (axi_rvalid && S_AXI_RREADY)
            axi_rvalid <= 1'b0;
      end
  end

  //store Read_data from distributed memory to axi_rdata register
  always @( posedge S_AXI_ACLK )
  begin
    if ( S_AXI_ARESETN == 1'b0 )
        axi_rdata <= {`C_S_AXI_DATA_WIDTH{1'b0}};
    else if(~axi_arready & S_AXI_ARVALID)
        axi_rdata <= 32'h1234ABCD; 
	else
        axi_rdata <= axi_rdata;
  end

endmodule
