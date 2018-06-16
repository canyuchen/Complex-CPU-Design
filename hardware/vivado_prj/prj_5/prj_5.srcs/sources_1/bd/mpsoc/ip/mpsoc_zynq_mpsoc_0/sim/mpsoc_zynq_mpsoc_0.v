
//MODULE DECLARATION
module mpsoc_zynq_mpsoc_0(
      maxihpm0_lpd_aclk,
      maxigp2_awid,
      maxigp2_awaddr,
      maxigp2_awlen,
      maxigp2_awsize,
      maxigp2_awburst,
      maxigp2_awlock,
      maxigp2_awcache,
      maxigp2_awprot,
      maxigp2_awvalid,
      maxigp2_awuser,
      maxigp2_awready,
      maxigp2_wdata,
      maxigp2_wstrb,
      maxigp2_wlast,
      maxigp2_wvalid,
      maxigp2_wready,
      maxigp2_bid,
      maxigp2_bresp,
      maxigp2_bvalid,
      maxigp2_bready,
      maxigp2_arid,
      maxigp2_araddr,
      maxigp2_arlen,
      maxigp2_arsize,
      maxigp2_arburst,
      maxigp2_arlock,
      maxigp2_arcache,
      maxigp2_arprot,
      maxigp2_arvalid,
      maxigp2_aruser,
      maxigp2_arready,
      maxigp2_rid,
      maxigp2_rdata,
      maxigp2_rresp,
      maxigp2_rlast,
      maxigp2_rvalid,
      maxigp2_rready,
      maxigp2_awqos,
      maxigp2_arqos,
      saxihp0_fpd_aclk,
      saxigp2_aruser,
      saxigp2_awuser,
      saxigp2_awid,
      saxigp2_awaddr,
      saxigp2_awlen,
      saxigp2_awsize,
      saxigp2_awburst,
      saxigp2_awlock,
      saxigp2_awcache,
      saxigp2_awprot,
      saxigp2_awvalid,
      saxigp2_awready,
      saxigp2_wdata,
      saxigp2_wstrb,
      saxigp2_wlast,
      saxigp2_wvalid,
      saxigp2_wready,
      saxigp2_bid,
      saxigp2_bresp,
      saxigp2_bvalid,
      saxigp2_bready,
      saxigp2_arid,
      saxigp2_araddr,
      saxigp2_arlen,
      saxigp2_arsize,
      saxigp2_arburst,
      saxigp2_arlock,
      saxigp2_arcache,
      saxigp2_arprot,
      saxigp2_arvalid,
      saxigp2_arready,
      saxigp2_rid,
      saxigp2_rdata,
      saxigp2_rresp,
      saxigp2_rlast,
      saxigp2_rvalid,
      saxigp2_rready,
      saxigp2_awqos,
      saxigp2_arqos,
      emio_uart1_txd,
      emio_uart1_rxd,
      pl_resetn0,
      pl_clk0
);

//INPUT AND OUTPUT PORTS

    input maxihpm0_lpd_aclk;
    output [15:0] maxigp2_awid;
    output [39:0] maxigp2_awaddr;
    output [7:0] maxigp2_awlen;
    output [2:0] maxigp2_awsize;
    output [1:0] maxigp2_awburst;
    output maxigp2_awlock;
    output [3:0] maxigp2_awcache;
    output [2:0] maxigp2_awprot;
    output maxigp2_awvalid;
    output [15:0] maxigp2_awuser;
    input maxigp2_awready;
    output [127:0] maxigp2_wdata;
    output [15:0] maxigp2_wstrb;
    output maxigp2_wlast;
    output maxigp2_wvalid;
    input maxigp2_wready;
    input [15:0] maxigp2_bid;
    input [1:0] maxigp2_bresp;
    input maxigp2_bvalid;
    output maxigp2_bready;
    output [15:0] maxigp2_arid;
    output [39:0] maxigp2_araddr;
    output [7:0] maxigp2_arlen;
    output [2:0] maxigp2_arsize;
    output [1:0] maxigp2_arburst;
    output maxigp2_arlock;
    output [3:0] maxigp2_arcache;
    output [2:0] maxigp2_arprot;
    output maxigp2_arvalid;
    output [15:0] maxigp2_aruser;
    input maxigp2_arready;
    input [15:0] maxigp2_rid;
    input [127:0] maxigp2_rdata;
    input [1:0] maxigp2_rresp;
    input maxigp2_rlast;
    input maxigp2_rvalid;
    output maxigp2_rready;
    output [3:0] maxigp2_awqos;
    output [3:0] maxigp2_arqos;
    input saxihp0_fpd_aclk;
    input saxigp2_aruser;
    input saxigp2_awuser;
    input [5:0] saxigp2_awid;
    input [48:0] saxigp2_awaddr;
    input [7:0] saxigp2_awlen;
    input [2:0] saxigp2_awsize;
    input [1:0] saxigp2_awburst;
    input saxigp2_awlock;
    input [3:0] saxigp2_awcache;
    input [2:0] saxigp2_awprot;
    input saxigp2_awvalid;
    output saxigp2_awready;
    input [63:0] saxigp2_wdata;
    input [7:0] saxigp2_wstrb;
    input saxigp2_wlast;
    input saxigp2_wvalid;
    output saxigp2_wready;
    output [5:0] saxigp2_bid;
    output [1:0] saxigp2_bresp;
    output saxigp2_bvalid;
    input saxigp2_bready;
    input [5:0] saxigp2_arid;
    input [48:0] saxigp2_araddr;
    input [7:0] saxigp2_arlen;
    input [2:0] saxigp2_arsize;
    input [1:0] saxigp2_arburst;
    input saxigp2_arlock;
    input [3:0] saxigp2_arcache;
    input [2:0] saxigp2_arprot;
    input saxigp2_arvalid;
    output saxigp2_arready;
    output [5:0] saxigp2_rid;
    output [63:0] saxigp2_rdata;
    output [1:0] saxigp2_rresp;
    output saxigp2_rlast;
    output saxigp2_rvalid;
    input saxigp2_rready;
    input [3:0] saxigp2_awqos;
    input [3:0] saxigp2_arqos;
    output emio_uart1_txd;
    input emio_uart1_rxd;
    output pl_resetn0;
    output pl_clk0;

//REG DECLARATIONS

    reg  [15:0] maxigp2_awid;
    reg  [39:0] maxigp2_awaddr;
    reg  [7:0] maxigp2_awlen;
    reg  [2:0] maxigp2_awsize;
    reg  [1:0] maxigp2_awburst;
    reg  maxigp2_awlock;
    reg  [3:0] maxigp2_awcache;
    reg  [2:0] maxigp2_awprot;
    reg  maxigp2_awvalid;
    reg  [15:0] maxigp2_awuser;
    reg  [127:0] maxigp2_wdata;
    reg  [15:0] maxigp2_wstrb;
    reg  maxigp2_wlast;
    reg  maxigp2_wvalid;
    reg  maxigp2_bready;
    reg  [15:0] maxigp2_arid;
    reg  [39:0] maxigp2_araddr;
    reg  [7:0] maxigp2_arlen;
    reg  [2:0] maxigp2_arsize;
    reg  [1:0] maxigp2_arburst;
    reg  maxigp2_arlock;
    reg  [3:0] maxigp2_arcache;
    reg  [2:0] maxigp2_arprot;
    reg  maxigp2_arvalid;
    reg  [15:0] maxigp2_aruser;
    reg  maxigp2_rready;
    reg  [3:0] maxigp2_awqos;
    reg  [3:0] maxigp2_arqos;
    reg  saxigp2_awready;
    reg  saxigp2_wready;
    reg  [5:0] saxigp2_bid;
    reg  [1:0] saxigp2_bresp;
    reg  saxigp2_bvalid;
    reg  saxigp2_arready;
    reg  [5:0] saxigp2_rid;
    reg  [63:0] saxigp2_rdata;
    reg  [1:0] saxigp2_rresp;
    reg  saxigp2_rlast;
    reg  saxigp2_rvalid;
    reg  emio_uart1_txd;
    reg  pl_resetn0;
    reg  pl_clk0;

initial
 begin


   $display("WARNING: Zynq UltraScale IP doesn't support simulation");
     end
endmodule
