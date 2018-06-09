/* =========================================
* Top module of FPGA evaluation platform for
* MIPS CPU cores
*
* Author: Yisong Chang (changyisong@ict.ac.cn)
* Date: 19/03/2017
* Version: v0.0.1
*===========================================
*/

`timescale 10 ns / 1 ns

module mips_cpu_fpga (
`ifdef MIPS_CPU_FULL_SIMU
	input			mips_cpu_clk,
	input			mips_cpu_reset,

	output			mips_cpu_pc_sig,
	output [15:0]	mips_perf_cnt_flag
`endif
);

`ifndef MIPS_CPU_FULL_SIMU
  wire				mips_cpu_clk;
  wire				mips_cpu_reset;
  wire				mips_axi_if_resetn;
`endif

  wire [31:0]		mips_cpu_axi_mem_araddr;
  wire				mips_cpu_axi_mem_arready;
  wire				mips_cpu_axi_mem_arvalid;
  wire [31:0]		mips_cpu_axi_mem_awaddr;
  wire				mips_cpu_axi_mem_awready;
  wire				mips_cpu_axi_mem_awvalid;
  wire				mips_cpu_axi_mem_bready;
  wire [1:0]		mips_cpu_axi_mem_bresp;
  wire				mips_cpu_axi_mem_bvalid;
  wire [31:0]		mips_cpu_axi_mem_rdata;
  wire				mips_cpu_axi_mem_rready;
  wire [1:0]		mips_cpu_axi_mem_rresp;
  wire				mips_cpu_axi_mem_rvalid;
  wire [31:0]		mips_cpu_axi_mem_wdata;
  wire				mips_cpu_axi_mem_wready;
  wire [3:0]		mips_cpu_axi_mem_wstrb;
  wire				mips_cpu_axi_mem_wvalid;

`ifndef MIPS_CPU_FULL_SIMU
  wire [39:0]		mips_cpu_axi_mmio_araddr;
  wire				mips_cpu_axi_mmio_arready;
  wire				mips_cpu_axi_mmio_arvalid;
  wire [39:0]		mips_cpu_axi_mmio_awaddr;
  wire				mips_cpu_axi_mmio_awready;
  wire				mips_cpu_axi_mmio_awvalid;
  wire				mips_cpu_axi_mmio_bready;
  wire [1:0]		mips_cpu_axi_mmio_bresp;
  wire				mips_cpu_axi_mmio_bvalid;
  wire [31:0]		mips_cpu_axi_mmio_rdata;
  wire				mips_cpu_axi_mmio_rready;
  wire [1:0]		mips_cpu_axi_mmio_rresp;
  wire				mips_cpu_axi_mmio_rvalid;
  wire [31:0]		mips_cpu_axi_mmio_wdata;
  wire				mips_cpu_axi_mmio_wready;
  wire [3:0]		mips_cpu_axi_mmio_wstrb;
  wire				mips_cpu_axi_mmio_wvalid;
`else
  wire [31:0]		bram_axi_if_araddr;
  wire				bram_axi_if_arready;
  wire				bram_axi_if_arvalid;
  wire [31:0]		bram_axi_if_awaddr;
  wire				bram_axi_if_awready;
  wire				bram_axi_if_awvalid;
  wire				bram_axi_if_bready;
  wire [1:0]		bram_axi_if_bresp;
  wire				bram_axi_if_bvalid;
  wire [31:0]		bram_axi_if_rdata;
  wire				bram_axi_if_rready;
  wire [1:0]		bram_axi_if_rresp;
  wire				bram_axi_if_rvalid;
  wire				bram_axi_if_rlast;
  wire [31:0]		bram_axi_if_wdata;
  wire				bram_axi_if_wready;
  wire [3:0]		bram_axi_if_wstrb;
  wire				bram_axi_if_wvalid;
  wire				bram_axi_if_wlast;
`endif

  wire [32 * 16 - 1 : 0]	mips_perf_cnt;

//Instantiation of MIPS CPU core
mips_cpu_top		u_mips_cpu_top (
	.mips_cpu_clk				(mips_cpu_clk),
	.mips_cpu_reset				(mips_cpu_reset),
`ifdef MIPS_CPU_FULL_SIMU
	.mips_cpu_pc_sig			(mips_cpu_pc_sig),
`endif

	.mips_perf_cnt_0			(mips_perf_cnt[31:0]),
	.mips_perf_cnt_1			(mips_perf_cnt[63:32]),
	.mips_perf_cnt_2			(mips_perf_cnt[95:64]),
	.mips_perf_cnt_3			(mips_perf_cnt[127:96]),
	.mips_perf_cnt_4			(mips_perf_cnt[159:128]),
	.mips_perf_cnt_5			(mips_perf_cnt[191:160]),
	.mips_perf_cnt_6			(mips_perf_cnt[223:192]),
	.mips_perf_cnt_7			(mips_perf_cnt[255:224]),
	.mips_perf_cnt_8			(mips_perf_cnt[287:256]),
	.mips_perf_cnt_9			(mips_perf_cnt[319:288]),
	.mips_perf_cnt_10			(mips_perf_cnt[351:320]),
	.mips_perf_cnt_11			(mips_perf_cnt[383:352]),
	.mips_perf_cnt_12			(mips_perf_cnt[415:384]),
	.mips_perf_cnt_13			(mips_perf_cnt[447:416]),
	.mips_perf_cnt_14			(mips_perf_cnt[479:448]),
	.mips_perf_cnt_15			(mips_perf_cnt[511:480]),

	.mips_cpu_axi_if_araddr		(mips_cpu_axi_mem_araddr),
	.mips_cpu_axi_if_arready	(mips_cpu_axi_mem_arready),
	.mips_cpu_axi_if_arvalid	(mips_cpu_axi_mem_arvalid),
	.mips_cpu_axi_if_awaddr		(mips_cpu_axi_mem_awaddr),
	.mips_cpu_axi_if_awready	(mips_cpu_axi_mem_awready),
	.mips_cpu_axi_if_awvalid	(mips_cpu_axi_mem_awvalid),
	.mips_cpu_axi_if_bready		(mips_cpu_axi_mem_bready),
	.mips_cpu_axi_if_bresp		(mips_cpu_axi_mem_bresp),
	.mips_cpu_axi_if_bvalid		(mips_cpu_axi_mem_bvalid),
	.mips_cpu_axi_if_rdata		(mips_cpu_axi_mem_rdata),
	.mips_cpu_axi_if_rready		(mips_cpu_axi_mem_rready),
	.mips_cpu_axi_if_rresp		(mips_cpu_axi_mem_rresp),
	.mips_cpu_axi_if_rvalid		(mips_cpu_axi_mem_rvalid),
	.mips_cpu_axi_if_wdata		(mips_cpu_axi_mem_wdata),
	.mips_cpu_axi_if_wready		(mips_cpu_axi_mem_wready),
	.mips_cpu_axi_if_wstrb		(mips_cpu_axi_mem_wstrb),
	.mips_cpu_axi_if_wvalid		(mips_cpu_axi_mem_wvalid)
);

`ifndef MIPS_CPU_FULL_SIMU 
//Instantiation of MPSoC wrapper
mpsoc_wrapper		u_zynq_soc_wrapper (
	.mips_cpu_axi_mmio_araddr	(mips_cpu_axi_mmio_araddr),
	.mips_cpu_axi_mmio_arprot	(),
	.mips_cpu_axi_mmio_arready	(mips_cpu_axi_mmio_arready),
	.mips_cpu_axi_mmio_arvalid	(mips_cpu_axi_mmio_arvalid),
	.mips_cpu_axi_mmio_awaddr	(mips_cpu_axi_mmio_awaddr),
	.mips_cpu_axi_mmio_awprot	(),
	.mips_cpu_axi_mmio_awready	(mips_cpu_axi_mmio_awready),
	.mips_cpu_axi_mmio_awvalid	(mips_cpu_axi_mmio_awvalid),
	.mips_cpu_axi_mmio_bready	(mips_cpu_axi_mmio_bready),
	.mips_cpu_axi_mmio_bresp	(mips_cpu_axi_mmio_bresp),
	.mips_cpu_axi_mmio_bvalid	(mips_cpu_axi_mmio_bvalid),
	.mips_cpu_axi_mmio_rdata	(mips_cpu_axi_mmio_rdata),
	.mips_cpu_axi_mmio_rready	(mips_cpu_axi_mmio_rready),
	.mips_cpu_axi_mmio_rresp	(mips_cpu_axi_mmio_rresp),
	.mips_cpu_axi_mmio_rvalid	(mips_cpu_axi_mmio_rvalid),
	.mips_cpu_axi_mmio_wdata	(mips_cpu_axi_mmio_wdata),
	.mips_cpu_axi_mmio_wready	(mips_cpu_axi_mmio_wready),
	.mips_cpu_axi_mmio_wstrb	(mips_cpu_axi_mmio_wstrb),
	.mips_cpu_axi_mmio_wvalid	(mips_cpu_axi_mmio_wvalid),
	  
	.mips_cpu_clk				(mips_cpu_clk),
	.mips_axi_if_resetn			(mips_axi_if_resetn),

	.mips_perf_cnt_0			(mips_perf_cnt[31:0]),
	.mips_perf_cnt_1			(mips_perf_cnt[63:32]),
	.mips_perf_cnt_2			(mips_perf_cnt[95:64]),
	.mips_perf_cnt_3			(mips_perf_cnt[127:96]),
	.mips_perf_cnt_4			(mips_perf_cnt[159:128]),
	.mips_perf_cnt_5			(mips_perf_cnt[191:160]),
	.mips_perf_cnt_6			(mips_perf_cnt[223:192]),
	.mips_perf_cnt_7			(mips_perf_cnt[255:224]),
	.mips_perf_cnt_8			(mips_perf_cnt[287:256]),
	.mips_perf_cnt_9			(mips_perf_cnt[319:288]),
	.mips_perf_cnt_10			(mips_perf_cnt[351:320]),
	.mips_perf_cnt_11			(mips_perf_cnt[383:352]),
	.mips_perf_cnt_12			(mips_perf_cnt[415:384]),
	.mips_perf_cnt_13			(mips_perf_cnt[447:416]),
	.mips_perf_cnt_14			(mips_perf_cnt[479:448]),
	.mips_perf_cnt_15			(mips_perf_cnt[511:480]),

	.mips_cpu_axi_mem_araddr	(mips_cpu_axi_mem_araddr + 32'h40000000),
	.mips_cpu_axi_mem_arprot	('d0),
	.mips_cpu_axi_mem_arready	(mips_cpu_axi_mem_arready),
	.mips_cpu_axi_mem_arvalid	(mips_cpu_axi_mem_arvalid),
	.mips_cpu_axi_mem_awaddr	(mips_cpu_axi_mem_awaddr + 32'h40000000),
	.mips_cpu_axi_mem_awprot	('d0),
	.mips_cpu_axi_mem_awready	(mips_cpu_axi_mem_awready),
	.mips_cpu_axi_mem_awvalid	(mips_cpu_axi_mem_awvalid),
	.mips_cpu_axi_mem_bready	(mips_cpu_axi_mem_bready),
	.mips_cpu_axi_mem_bresp		(mips_cpu_axi_mem_bresp),
	.mips_cpu_axi_mem_bvalid	(mips_cpu_axi_mem_bvalid),
	.mips_cpu_axi_mem_rdata		(mips_cpu_axi_mem_rdata),
	.mips_cpu_axi_mem_rready	(mips_cpu_axi_mem_rready),
	.mips_cpu_axi_mem_rresp		(mips_cpu_axi_mem_rresp),
	.mips_cpu_axi_mem_rvalid	(mips_cpu_axi_mem_rvalid),
	.mips_cpu_axi_mem_wdata		(mips_cpu_axi_mem_wdata),
	.mips_cpu_axi_mem_wready	(mips_cpu_axi_mem_wready),
	.mips_cpu_axi_mem_wstrb		(mips_cpu_axi_mem_wstrb),
	.mips_cpu_axi_mem_wvalid	(mips_cpu_axi_mem_wvalid)
);

  //Instantiation of AXI-Lite interface
  axi_lite_if 	u_axi_lite_slave (
	  .S_AXI_ACLK		(mips_cpu_clk),
	  .S_AXI_ARESETN	(mips_axi_if_resetn),
	  
	  .S_AXI_ARADDR		(mips_cpu_axi_mmio_araddr),
	  .S_AXI_ARREADY	(mips_cpu_axi_mmio_arready),
	  .S_AXI_ARVALID	(mips_cpu_axi_mmio_arvalid),
	  
	  .S_AXI_AWADDR		(mips_cpu_axi_mmio_awaddr),
	  .S_AXI_AWREADY	(mips_cpu_axi_mmio_awready),
	  .S_AXI_AWVALID	(mips_cpu_axi_mmio_awvalid),
	  
	  .S_AXI_BREADY		(mips_cpu_axi_mmio_bready),
	  .S_AXI_BRESP		(mips_cpu_axi_mmio_bresp),
	  .S_AXI_BVALID		(mips_cpu_axi_mmio_bvalid),
	  
	  .S_AXI_RDATA		(mips_cpu_axi_mmio_rdata),
	  .S_AXI_RREADY		(mips_cpu_axi_mmio_rready),
	  .S_AXI_RRESP		(mips_cpu_axi_mmio_rresp),
	  .S_AXI_RVALID		(mips_cpu_axi_mmio_rvalid),
	  
	  .S_AXI_WDATA		(mips_cpu_axi_mmio_wdata),
	  .S_AXI_WREADY		(mips_cpu_axi_mmio_wready),
	  .S_AXI_WSTRB		(mips_cpu_axi_mmio_wstrb),
	  .S_AXI_WVALID		(mips_cpu_axi_mmio_wvalid),
	  
	  .mips_rst			(mips_cpu_reset)
  );

`else
wire			bram_rst_a;
wire			bram_clk_a;
wire			bram_en_a;
wire [3:0]		bram_we_a;
wire [15:0]		bram_addr_a;
wire [31:0]		bram_wrdata_a;
wire [31:0]		bram_rddata_a;

wire			uart_tx;
wire			uart_tx_data_valid;
wire [7:0]		uart_tx_data;

sim_wrapper		u_sim_wrapper (
	.bram_axi_if_araddr		(bram_axi_if_araddr),
    .bram_axi_if_arready	(bram_axi_if_arready),
    .bram_axi_if_arvalid	(bram_axi_if_arvalid),
    .bram_axi_if_awaddr		(bram_axi_if_awaddr),
    .bram_axi_if_awready	(bram_axi_if_awready),
    .bram_axi_if_awvalid	(bram_axi_if_awvalid),
    .bram_axi_if_bready		(bram_axi_if_bready),
    .bram_axi_if_bresp		(bram_axi_if_bresp),
    .bram_axi_if_bvalid		(bram_axi_if_bvalid),
    .bram_axi_if_rdata		(bram_axi_if_rdata),
    .bram_axi_if_rlast		(bram_axi_if_rlast),
    .bram_axi_if_rready		(bram_axi_if_rready),
    .bram_axi_if_rresp		(bram_axi_if_rresp),
    .bram_axi_if_rvalid		(bram_axi_if_rvalid),
    .bram_axi_if_wdata		(bram_axi_if_wdata),
    .bram_axi_if_wlast		(bram_axi_if_wlast),
    .bram_axi_if_wready		(bram_axi_if_wready),
    .bram_axi_if_wstrb		(bram_axi_if_wstrb),
    .bram_axi_if_wvalid		(bram_axi_if_wvalid),
	  
	.mips_cpu_clk				(mips_cpu_clk),
	.mips_cpu_reset				(mips_cpu_reset),

	.mips_perf_cnt_0			(mips_perf_cnt[31:0]),
	.mips_perf_cnt_1			(mips_perf_cnt[63:32]),
	.mips_perf_cnt_2			(mips_perf_cnt[95:64]),
	.mips_perf_cnt_3			(mips_perf_cnt[127:96]),
	.mips_perf_cnt_4			(mips_perf_cnt[159:128]),
	.mips_perf_cnt_5			(mips_perf_cnt[191:160]),
	.mips_perf_cnt_6			(mips_perf_cnt[223:192]),
	.mips_perf_cnt_7			(mips_perf_cnt[255:224]),
	.mips_perf_cnt_8			(mips_perf_cnt[287:256]),
	.mips_perf_cnt_9			(mips_perf_cnt[319:288]),
	.mips_perf_cnt_10			(mips_perf_cnt[351:320]),
	.mips_perf_cnt_11			(mips_perf_cnt[383:352]),
	.mips_perf_cnt_12			(mips_perf_cnt[415:384]),
	.mips_perf_cnt_13			(mips_perf_cnt[447:416]),
	.mips_perf_cnt_14			(mips_perf_cnt[479:448]),
	.mips_perf_cnt_15			(mips_perf_cnt[511:480]),

	.mips_cpu_axi_mem_araddr	(mips_cpu_axi_mem_araddr[30] ? mips_cpu_axi_mem_araddr : {2'b01, mips_cpu_axi_mem_araddr[29:0]}),
	.mips_cpu_axi_mem_arprot	('d0),
	.mips_cpu_axi_mem_arready	(mips_cpu_axi_mem_arready),
	.mips_cpu_axi_mem_arvalid	(mips_cpu_axi_mem_arvalid),
	.mips_cpu_axi_mem_awaddr	(mips_cpu_axi_mem_awaddr[30] ? mips_cpu_axi_mem_awaddr : {2'b01, mips_cpu_axi_mem_awaddr[29:0]}),
	.mips_cpu_axi_mem_awprot	('d0),
	.mips_cpu_axi_mem_awready	(mips_cpu_axi_mem_awready),
	.mips_cpu_axi_mem_awvalid	(mips_cpu_axi_mem_awvalid),
	.mips_cpu_axi_mem_bready	(mips_cpu_axi_mem_bready),
	.mips_cpu_axi_mem_bresp		(mips_cpu_axi_mem_bresp),
	.mips_cpu_axi_mem_bvalid	(mips_cpu_axi_mem_bvalid),
	.mips_cpu_axi_mem_rdata		(mips_cpu_axi_mem_rdata),
	.mips_cpu_axi_mem_rready	(mips_cpu_axi_mem_rready),
	.mips_cpu_axi_mem_rresp		(mips_cpu_axi_mem_rresp),
	.mips_cpu_axi_mem_rvalid	(mips_cpu_axi_mem_rvalid),
	.mips_cpu_axi_mem_wdata		(mips_cpu_axi_mem_wdata),
	.mips_cpu_axi_mem_wready	(mips_cpu_axi_mem_wready),
	.mips_cpu_axi_mem_wstrb		(mips_cpu_axi_mem_wstrb),
	.mips_cpu_axi_mem_wvalid	(mips_cpu_axi_mem_wvalid),

	.uart_tx					(uart_tx)
);

axi_bram_if		u_axi_bram_if (
	.s_axi_aclk		(mips_cpu_clk),
	.s_axi_aresetn	(~mips_cpu_reset),

	.s_axi_araddr	(bram_axi_if_araddr[15:0]),
	.s_axi_arlen	('d0),
	.s_axi_arsize	('d2),
	.s_axi_arprot	('d0),
	.s_axi_arburst	('d1),
	.s_axi_arlock	('d0),
	.s_axi_arcache	('d0),
	.s_axi_arready	(bram_axi_if_arready),
	.s_axi_arvalid	(bram_axi_if_arvalid),

	.s_axi_awaddr	(bram_axi_if_awaddr[15:0]),
	.s_axi_awlen	('d0),
	.s_axi_awsize	('d2),
	.s_axi_awprot	('d0),
	.s_axi_awburst	('d1),
	.s_axi_awlock	('d0),
	.s_axi_awcache	('d0),
	.s_axi_awready	(bram_axi_if_awready),
	.s_axi_awvalid	(bram_axi_if_awvalid),

	.s_axi_bready	(bram_axi_if_bready),
	.s_axi_bresp	(bram_axi_if_bresp),
	.s_axi_bvalid	(bram_axi_if_bvalid),

	.s_axi_rdata	(bram_axi_if_rdata),
	.s_axi_rresp	(bram_axi_if_rresp),
	.s_axi_rvalid	(bram_axi_if_rvalid),
	.s_axi_rready	(bram_axi_if_rready),
	.s_axi_rlast	(bram_axi_if_rlast),

	.s_axi_wdata	(bram_axi_if_wdata),
	.s_axi_wready	(bram_axi_if_wready),
	.s_axi_wstrb	(bram_axi_if_wstrb),
	.s_axi_wvalid	(bram_axi_if_wvalid),
	.s_axi_wlast	(bram_axi_if_wlast),

	.bram_rst_a		(bram_rst_a				),
	.bram_clk_a		(bram_clk_a				),
	.bram_en_a		(bram_en_a				),
	.bram_we_a		(bram_we_a				),
	.bram_addr_a	(bram_addr_a			),
	.bram_wrdata_a	(bram_wrdata_a			),
	.bram_rddata_a	(bram_rddata_a			)
);

mips_bram		u_mips_bram (
	.clka			(bram_clk_a),
	.rsta			(bram_rst_a),
	.ena			(bram_en_a),
	.wea			(bram_we_a),
	.addra			({16'd0, bram_addr_a}),
	.dina			(bram_wrdata_a),
	.douta			(bram_rddata_a)
);

`ifdef UART_SIM
uart_recv_sim	u_uart_sim(
	.clock			(mips_cpu_clk),
	.reset			(mips_cpu_reset),
	
	.io_en			(1'b1),
	.io_in			(uart_tx),
	.io_out_valid	(uart_tx_data_valid),
	.io_out_bits	(uart_tx_data),
	.io_div			(16'd868)			//100MHz / 115200
);

always @ (posedge mips_cpu_clk)
begin
	if (uart_tx_data_valid)
		$write("%c", uart_tx_data);
end
`endif

genvar i;
generate
begin
	for (i = 0; i < 16; i = i + 1)
	begin: MIPS_PERF_FLAG
		assign mips_perf_cnt_flag[i] = |mips_perf_cnt[(i + 1) * 32 - 1 : i * 32];
	end
end
endgenerate

`endif

endmodule

