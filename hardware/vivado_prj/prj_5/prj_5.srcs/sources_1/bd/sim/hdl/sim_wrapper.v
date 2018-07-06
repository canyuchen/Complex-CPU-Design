//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Fri Jul  6 18:24:27 2018
//Host        : cod-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target sim_wrapper.bd
//Design      : sim_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sim_wrapper
   (bram_axi_if_araddr,
    bram_axi_if_arburst,
    bram_axi_if_arcache,
    bram_axi_if_arlen,
    bram_axi_if_arlock,
    bram_axi_if_arprot,
    bram_axi_if_arqos,
    bram_axi_if_arready,
    bram_axi_if_arregion,
    bram_axi_if_arsize,
    bram_axi_if_arvalid,
    bram_axi_if_awaddr,
    bram_axi_if_awburst,
    bram_axi_if_awcache,
    bram_axi_if_awlen,
    bram_axi_if_awlock,
    bram_axi_if_awprot,
    bram_axi_if_awqos,
    bram_axi_if_awready,
    bram_axi_if_awregion,
    bram_axi_if_awsize,
    bram_axi_if_awvalid,
    bram_axi_if_bready,
    bram_axi_if_bresp,
    bram_axi_if_bvalid,
    bram_axi_if_rdata,
    bram_axi_if_rlast,
    bram_axi_if_rready,
    bram_axi_if_rresp,
    bram_axi_if_rvalid,
    bram_axi_if_wdata,
    bram_axi_if_wlast,
    bram_axi_if_wready,
    bram_axi_if_wstrb,
    bram_axi_if_wvalid,
    mips_cpu_axi_mem_araddr,
    mips_cpu_axi_mem_arprot,
    mips_cpu_axi_mem_arready,
    mips_cpu_axi_mem_arvalid,
    mips_cpu_axi_mem_awaddr,
    mips_cpu_axi_mem_awprot,
    mips_cpu_axi_mem_awready,
    mips_cpu_axi_mem_awvalid,
    mips_cpu_axi_mem_bready,
    mips_cpu_axi_mem_bresp,
    mips_cpu_axi_mem_bvalid,
    mips_cpu_axi_mem_rdata,
    mips_cpu_axi_mem_rready,
    mips_cpu_axi_mem_rresp,
    mips_cpu_axi_mem_rvalid,
    mips_cpu_axi_mem_wdata,
    mips_cpu_axi_mem_wready,
    mips_cpu_axi_mem_wstrb,
    mips_cpu_axi_mem_wvalid,
    mips_cpu_clk,
    mips_cpu_reset,
    mips_perf_cnt_0,
    mips_perf_cnt_1,
    mips_perf_cnt_10,
    mips_perf_cnt_11,
    mips_perf_cnt_12,
    mips_perf_cnt_13,
    mips_perf_cnt_14,
    mips_perf_cnt_15,
    mips_perf_cnt_2,
    mips_perf_cnt_3,
    mips_perf_cnt_4,
    mips_perf_cnt_5,
    mips_perf_cnt_6,
    mips_perf_cnt_7,
    mips_perf_cnt_8,
    mips_perf_cnt_9,
    uart_tx);
  output [31:0]bram_axi_if_araddr;
  output [1:0]bram_axi_if_arburst;
  output [3:0]bram_axi_if_arcache;
  output [7:0]bram_axi_if_arlen;
  output [0:0]bram_axi_if_arlock;
  output [2:0]bram_axi_if_arprot;
  output [3:0]bram_axi_if_arqos;
  input bram_axi_if_arready;
  output [3:0]bram_axi_if_arregion;
  output [2:0]bram_axi_if_arsize;
  output bram_axi_if_arvalid;
  output [31:0]bram_axi_if_awaddr;
  output [1:0]bram_axi_if_awburst;
  output [3:0]bram_axi_if_awcache;
  output [7:0]bram_axi_if_awlen;
  output [0:0]bram_axi_if_awlock;
  output [2:0]bram_axi_if_awprot;
  output [3:0]bram_axi_if_awqos;
  input bram_axi_if_awready;
  output [3:0]bram_axi_if_awregion;
  output [2:0]bram_axi_if_awsize;
  output bram_axi_if_awvalid;
  output bram_axi_if_bready;
  input [1:0]bram_axi_if_bresp;
  input bram_axi_if_bvalid;
  input [31:0]bram_axi_if_rdata;
  input bram_axi_if_rlast;
  output bram_axi_if_rready;
  input [1:0]bram_axi_if_rresp;
  input bram_axi_if_rvalid;
  output [31:0]bram_axi_if_wdata;
  output bram_axi_if_wlast;
  input bram_axi_if_wready;
  output [3:0]bram_axi_if_wstrb;
  output bram_axi_if_wvalid;
  input [31:0]mips_cpu_axi_mem_araddr;
  input [2:0]mips_cpu_axi_mem_arprot;
  output [0:0]mips_cpu_axi_mem_arready;
  input [0:0]mips_cpu_axi_mem_arvalid;
  input [31:0]mips_cpu_axi_mem_awaddr;
  input [2:0]mips_cpu_axi_mem_awprot;
  output [0:0]mips_cpu_axi_mem_awready;
  input [0:0]mips_cpu_axi_mem_awvalid;
  input [0:0]mips_cpu_axi_mem_bready;
  output [1:0]mips_cpu_axi_mem_bresp;
  output [0:0]mips_cpu_axi_mem_bvalid;
  output [31:0]mips_cpu_axi_mem_rdata;
  input [0:0]mips_cpu_axi_mem_rready;
  output [1:0]mips_cpu_axi_mem_rresp;
  output [0:0]mips_cpu_axi_mem_rvalid;
  input [31:0]mips_cpu_axi_mem_wdata;
  output [0:0]mips_cpu_axi_mem_wready;
  input [3:0]mips_cpu_axi_mem_wstrb;
  input [0:0]mips_cpu_axi_mem_wvalid;
  input mips_cpu_clk;
  input mips_cpu_reset;
  input [31:0]mips_perf_cnt_0;
  input [31:0]mips_perf_cnt_1;
  input [31:0]mips_perf_cnt_10;
  input [31:0]mips_perf_cnt_11;
  input [31:0]mips_perf_cnt_12;
  input [31:0]mips_perf_cnt_13;
  input [31:0]mips_perf_cnt_14;
  input [31:0]mips_perf_cnt_15;
  input [31:0]mips_perf_cnt_2;
  input [31:0]mips_perf_cnt_3;
  input [31:0]mips_perf_cnt_4;
  input [31:0]mips_perf_cnt_5;
  input [31:0]mips_perf_cnt_6;
  input [31:0]mips_perf_cnt_7;
  input [31:0]mips_perf_cnt_8;
  input [31:0]mips_perf_cnt_9;
  output uart_tx;

  wire [31:0]bram_axi_if_araddr;
  wire [1:0]bram_axi_if_arburst;
  wire [3:0]bram_axi_if_arcache;
  wire [7:0]bram_axi_if_arlen;
  wire [0:0]bram_axi_if_arlock;
  wire [2:0]bram_axi_if_arprot;
  wire [3:0]bram_axi_if_arqos;
  wire bram_axi_if_arready;
  wire [3:0]bram_axi_if_arregion;
  wire [2:0]bram_axi_if_arsize;
  wire bram_axi_if_arvalid;
  wire [31:0]bram_axi_if_awaddr;
  wire [1:0]bram_axi_if_awburst;
  wire [3:0]bram_axi_if_awcache;
  wire [7:0]bram_axi_if_awlen;
  wire [0:0]bram_axi_if_awlock;
  wire [2:0]bram_axi_if_awprot;
  wire [3:0]bram_axi_if_awqos;
  wire bram_axi_if_awready;
  wire [3:0]bram_axi_if_awregion;
  wire [2:0]bram_axi_if_awsize;
  wire bram_axi_if_awvalid;
  wire bram_axi_if_bready;
  wire [1:0]bram_axi_if_bresp;
  wire bram_axi_if_bvalid;
  wire [31:0]bram_axi_if_rdata;
  wire bram_axi_if_rlast;
  wire bram_axi_if_rready;
  wire [1:0]bram_axi_if_rresp;
  wire bram_axi_if_rvalid;
  wire [31:0]bram_axi_if_wdata;
  wire bram_axi_if_wlast;
  wire bram_axi_if_wready;
  wire [3:0]bram_axi_if_wstrb;
  wire bram_axi_if_wvalid;
  wire [31:0]mips_cpu_axi_mem_araddr;
  wire [2:0]mips_cpu_axi_mem_arprot;
  wire [0:0]mips_cpu_axi_mem_arready;
  wire [0:0]mips_cpu_axi_mem_arvalid;
  wire [31:0]mips_cpu_axi_mem_awaddr;
  wire [2:0]mips_cpu_axi_mem_awprot;
  wire [0:0]mips_cpu_axi_mem_awready;
  wire [0:0]mips_cpu_axi_mem_awvalid;
  wire [0:0]mips_cpu_axi_mem_bready;
  wire [1:0]mips_cpu_axi_mem_bresp;
  wire [0:0]mips_cpu_axi_mem_bvalid;
  wire [31:0]mips_cpu_axi_mem_rdata;
  wire [0:0]mips_cpu_axi_mem_rready;
  wire [1:0]mips_cpu_axi_mem_rresp;
  wire [0:0]mips_cpu_axi_mem_rvalid;
  wire [31:0]mips_cpu_axi_mem_wdata;
  wire [0:0]mips_cpu_axi_mem_wready;
  wire [3:0]mips_cpu_axi_mem_wstrb;
  wire [0:0]mips_cpu_axi_mem_wvalid;
  wire mips_cpu_clk;
  wire mips_cpu_reset;
  wire [31:0]mips_perf_cnt_0;
  wire [31:0]mips_perf_cnt_1;
  wire [31:0]mips_perf_cnt_10;
  wire [31:0]mips_perf_cnt_11;
  wire [31:0]mips_perf_cnt_12;
  wire [31:0]mips_perf_cnt_13;
  wire [31:0]mips_perf_cnt_14;
  wire [31:0]mips_perf_cnt_15;
  wire [31:0]mips_perf_cnt_2;
  wire [31:0]mips_perf_cnt_3;
  wire [31:0]mips_perf_cnt_4;
  wire [31:0]mips_perf_cnt_5;
  wire [31:0]mips_perf_cnt_6;
  wire [31:0]mips_perf_cnt_7;
  wire [31:0]mips_perf_cnt_8;
  wire [31:0]mips_perf_cnt_9;
  wire uart_tx;

  sim sim_i
       (.bram_axi_if_araddr(bram_axi_if_araddr),
        .bram_axi_if_arburst(bram_axi_if_arburst),
        .bram_axi_if_arcache(bram_axi_if_arcache),
        .bram_axi_if_arlen(bram_axi_if_arlen),
        .bram_axi_if_arlock(bram_axi_if_arlock),
        .bram_axi_if_arprot(bram_axi_if_arprot),
        .bram_axi_if_arqos(bram_axi_if_arqos),
        .bram_axi_if_arready(bram_axi_if_arready),
        .bram_axi_if_arregion(bram_axi_if_arregion),
        .bram_axi_if_arsize(bram_axi_if_arsize),
        .bram_axi_if_arvalid(bram_axi_if_arvalid),
        .bram_axi_if_awaddr(bram_axi_if_awaddr),
        .bram_axi_if_awburst(bram_axi_if_awburst),
        .bram_axi_if_awcache(bram_axi_if_awcache),
        .bram_axi_if_awlen(bram_axi_if_awlen),
        .bram_axi_if_awlock(bram_axi_if_awlock),
        .bram_axi_if_awprot(bram_axi_if_awprot),
        .bram_axi_if_awqos(bram_axi_if_awqos),
        .bram_axi_if_awready(bram_axi_if_awready),
        .bram_axi_if_awregion(bram_axi_if_awregion),
        .bram_axi_if_awsize(bram_axi_if_awsize),
        .bram_axi_if_awvalid(bram_axi_if_awvalid),
        .bram_axi_if_bready(bram_axi_if_bready),
        .bram_axi_if_bresp(bram_axi_if_bresp),
        .bram_axi_if_bvalid(bram_axi_if_bvalid),
        .bram_axi_if_rdata(bram_axi_if_rdata),
        .bram_axi_if_rlast(bram_axi_if_rlast),
        .bram_axi_if_rready(bram_axi_if_rready),
        .bram_axi_if_rresp(bram_axi_if_rresp),
        .bram_axi_if_rvalid(bram_axi_if_rvalid),
        .bram_axi_if_wdata(bram_axi_if_wdata),
        .bram_axi_if_wlast(bram_axi_if_wlast),
        .bram_axi_if_wready(bram_axi_if_wready),
        .bram_axi_if_wstrb(bram_axi_if_wstrb),
        .bram_axi_if_wvalid(bram_axi_if_wvalid),
        .mips_cpu_axi_mem_araddr(mips_cpu_axi_mem_araddr),
        .mips_cpu_axi_mem_arprot(mips_cpu_axi_mem_arprot),
        .mips_cpu_axi_mem_arready(mips_cpu_axi_mem_arready),
        .mips_cpu_axi_mem_arvalid(mips_cpu_axi_mem_arvalid),
        .mips_cpu_axi_mem_awaddr(mips_cpu_axi_mem_awaddr),
        .mips_cpu_axi_mem_awprot(mips_cpu_axi_mem_awprot),
        .mips_cpu_axi_mem_awready(mips_cpu_axi_mem_awready),
        .mips_cpu_axi_mem_awvalid(mips_cpu_axi_mem_awvalid),
        .mips_cpu_axi_mem_bready(mips_cpu_axi_mem_bready),
        .mips_cpu_axi_mem_bresp(mips_cpu_axi_mem_bresp),
        .mips_cpu_axi_mem_bvalid(mips_cpu_axi_mem_bvalid),
        .mips_cpu_axi_mem_rdata(mips_cpu_axi_mem_rdata),
        .mips_cpu_axi_mem_rready(mips_cpu_axi_mem_rready),
        .mips_cpu_axi_mem_rresp(mips_cpu_axi_mem_rresp),
        .mips_cpu_axi_mem_rvalid(mips_cpu_axi_mem_rvalid),
        .mips_cpu_axi_mem_wdata(mips_cpu_axi_mem_wdata),
        .mips_cpu_axi_mem_wready(mips_cpu_axi_mem_wready),
        .mips_cpu_axi_mem_wstrb(mips_cpu_axi_mem_wstrb),
        .mips_cpu_axi_mem_wvalid(mips_cpu_axi_mem_wvalid),
        .mips_cpu_clk(mips_cpu_clk),
        .mips_cpu_reset(mips_cpu_reset),
        .mips_perf_cnt_0(mips_perf_cnt_0),
        .mips_perf_cnt_1(mips_perf_cnt_1),
        .mips_perf_cnt_10(mips_perf_cnt_10),
        .mips_perf_cnt_11(mips_perf_cnt_11),
        .mips_perf_cnt_12(mips_perf_cnt_12),
        .mips_perf_cnt_13(mips_perf_cnt_13),
        .mips_perf_cnt_14(mips_perf_cnt_14),
        .mips_perf_cnt_15(mips_perf_cnt_15),
        .mips_perf_cnt_2(mips_perf_cnt_2),
        .mips_perf_cnt_3(mips_perf_cnt_3),
        .mips_perf_cnt_4(mips_perf_cnt_4),
        .mips_perf_cnt_5(mips_perf_cnt_5),
        .mips_perf_cnt_6(mips_perf_cnt_6),
        .mips_perf_cnt_7(mips_perf_cnt_7),
        .mips_perf_cnt_8(mips_perf_cnt_8),
        .mips_perf_cnt_9(mips_perf_cnt_9),
        .uart_tx(uart_tx));
endmodule
