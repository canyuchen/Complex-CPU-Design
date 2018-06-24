//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Jun 24 09:49:21 2018
//Host        : cod-VirtualBox running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target sim.bd
//Design      : sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m00_couplers_imp_1R6WPDP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [7:0]auto_pc_to_m00_couplers_ARLEN;
  wire [0:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [3:0]auto_pc_to_m00_couplers_ARREGION;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [7:0]auto_pc_to_m00_couplers_AWLEN;
  wire [0:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [3:0]auto_pc_to_m00_couplers_AWREGION;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = auto_pc_to_m00_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = auto_pc_to_m00_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  sim_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arregion(auto_pc_to_m00_couplers_ARREGION),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awregion(auto_pc_to_m00_couplers_AWREGION),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_HED6HO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_1R0U4D5
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_H8XEK8
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire m01_couplers_to_m01_couplers_ARREADY;
  wire m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire m01_couplers_to_m01_couplers_AWREADY;
  wire m01_couplers_to_m01_couplers_AWVALID;
  wire m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready;
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid;
endmodule

module m02_couplers_imp_10LEW52
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [2:0]m02_couplers_to_m02_couplers_ARPROT;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [2:0]m02_couplers_to_m02_couplers_AWPROT;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_couplers_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_couplers_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m02_couplers_imp_QC205Z
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m02_couplers_to_m02_couplers_ARADDR;
  wire [0:0]m02_couplers_to_m02_couplers_ARREADY;
  wire [0:0]m02_couplers_to_m02_couplers_ARVALID;
  wire [31:0]m02_couplers_to_m02_couplers_AWADDR;
  wire [0:0]m02_couplers_to_m02_couplers_AWREADY;
  wire [0:0]m02_couplers_to_m02_couplers_AWVALID;
  wire [0:0]m02_couplers_to_m02_couplers_BREADY;
  wire [1:0]m02_couplers_to_m02_couplers_BRESP;
  wire [0:0]m02_couplers_to_m02_couplers_BVALID;
  wire [31:0]m02_couplers_to_m02_couplers_RDATA;
  wire [0:0]m02_couplers_to_m02_couplers_RREADY;
  wire [1:0]m02_couplers_to_m02_couplers_RRESP;
  wire [0:0]m02_couplers_to_m02_couplers_RVALID;
  wire [31:0]m02_couplers_to_m02_couplers_WDATA;
  wire [0:0]m02_couplers_to_m02_couplers_WREADY;
  wire [3:0]m02_couplers_to_m02_couplers_WSTRB;
  wire [0:0]m02_couplers_to_m02_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m02_couplers_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m02_couplers_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_couplers_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m02_couplers_to_m02_couplers_AWVALID;
  assign M_AXI_bready[0] = m02_couplers_to_m02_couplers_BREADY;
  assign M_AXI_rready[0] = m02_couplers_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_couplers_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_couplers_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m02_couplers_to_m02_couplers_WVALID;
  assign S_AXI_arready[0] = m02_couplers_to_m02_couplers_ARREADY;
  assign S_AXI_awready[0] = m02_couplers_to_m02_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_couplers_BRESP;
  assign S_AXI_bvalid[0] = m02_couplers_to_m02_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_couplers_RRESP;
  assign S_AXI_rvalid[0] = m02_couplers_to_m02_couplers_RVALID;
  assign S_AXI_wready[0] = m02_couplers_to_m02_couplers_WREADY;
  assign m02_couplers_to_m02_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_couplers_ARREADY = M_AXI_arready[0];
  assign m02_couplers_to_m02_couplers_ARVALID = S_AXI_arvalid[0];
  assign m02_couplers_to_m02_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_couplers_AWREADY = M_AXI_awready[0];
  assign m02_couplers_to_m02_couplers_AWVALID = S_AXI_awvalid[0];
  assign m02_couplers_to_m02_couplers_BREADY = S_AXI_bready[0];
  assign m02_couplers_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_couplers_to_m02_couplers_BVALID = M_AXI_bvalid[0];
  assign m02_couplers_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_couplers_to_m02_couplers_RREADY = S_AXI_rready[0];
  assign m02_couplers_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_couplers_to_m02_couplers_RVALID = M_AXI_rvalid[0];
  assign m02_couplers_to_m02_couplers_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_couplers_WREADY = M_AXI_wready[0];
  assign m02_couplers_to_m02_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m03_couplers_imp_10HHV4I
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [31:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [31:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [31:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [3:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_1YHMF0Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [31:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [31:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [31:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [3:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[31:0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[31:0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_9VN0UN
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [31:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [31:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [31:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [3:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[31:0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[31:0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_17XDC5D
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [31:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [31:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [31:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [3:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[31:0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[31:0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m07_couplers_imp_ISZ0P0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [31:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [31:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [31:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [3:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[31:0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[31:0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_162PUZQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_KPZO07
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

(* CORE_GENERATION_INFO = "sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=28,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=15,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "sim.hwdef" *) 
module sim
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

  wire [31:0]axi_ddr_if_ARADDR;
  wire [1:0]axi_ddr_if_ARBURST;
  wire [3:0]axi_ddr_if_ARCACHE;
  wire [7:0]axi_ddr_if_ARLEN;
  wire [0:0]axi_ddr_if_ARLOCK;
  wire [2:0]axi_ddr_if_ARPROT;
  wire [3:0]axi_ddr_if_ARQOS;
  wire axi_ddr_if_ARREADY;
  wire [3:0]axi_ddr_if_ARREGION;
  wire [2:0]axi_ddr_if_ARSIZE;
  wire axi_ddr_if_ARVALID;
  wire [31:0]axi_ddr_if_AWADDR;
  wire [1:0]axi_ddr_if_AWBURST;
  wire [3:0]axi_ddr_if_AWCACHE;
  wire [7:0]axi_ddr_if_AWLEN;
  wire [0:0]axi_ddr_if_AWLOCK;
  wire [2:0]axi_ddr_if_AWPROT;
  wire [3:0]axi_ddr_if_AWQOS;
  wire axi_ddr_if_AWREADY;
  wire [3:0]axi_ddr_if_AWREGION;
  wire [2:0]axi_ddr_if_AWSIZE;
  wire axi_ddr_if_AWVALID;
  wire axi_ddr_if_BREADY;
  wire [1:0]axi_ddr_if_BRESP;
  wire axi_ddr_if_BVALID;
  wire [31:0]axi_ddr_if_RDATA;
  wire axi_ddr_if_RLAST;
  wire axi_ddr_if_RREADY;
  wire [1:0]axi_ddr_if_RRESP;
  wire axi_ddr_if_RVALID;
  wire [31:0]axi_ddr_if_WDATA;
  wire axi_ddr_if_WLAST;
  wire axi_ddr_if_WREADY;
  wire [3:0]axi_ddr_if_WSTRB;
  wire axi_ddr_if_WVALID;
  wire [31:0]axi_gpio_ic_m_0_ARADDR;
  wire axi_gpio_ic_m_0_ARREADY;
  wire [0:0]axi_gpio_ic_m_0_ARVALID;
  wire [31:0]axi_gpio_ic_m_0_AWADDR;
  wire axi_gpio_ic_m_0_AWREADY;
  wire [0:0]axi_gpio_ic_m_0_AWVALID;
  wire [0:0]axi_gpio_ic_m_0_BREADY;
  wire [1:0]axi_gpio_ic_m_0_BRESP;
  wire axi_gpio_ic_m_0_BVALID;
  wire [31:0]axi_gpio_ic_m_0_RDATA;
  wire [0:0]axi_gpio_ic_m_0_RREADY;
  wire [1:0]axi_gpio_ic_m_0_RRESP;
  wire axi_gpio_ic_m_0_RVALID;
  wire [31:0]axi_gpio_ic_m_0_WDATA;
  wire axi_gpio_ic_m_0_WREADY;
  wire [3:0]axi_gpio_ic_m_0_WSTRB;
  wire [0:0]axi_gpio_ic_m_0_WVALID;
  wire [31:0]axi_gpio_ic_m_1_ARADDR;
  wire axi_gpio_ic_m_1_ARREADY;
  wire [0:0]axi_gpio_ic_m_1_ARVALID;
  wire [31:0]axi_gpio_ic_m_1_AWADDR;
  wire axi_gpio_ic_m_1_AWREADY;
  wire [0:0]axi_gpio_ic_m_1_AWVALID;
  wire [0:0]axi_gpio_ic_m_1_BREADY;
  wire [1:0]axi_gpio_ic_m_1_BRESP;
  wire axi_gpio_ic_m_1_BVALID;
  wire [31:0]axi_gpio_ic_m_1_RDATA;
  wire [0:0]axi_gpio_ic_m_1_RREADY;
  wire [1:0]axi_gpio_ic_m_1_RRESP;
  wire axi_gpio_ic_m_1_RVALID;
  wire [31:0]axi_gpio_ic_m_1_WDATA;
  wire axi_gpio_ic_m_1_WREADY;
  wire [3:0]axi_gpio_ic_m_1_WSTRB;
  wire [0:0]axi_gpio_ic_m_1_WVALID;
  wire [31:0]axi_gpio_ic_m_2_ARADDR;
  wire axi_gpio_ic_m_2_ARREADY;
  wire [0:0]axi_gpio_ic_m_2_ARVALID;
  wire [31:0]axi_gpio_ic_m_2_AWADDR;
  wire axi_gpio_ic_m_2_AWREADY;
  wire [0:0]axi_gpio_ic_m_2_AWVALID;
  wire [0:0]axi_gpio_ic_m_2_BREADY;
  wire [1:0]axi_gpio_ic_m_2_BRESP;
  wire axi_gpio_ic_m_2_BVALID;
  wire [31:0]axi_gpio_ic_m_2_RDATA;
  wire [0:0]axi_gpio_ic_m_2_RREADY;
  wire [1:0]axi_gpio_ic_m_2_RRESP;
  wire axi_gpio_ic_m_2_RVALID;
  wire [31:0]axi_gpio_ic_m_2_WDATA;
  wire axi_gpio_ic_m_2_WREADY;
  wire [3:0]axi_gpio_ic_m_2_WSTRB;
  wire [0:0]axi_gpio_ic_m_2_WVALID;
  wire [31:0]axi_gpio_ic_m_3_ARADDR;
  wire axi_gpio_ic_m_3_ARREADY;
  wire [0:0]axi_gpio_ic_m_3_ARVALID;
  wire [31:0]axi_gpio_ic_m_3_AWADDR;
  wire axi_gpio_ic_m_3_AWREADY;
  wire [0:0]axi_gpio_ic_m_3_AWVALID;
  wire [0:0]axi_gpio_ic_m_3_BREADY;
  wire [1:0]axi_gpio_ic_m_3_BRESP;
  wire axi_gpio_ic_m_3_BVALID;
  wire [31:0]axi_gpio_ic_m_3_RDATA;
  wire [0:0]axi_gpio_ic_m_3_RREADY;
  wire [1:0]axi_gpio_ic_m_3_RRESP;
  wire axi_gpio_ic_m_3_RVALID;
  wire [31:0]axi_gpio_ic_m_3_WDATA;
  wire axi_gpio_ic_m_3_WREADY;
  wire [3:0]axi_gpio_ic_m_3_WSTRB;
  wire [0:0]axi_gpio_ic_m_3_WVALID;
  wire [31:0]axi_gpio_ic_m_4_ARADDR;
  wire axi_gpio_ic_m_4_ARREADY;
  wire [0:0]axi_gpio_ic_m_4_ARVALID;
  wire [31:0]axi_gpio_ic_m_4_AWADDR;
  wire axi_gpio_ic_m_4_AWREADY;
  wire [0:0]axi_gpio_ic_m_4_AWVALID;
  wire [0:0]axi_gpio_ic_m_4_BREADY;
  wire [1:0]axi_gpio_ic_m_4_BRESP;
  wire axi_gpio_ic_m_4_BVALID;
  wire [31:0]axi_gpio_ic_m_4_RDATA;
  wire [0:0]axi_gpio_ic_m_4_RREADY;
  wire [1:0]axi_gpio_ic_m_4_RRESP;
  wire axi_gpio_ic_m_4_RVALID;
  wire [31:0]axi_gpio_ic_m_4_WDATA;
  wire axi_gpio_ic_m_4_WREADY;
  wire [3:0]axi_gpio_ic_m_4_WSTRB;
  wire [0:0]axi_gpio_ic_m_4_WVALID;
  wire [31:0]axi_gpio_ic_m_5_ARADDR;
  wire axi_gpio_ic_m_5_ARREADY;
  wire [0:0]axi_gpio_ic_m_5_ARVALID;
  wire [31:0]axi_gpio_ic_m_5_AWADDR;
  wire axi_gpio_ic_m_5_AWREADY;
  wire [0:0]axi_gpio_ic_m_5_AWVALID;
  wire [0:0]axi_gpio_ic_m_5_BREADY;
  wire [1:0]axi_gpio_ic_m_5_BRESP;
  wire axi_gpio_ic_m_5_BVALID;
  wire [31:0]axi_gpio_ic_m_5_RDATA;
  wire [0:0]axi_gpio_ic_m_5_RREADY;
  wire [1:0]axi_gpio_ic_m_5_RRESP;
  wire axi_gpio_ic_m_5_RVALID;
  wire [31:0]axi_gpio_ic_m_5_WDATA;
  wire axi_gpio_ic_m_5_WREADY;
  wire [3:0]axi_gpio_ic_m_5_WSTRB;
  wire [0:0]axi_gpio_ic_m_5_WVALID;
  wire [31:0]axi_gpio_ic_m_6_ARADDR;
  wire axi_gpio_ic_m_6_ARREADY;
  wire [0:0]axi_gpio_ic_m_6_ARVALID;
  wire [31:0]axi_gpio_ic_m_6_AWADDR;
  wire axi_gpio_ic_m_6_AWREADY;
  wire [0:0]axi_gpio_ic_m_6_AWVALID;
  wire [0:0]axi_gpio_ic_m_6_BREADY;
  wire [1:0]axi_gpio_ic_m_6_BRESP;
  wire axi_gpio_ic_m_6_BVALID;
  wire [31:0]axi_gpio_ic_m_6_RDATA;
  wire [0:0]axi_gpio_ic_m_6_RREADY;
  wire [1:0]axi_gpio_ic_m_6_RRESP;
  wire axi_gpio_ic_m_6_RVALID;
  wire [31:0]axi_gpio_ic_m_6_WDATA;
  wire axi_gpio_ic_m_6_WREADY;
  wire [3:0]axi_gpio_ic_m_6_WSTRB;
  wire [0:0]axi_gpio_ic_m_6_WVALID;
  wire [31:0]axi_gpio_ic_m_7_ARADDR;
  wire axi_gpio_ic_m_7_ARREADY;
  wire [0:0]axi_gpio_ic_m_7_ARVALID;
  wire [31:0]axi_gpio_ic_m_7_AWADDR;
  wire axi_gpio_ic_m_7_AWREADY;
  wire [0:0]axi_gpio_ic_m_7_AWVALID;
  wire [0:0]axi_gpio_ic_m_7_BREADY;
  wire [1:0]axi_gpio_ic_m_7_BRESP;
  wire axi_gpio_ic_m_7_BVALID;
  wire [31:0]axi_gpio_ic_m_7_RDATA;
  wire [0:0]axi_gpio_ic_m_7_RREADY;
  wire [1:0]axi_gpio_ic_m_7_RRESP;
  wire axi_gpio_ic_m_7_RVALID;
  wire [31:0]axi_gpio_ic_m_7_WDATA;
  wire axi_gpio_ic_m_7_WREADY;
  wire [3:0]axi_gpio_ic_m_7_WSTRB;
  wire [0:0]axi_gpio_ic_m_7_WVALID;
  wire [31:0]axi_gpio_ic_s_ARADDR;
  wire [2:0]axi_gpio_ic_s_ARPROT;
  wire [0:0]axi_gpio_ic_s_ARREADY;
  wire [0:0]axi_gpio_ic_s_ARVALID;
  wire [31:0]axi_gpio_ic_s_AWADDR;
  wire [2:0]axi_gpio_ic_s_AWPROT;
  wire [0:0]axi_gpio_ic_s_AWREADY;
  wire [0:0]axi_gpio_ic_s_AWVALID;
  wire [0:0]axi_gpio_ic_s_BREADY;
  wire [1:0]axi_gpio_ic_s_BRESP;
  wire [0:0]axi_gpio_ic_s_BVALID;
  wire [31:0]axi_gpio_ic_s_RDATA;
  wire [0:0]axi_gpio_ic_s_RREADY;
  wire [1:0]axi_gpio_ic_s_RRESP;
  wire [0:0]axi_gpio_ic_s_RVALID;
  wire [31:0]axi_gpio_ic_s_WDATA;
  wire [0:0]axi_gpio_ic_s_WREADY;
  wire [3:0]axi_gpio_ic_s_WSTRB;
  wire [0:0]axi_gpio_ic_s_WVALID;
  wire [31:0]axi_uart_ARADDR;
  wire axi_uart_ARREADY;
  wire axi_uart_ARVALID;
  wire [31:0]axi_uart_AWADDR;
  wire axi_uart_AWREADY;
  wire axi_uart_AWVALID;
  wire axi_uart_BREADY;
  wire [1:0]axi_uart_BRESP;
  wire axi_uart_BVALID;
  wire [31:0]axi_uart_RDATA;
  wire axi_uart_RREADY;
  wire [1:0]axi_uart_RRESP;
  wire axi_uart_RVALID;
  wire [31:0]axi_uart_WDATA;
  wire axi_uart_WREADY;
  wire [3:0]axi_uart_WSTRB;
  wire axi_uart_WVALID;
  wire mips_clk;
  wire [31:0]mips_cpu_master_ARADDR;
  wire [2:0]mips_cpu_master_ARPROT;
  wire [0:0]mips_cpu_master_ARREADY;
  wire [0:0]mips_cpu_master_ARVALID;
  wire [31:0]mips_cpu_master_AWADDR;
  wire [2:0]mips_cpu_master_AWPROT;
  wire [0:0]mips_cpu_master_AWREADY;
  wire [0:0]mips_cpu_master_AWVALID;
  wire [0:0]mips_cpu_master_BREADY;
  wire [1:0]mips_cpu_master_BRESP;
  wire [0:0]mips_cpu_master_BVALID;
  wire [31:0]mips_cpu_master_RDATA;
  wire [0:0]mips_cpu_master_RREADY;
  wire [1:0]mips_cpu_master_RRESP;
  wire [0:0]mips_cpu_master_RVALID;
  wire [31:0]mips_cpu_master_WDATA;
  wire [0:0]mips_cpu_master_WREADY;
  wire [3:0]mips_cpu_master_WSTRB;
  wire [0:0]mips_cpu_master_WVALID;
  wire [0:0]mips_cpu_resetn;
  wire [31:0]mips_perf_cnt_0_1;
  wire [31:0]mips_perf_cnt_10_1;
  wire [31:0]mips_perf_cnt_11_1;
  wire [31:0]mips_perf_cnt_12_1;
  wire [31:0]mips_perf_cnt_13_1;
  wire [31:0]mips_perf_cnt_14_1;
  wire [31:0]mips_perf_cnt_15_1;
  wire [31:0]mips_perf_cnt_1_1;
  wire [31:0]mips_perf_cnt_2_1;
  wire [31:0]mips_perf_cnt_3_1;
  wire [31:0]mips_perf_cnt_4_1;
  wire [31:0]mips_perf_cnt_5_1;
  wire [31:0]mips_perf_cnt_6_1;
  wire [31:0]mips_perf_cnt_7_1;
  wire [31:0]mips_perf_cnt_8_1;
  wire [31:0]mips_perf_cnt_9_1;
  wire mips_reset_n_gen;
  wire uart_tx;

  assign axi_ddr_if_ARREADY = bram_axi_if_arready;
  assign axi_ddr_if_AWREADY = bram_axi_if_awready;
  assign axi_ddr_if_BRESP = bram_axi_if_bresp[1:0];
  assign axi_ddr_if_BVALID = bram_axi_if_bvalid;
  assign axi_ddr_if_RDATA = bram_axi_if_rdata[31:0];
  assign axi_ddr_if_RLAST = bram_axi_if_rlast;
  assign axi_ddr_if_RRESP = bram_axi_if_rresp[1:0];
  assign axi_ddr_if_RVALID = bram_axi_if_rvalid;
  assign axi_ddr_if_WREADY = bram_axi_if_wready;
  assign bram_axi_if_araddr[31:0] = axi_ddr_if_ARADDR;
  assign bram_axi_if_arburst[1:0] = axi_ddr_if_ARBURST;
  assign bram_axi_if_arcache[3:0] = axi_ddr_if_ARCACHE;
  assign bram_axi_if_arlen[7:0] = axi_ddr_if_ARLEN;
  assign bram_axi_if_arlock[0] = axi_ddr_if_ARLOCK;
  assign bram_axi_if_arprot[2:0] = axi_ddr_if_ARPROT;
  assign bram_axi_if_arqos[3:0] = axi_ddr_if_ARQOS;
  assign bram_axi_if_arregion[3:0] = axi_ddr_if_ARREGION;
  assign bram_axi_if_arsize[2:0] = axi_ddr_if_ARSIZE;
  assign bram_axi_if_arvalid = axi_ddr_if_ARVALID;
  assign bram_axi_if_awaddr[31:0] = axi_ddr_if_AWADDR;
  assign bram_axi_if_awburst[1:0] = axi_ddr_if_AWBURST;
  assign bram_axi_if_awcache[3:0] = axi_ddr_if_AWCACHE;
  assign bram_axi_if_awlen[7:0] = axi_ddr_if_AWLEN;
  assign bram_axi_if_awlock[0] = axi_ddr_if_AWLOCK;
  assign bram_axi_if_awprot[2:0] = axi_ddr_if_AWPROT;
  assign bram_axi_if_awqos[3:0] = axi_ddr_if_AWQOS;
  assign bram_axi_if_awregion[3:0] = axi_ddr_if_AWREGION;
  assign bram_axi_if_awsize[2:0] = axi_ddr_if_AWSIZE;
  assign bram_axi_if_awvalid = axi_ddr_if_AWVALID;
  assign bram_axi_if_bready = axi_ddr_if_BREADY;
  assign bram_axi_if_rready = axi_ddr_if_RREADY;
  assign bram_axi_if_wdata[31:0] = axi_ddr_if_WDATA;
  assign bram_axi_if_wlast = axi_ddr_if_WLAST;
  assign bram_axi_if_wstrb[3:0] = axi_ddr_if_WSTRB;
  assign bram_axi_if_wvalid = axi_ddr_if_WVALID;
  assign mips_clk = mips_cpu_clk;
  assign mips_cpu_axi_mem_arready[0] = mips_cpu_master_ARREADY;
  assign mips_cpu_axi_mem_awready[0] = mips_cpu_master_AWREADY;
  assign mips_cpu_axi_mem_bresp[1:0] = mips_cpu_master_BRESP;
  assign mips_cpu_axi_mem_bvalid[0] = mips_cpu_master_BVALID;
  assign mips_cpu_axi_mem_rdata[31:0] = mips_cpu_master_RDATA;
  assign mips_cpu_axi_mem_rresp[1:0] = mips_cpu_master_RRESP;
  assign mips_cpu_axi_mem_rvalid[0] = mips_cpu_master_RVALID;
  assign mips_cpu_axi_mem_wready[0] = mips_cpu_master_WREADY;
  assign mips_cpu_master_ARADDR = mips_cpu_axi_mem_araddr[31:0];
  assign mips_cpu_master_ARPROT = mips_cpu_axi_mem_arprot[2:0];
  assign mips_cpu_master_ARVALID = mips_cpu_axi_mem_arvalid[0];
  assign mips_cpu_master_AWADDR = mips_cpu_axi_mem_awaddr[31:0];
  assign mips_cpu_master_AWPROT = mips_cpu_axi_mem_awprot[2:0];
  assign mips_cpu_master_AWVALID = mips_cpu_axi_mem_awvalid[0];
  assign mips_cpu_master_BREADY = mips_cpu_axi_mem_bready[0];
  assign mips_cpu_master_RREADY = mips_cpu_axi_mem_rready[0];
  assign mips_cpu_master_WDATA = mips_cpu_axi_mem_wdata[31:0];
  assign mips_cpu_master_WSTRB = mips_cpu_axi_mem_wstrb[3:0];
  assign mips_cpu_master_WVALID = mips_cpu_axi_mem_wvalid[0];
  assign mips_perf_cnt_0_1 = mips_perf_cnt_0[31:0];
  assign mips_perf_cnt_10_1 = mips_perf_cnt_10[31:0];
  assign mips_perf_cnt_11_1 = mips_perf_cnt_11[31:0];
  assign mips_perf_cnt_12_1 = mips_perf_cnt_12[31:0];
  assign mips_perf_cnt_13_1 = mips_perf_cnt_13[31:0];
  assign mips_perf_cnt_14_1 = mips_perf_cnt_14[31:0];
  assign mips_perf_cnt_15_1 = mips_perf_cnt_15[31:0];
  assign mips_perf_cnt_1_1 = mips_perf_cnt_1[31:0];
  assign mips_perf_cnt_2_1 = mips_perf_cnt_2[31:0];
  assign mips_perf_cnt_3_1 = mips_perf_cnt_3[31:0];
  assign mips_perf_cnt_4_1 = mips_perf_cnt_4[31:0];
  assign mips_perf_cnt_5_1 = mips_perf_cnt_5[31:0];
  assign mips_perf_cnt_6_1 = mips_perf_cnt_6[31:0];
  assign mips_perf_cnt_7_1 = mips_perf_cnt_7[31:0];
  assign mips_perf_cnt_8_1 = mips_perf_cnt_8[31:0];
  assign mips_perf_cnt_9_1 = mips_perf_cnt_9[31:0];
  assign mips_reset_n_gen = mips_cpu_reset;
  sim_axi4_gpio_ic_0 axi4_gpio_ic
       (.ACLK(mips_clk),
        .ARESETN(mips_cpu_resetn),
        .M00_ACLK(mips_clk),
        .M00_ARESETN(mips_cpu_resetn),
        .M00_AXI_araddr(axi_gpio_ic_m_0_ARADDR),
        .M00_AXI_arready(axi_gpio_ic_m_0_ARREADY),
        .M00_AXI_arvalid(axi_gpio_ic_m_0_ARVALID),
        .M00_AXI_awaddr(axi_gpio_ic_m_0_AWADDR),
        .M00_AXI_awready(axi_gpio_ic_m_0_AWREADY),
        .M00_AXI_awvalid(axi_gpio_ic_m_0_AWVALID),
        .M00_AXI_bready(axi_gpio_ic_m_0_BREADY),
        .M00_AXI_bresp(axi_gpio_ic_m_0_BRESP),
        .M00_AXI_bvalid(axi_gpio_ic_m_0_BVALID),
        .M00_AXI_rdata(axi_gpio_ic_m_0_RDATA),
        .M00_AXI_rready(axi_gpio_ic_m_0_RREADY),
        .M00_AXI_rresp(axi_gpio_ic_m_0_RRESP),
        .M00_AXI_rvalid(axi_gpio_ic_m_0_RVALID),
        .M00_AXI_wdata(axi_gpio_ic_m_0_WDATA),
        .M00_AXI_wready(axi_gpio_ic_m_0_WREADY),
        .M00_AXI_wstrb(axi_gpio_ic_m_0_WSTRB),
        .M00_AXI_wvalid(axi_gpio_ic_m_0_WVALID),
        .M01_ACLK(mips_clk),
        .M01_ARESETN(mips_cpu_resetn),
        .M01_AXI_araddr(axi_gpio_ic_m_1_ARADDR),
        .M01_AXI_arready(axi_gpio_ic_m_1_ARREADY),
        .M01_AXI_arvalid(axi_gpio_ic_m_1_ARVALID),
        .M01_AXI_awaddr(axi_gpio_ic_m_1_AWADDR),
        .M01_AXI_awready(axi_gpio_ic_m_1_AWREADY),
        .M01_AXI_awvalid(axi_gpio_ic_m_1_AWVALID),
        .M01_AXI_bready(axi_gpio_ic_m_1_BREADY),
        .M01_AXI_bresp(axi_gpio_ic_m_1_BRESP),
        .M01_AXI_bvalid(axi_gpio_ic_m_1_BVALID),
        .M01_AXI_rdata(axi_gpio_ic_m_1_RDATA),
        .M01_AXI_rready(axi_gpio_ic_m_1_RREADY),
        .M01_AXI_rresp(axi_gpio_ic_m_1_RRESP),
        .M01_AXI_rvalid(axi_gpio_ic_m_1_RVALID),
        .M01_AXI_wdata(axi_gpio_ic_m_1_WDATA),
        .M01_AXI_wready(axi_gpio_ic_m_1_WREADY),
        .M01_AXI_wstrb(axi_gpio_ic_m_1_WSTRB),
        .M01_AXI_wvalid(axi_gpio_ic_m_1_WVALID),
        .M02_ACLK(mips_clk),
        .M02_ARESETN(mips_cpu_resetn),
        .M02_AXI_araddr(axi_gpio_ic_m_2_ARADDR),
        .M02_AXI_arready(axi_gpio_ic_m_2_ARREADY),
        .M02_AXI_arvalid(axi_gpio_ic_m_2_ARVALID),
        .M02_AXI_awaddr(axi_gpio_ic_m_2_AWADDR),
        .M02_AXI_awready(axi_gpio_ic_m_2_AWREADY),
        .M02_AXI_awvalid(axi_gpio_ic_m_2_AWVALID),
        .M02_AXI_bready(axi_gpio_ic_m_2_BREADY),
        .M02_AXI_bresp(axi_gpio_ic_m_2_BRESP),
        .M02_AXI_bvalid(axi_gpio_ic_m_2_BVALID),
        .M02_AXI_rdata(axi_gpio_ic_m_2_RDATA),
        .M02_AXI_rready(axi_gpio_ic_m_2_RREADY),
        .M02_AXI_rresp(axi_gpio_ic_m_2_RRESP),
        .M02_AXI_rvalid(axi_gpio_ic_m_2_RVALID),
        .M02_AXI_wdata(axi_gpio_ic_m_2_WDATA),
        .M02_AXI_wready(axi_gpio_ic_m_2_WREADY),
        .M02_AXI_wstrb(axi_gpio_ic_m_2_WSTRB),
        .M02_AXI_wvalid(axi_gpio_ic_m_2_WVALID),
        .M03_ACLK(mips_clk),
        .M03_ARESETN(mips_cpu_resetn),
        .M03_AXI_araddr(axi_gpio_ic_m_3_ARADDR),
        .M03_AXI_arready(axi_gpio_ic_m_3_ARREADY),
        .M03_AXI_arvalid(axi_gpio_ic_m_3_ARVALID),
        .M03_AXI_awaddr(axi_gpio_ic_m_3_AWADDR),
        .M03_AXI_awready(axi_gpio_ic_m_3_AWREADY),
        .M03_AXI_awvalid(axi_gpio_ic_m_3_AWVALID),
        .M03_AXI_bready(axi_gpio_ic_m_3_BREADY),
        .M03_AXI_bresp(axi_gpio_ic_m_3_BRESP),
        .M03_AXI_bvalid(axi_gpio_ic_m_3_BVALID),
        .M03_AXI_rdata(axi_gpio_ic_m_3_RDATA),
        .M03_AXI_rready(axi_gpio_ic_m_3_RREADY),
        .M03_AXI_rresp(axi_gpio_ic_m_3_RRESP),
        .M03_AXI_rvalid(axi_gpio_ic_m_3_RVALID),
        .M03_AXI_wdata(axi_gpio_ic_m_3_WDATA),
        .M03_AXI_wready(axi_gpio_ic_m_3_WREADY),
        .M03_AXI_wstrb(axi_gpio_ic_m_3_WSTRB),
        .M03_AXI_wvalid(axi_gpio_ic_m_3_WVALID),
        .M04_ACLK(mips_clk),
        .M04_ARESETN(mips_cpu_resetn),
        .M04_AXI_araddr(axi_gpio_ic_m_4_ARADDR),
        .M04_AXI_arready(axi_gpio_ic_m_4_ARREADY),
        .M04_AXI_arvalid(axi_gpio_ic_m_4_ARVALID),
        .M04_AXI_awaddr(axi_gpio_ic_m_4_AWADDR),
        .M04_AXI_awready(axi_gpio_ic_m_4_AWREADY),
        .M04_AXI_awvalid(axi_gpio_ic_m_4_AWVALID),
        .M04_AXI_bready(axi_gpio_ic_m_4_BREADY),
        .M04_AXI_bresp(axi_gpio_ic_m_4_BRESP),
        .M04_AXI_bvalid(axi_gpio_ic_m_4_BVALID),
        .M04_AXI_rdata(axi_gpio_ic_m_4_RDATA),
        .M04_AXI_rready(axi_gpio_ic_m_4_RREADY),
        .M04_AXI_rresp(axi_gpio_ic_m_4_RRESP),
        .M04_AXI_rvalid(axi_gpio_ic_m_4_RVALID),
        .M04_AXI_wdata(axi_gpio_ic_m_4_WDATA),
        .M04_AXI_wready(axi_gpio_ic_m_4_WREADY),
        .M04_AXI_wstrb(axi_gpio_ic_m_4_WSTRB),
        .M04_AXI_wvalid(axi_gpio_ic_m_4_WVALID),
        .M05_ACLK(mips_clk),
        .M05_ARESETN(mips_cpu_resetn),
        .M05_AXI_araddr(axi_gpio_ic_m_5_ARADDR),
        .M05_AXI_arready(axi_gpio_ic_m_5_ARREADY),
        .M05_AXI_arvalid(axi_gpio_ic_m_5_ARVALID),
        .M05_AXI_awaddr(axi_gpio_ic_m_5_AWADDR),
        .M05_AXI_awready(axi_gpio_ic_m_5_AWREADY),
        .M05_AXI_awvalid(axi_gpio_ic_m_5_AWVALID),
        .M05_AXI_bready(axi_gpio_ic_m_5_BREADY),
        .M05_AXI_bresp(axi_gpio_ic_m_5_BRESP),
        .M05_AXI_bvalid(axi_gpio_ic_m_5_BVALID),
        .M05_AXI_rdata(axi_gpio_ic_m_5_RDATA),
        .M05_AXI_rready(axi_gpio_ic_m_5_RREADY),
        .M05_AXI_rresp(axi_gpio_ic_m_5_RRESP),
        .M05_AXI_rvalid(axi_gpio_ic_m_5_RVALID),
        .M05_AXI_wdata(axi_gpio_ic_m_5_WDATA),
        .M05_AXI_wready(axi_gpio_ic_m_5_WREADY),
        .M05_AXI_wstrb(axi_gpio_ic_m_5_WSTRB),
        .M05_AXI_wvalid(axi_gpio_ic_m_5_WVALID),
        .M06_ACLK(mips_clk),
        .M06_ARESETN(mips_cpu_resetn),
        .M06_AXI_araddr(axi_gpio_ic_m_6_ARADDR),
        .M06_AXI_arready(axi_gpio_ic_m_6_ARREADY),
        .M06_AXI_arvalid(axi_gpio_ic_m_6_ARVALID),
        .M06_AXI_awaddr(axi_gpio_ic_m_6_AWADDR),
        .M06_AXI_awready(axi_gpio_ic_m_6_AWREADY),
        .M06_AXI_awvalid(axi_gpio_ic_m_6_AWVALID),
        .M06_AXI_bready(axi_gpio_ic_m_6_BREADY),
        .M06_AXI_bresp(axi_gpio_ic_m_6_BRESP),
        .M06_AXI_bvalid(axi_gpio_ic_m_6_BVALID),
        .M06_AXI_rdata(axi_gpio_ic_m_6_RDATA),
        .M06_AXI_rready(axi_gpio_ic_m_6_RREADY),
        .M06_AXI_rresp(axi_gpio_ic_m_6_RRESP),
        .M06_AXI_rvalid(axi_gpio_ic_m_6_RVALID),
        .M06_AXI_wdata(axi_gpio_ic_m_6_WDATA),
        .M06_AXI_wready(axi_gpio_ic_m_6_WREADY),
        .M06_AXI_wstrb(axi_gpio_ic_m_6_WSTRB),
        .M06_AXI_wvalid(axi_gpio_ic_m_6_WVALID),
        .M07_ACLK(mips_clk),
        .M07_ARESETN(mips_cpu_resetn),
        .M07_AXI_araddr(axi_gpio_ic_m_7_ARADDR),
        .M07_AXI_arready(axi_gpio_ic_m_7_ARREADY),
        .M07_AXI_arvalid(axi_gpio_ic_m_7_ARVALID),
        .M07_AXI_awaddr(axi_gpio_ic_m_7_AWADDR),
        .M07_AXI_awready(axi_gpio_ic_m_7_AWREADY),
        .M07_AXI_awvalid(axi_gpio_ic_m_7_AWVALID),
        .M07_AXI_bready(axi_gpio_ic_m_7_BREADY),
        .M07_AXI_bresp(axi_gpio_ic_m_7_BRESP),
        .M07_AXI_bvalid(axi_gpio_ic_m_7_BVALID),
        .M07_AXI_rdata(axi_gpio_ic_m_7_RDATA),
        .M07_AXI_rready(axi_gpio_ic_m_7_RREADY),
        .M07_AXI_rresp(axi_gpio_ic_m_7_RRESP),
        .M07_AXI_rvalid(axi_gpio_ic_m_7_RVALID),
        .M07_AXI_wdata(axi_gpio_ic_m_7_WDATA),
        .M07_AXI_wready(axi_gpio_ic_m_7_WREADY),
        .M07_AXI_wstrb(axi_gpio_ic_m_7_WSTRB),
        .M07_AXI_wvalid(axi_gpio_ic_m_7_WVALID),
        .S00_ACLK(mips_clk),
        .S00_ARESETN(mips_cpu_resetn),
        .S00_AXI_araddr(axi_gpio_ic_s_ARADDR),
        .S00_AXI_arprot(axi_gpio_ic_s_ARPROT),
        .S00_AXI_arready(axi_gpio_ic_s_ARREADY),
        .S00_AXI_arvalid(axi_gpio_ic_s_ARVALID),
        .S00_AXI_awaddr(axi_gpio_ic_s_AWADDR),
        .S00_AXI_awprot(axi_gpio_ic_s_AWPROT),
        .S00_AXI_awready(axi_gpio_ic_s_AWREADY),
        .S00_AXI_awvalid(axi_gpio_ic_s_AWVALID),
        .S00_AXI_bready(axi_gpio_ic_s_BREADY),
        .S00_AXI_bresp(axi_gpio_ic_s_BRESP),
        .S00_AXI_bvalid(axi_gpio_ic_s_BVALID),
        .S00_AXI_rdata(axi_gpio_ic_s_RDATA),
        .S00_AXI_rready(axi_gpio_ic_s_RREADY),
        .S00_AXI_rresp(axi_gpio_ic_s_RRESP),
        .S00_AXI_rvalid(axi_gpio_ic_s_RVALID),
        .S00_AXI_wdata(axi_gpio_ic_s_WDATA),
        .S00_AXI_wready(axi_gpio_ic_s_WREADY),
        .S00_AXI_wstrb(axi_gpio_ic_s_WSTRB),
        .S00_AXI_wvalid(axi_gpio_ic_s_WVALID));
  sim_axi_gpio_0_0 axi_gpio_0
       (.gpio2_io_i(mips_perf_cnt_1_1),
        .gpio_io_i(mips_perf_cnt_0_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_0_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_0_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_0_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_0_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_0_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_0_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_0_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_0_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_0_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_0_RDATA),
        .s_axi_rready(axi_gpio_ic_m_0_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_0_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_0_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_0_WDATA),
        .s_axi_wready(axi_gpio_ic_m_0_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_0_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_0_WVALID));
  sim_axi_gpio_1_0 axi_gpio_1
       (.gpio2_io_i(mips_perf_cnt_3_1),
        .gpio_io_i(mips_perf_cnt_2_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_1_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_1_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_1_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_1_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_1_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_1_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_1_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_1_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_1_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_1_RDATA),
        .s_axi_rready(axi_gpio_ic_m_1_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_1_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_1_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_1_WDATA),
        .s_axi_wready(axi_gpio_ic_m_1_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_1_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_1_WVALID));
  sim_axi_gpio_2_0 axi_gpio_2
       (.gpio2_io_i(mips_perf_cnt_5_1),
        .gpio_io_i(mips_perf_cnt_4_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_2_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_2_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_2_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_2_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_2_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_2_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_2_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_2_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_2_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_2_RDATA),
        .s_axi_rready(axi_gpio_ic_m_2_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_2_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_2_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_2_WDATA),
        .s_axi_wready(axi_gpio_ic_m_2_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_2_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_2_WVALID));
  sim_axi_gpio_3_0 axi_gpio_3
       (.gpio2_io_i(mips_perf_cnt_7_1),
        .gpio_io_i(mips_perf_cnt_6_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_3_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_3_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_3_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_3_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_3_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_3_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_3_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_3_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_3_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_3_RDATA),
        .s_axi_rready(axi_gpio_ic_m_3_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_3_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_3_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_3_WDATA),
        .s_axi_wready(axi_gpio_ic_m_3_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_3_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_3_WVALID));
  sim_axi_gpio_4_0 axi_gpio_4
       (.gpio2_io_i(mips_perf_cnt_9_1),
        .gpio_io_i(mips_perf_cnt_8_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_4_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_4_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_4_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_4_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_4_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_4_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_4_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_4_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_4_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_4_RDATA),
        .s_axi_rready(axi_gpio_ic_m_4_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_4_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_4_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_4_WDATA),
        .s_axi_wready(axi_gpio_ic_m_4_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_4_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_4_WVALID));
  sim_axi_gpio_5_0 axi_gpio_5
       (.gpio2_io_i(mips_perf_cnt_11_1),
        .gpio_io_i(mips_perf_cnt_10_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_5_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_5_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_5_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_5_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_5_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_5_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_5_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_5_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_5_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_5_RDATA),
        .s_axi_rready(axi_gpio_ic_m_5_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_5_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_5_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_5_WDATA),
        .s_axi_wready(axi_gpio_ic_m_5_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_5_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_5_WVALID));
  sim_axi_gpio_6_0 axi_gpio_6
       (.gpio2_io_i(mips_perf_cnt_13_1),
        .gpio_io_i(mips_perf_cnt_12_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_6_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_6_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_6_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_6_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_6_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_6_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_6_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_6_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_6_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_6_RDATA),
        .s_axi_rready(axi_gpio_ic_m_6_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_6_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_6_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_6_WDATA),
        .s_axi_wready(axi_gpio_ic_m_6_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_6_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_6_WVALID));
  sim_axi_gpio_7_0 axi_gpio_7
       (.gpio2_io_i(mips_perf_cnt_15_1),
        .gpio_io_i(mips_perf_cnt_14_1),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_gpio_ic_m_7_ARADDR[8:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_gpio_ic_m_7_ARREADY),
        .s_axi_arvalid(axi_gpio_ic_m_7_ARVALID),
        .s_axi_awaddr(axi_gpio_ic_m_7_AWADDR[8:0]),
        .s_axi_awready(axi_gpio_ic_m_7_AWREADY),
        .s_axi_awvalid(axi_gpio_ic_m_7_AWVALID),
        .s_axi_bready(axi_gpio_ic_m_7_BREADY),
        .s_axi_bresp(axi_gpio_ic_m_7_BRESP),
        .s_axi_bvalid(axi_gpio_ic_m_7_BVALID),
        .s_axi_rdata(axi_gpio_ic_m_7_RDATA),
        .s_axi_rready(axi_gpio_ic_m_7_RREADY),
        .s_axi_rresp(axi_gpio_ic_m_7_RRESP),
        .s_axi_rvalid(axi_gpio_ic_m_7_RVALID),
        .s_axi_wdata(axi_gpio_ic_m_7_WDATA),
        .s_axi_wready(axi_gpio_ic_m_7_WREADY),
        .s_axi_wstrb(axi_gpio_ic_m_7_WSTRB),
        .s_axi_wvalid(axi_gpio_ic_m_7_WVALID));
  sim_axi_uart_0 axi_uart
       (.rx(1'b0),
        .s_axi_aclk(mips_clk),
        .s_axi_araddr(axi_uart_ARADDR[3:0]),
        .s_axi_aresetn(mips_cpu_resetn),
        .s_axi_arready(axi_uart_ARREADY),
        .s_axi_arvalid(axi_uart_ARVALID),
        .s_axi_awaddr(axi_uart_AWADDR[3:0]),
        .s_axi_awready(axi_uart_AWREADY),
        .s_axi_awvalid(axi_uart_AWVALID),
        .s_axi_bready(axi_uart_BREADY),
        .s_axi_bresp(axi_uart_BRESP),
        .s_axi_bvalid(axi_uart_BVALID),
        .s_axi_rdata(axi_uart_RDATA),
        .s_axi_rready(axi_uart_RREADY),
        .s_axi_rresp(axi_uart_RRESP),
        .s_axi_rvalid(axi_uart_RVALID),
        .s_axi_wdata(axi_uart_WDATA),
        .s_axi_wready(axi_uart_WREADY),
        .s_axi_wstrb(axi_uart_WSTRB),
        .s_axi_wvalid(axi_uart_WVALID),
        .tx(uart_tx));
  sim_mips_axi_ic_0 mips_axi_ic
       (.ACLK(mips_clk),
        .ARESETN(mips_cpu_resetn),
        .M00_ACLK(mips_clk),
        .M00_ARESETN(mips_cpu_resetn),
        .M00_AXI_araddr(axi_ddr_if_ARADDR),
        .M00_AXI_arburst(axi_ddr_if_ARBURST),
        .M00_AXI_arcache(axi_ddr_if_ARCACHE),
        .M00_AXI_arlen(axi_ddr_if_ARLEN),
        .M00_AXI_arlock(axi_ddr_if_ARLOCK),
        .M00_AXI_arprot(axi_ddr_if_ARPROT),
        .M00_AXI_arqos(axi_ddr_if_ARQOS),
        .M00_AXI_arready(axi_ddr_if_ARREADY),
        .M00_AXI_arregion(axi_ddr_if_ARREGION),
        .M00_AXI_arsize(axi_ddr_if_ARSIZE),
        .M00_AXI_arvalid(axi_ddr_if_ARVALID),
        .M00_AXI_awaddr(axi_ddr_if_AWADDR),
        .M00_AXI_awburst(axi_ddr_if_AWBURST),
        .M00_AXI_awcache(axi_ddr_if_AWCACHE),
        .M00_AXI_awlen(axi_ddr_if_AWLEN),
        .M00_AXI_awlock(axi_ddr_if_AWLOCK),
        .M00_AXI_awprot(axi_ddr_if_AWPROT),
        .M00_AXI_awqos(axi_ddr_if_AWQOS),
        .M00_AXI_awready(axi_ddr_if_AWREADY),
        .M00_AXI_awregion(axi_ddr_if_AWREGION),
        .M00_AXI_awsize(axi_ddr_if_AWSIZE),
        .M00_AXI_awvalid(axi_ddr_if_AWVALID),
        .M00_AXI_bready(axi_ddr_if_BREADY),
        .M00_AXI_bresp(axi_ddr_if_BRESP),
        .M00_AXI_bvalid(axi_ddr_if_BVALID),
        .M00_AXI_rdata(axi_ddr_if_RDATA),
        .M00_AXI_rlast(axi_ddr_if_RLAST),
        .M00_AXI_rready(axi_ddr_if_RREADY),
        .M00_AXI_rresp(axi_ddr_if_RRESP),
        .M00_AXI_rvalid(axi_ddr_if_RVALID),
        .M00_AXI_wdata(axi_ddr_if_WDATA),
        .M00_AXI_wlast(axi_ddr_if_WLAST),
        .M00_AXI_wready(axi_ddr_if_WREADY),
        .M00_AXI_wstrb(axi_ddr_if_WSTRB),
        .M00_AXI_wvalid(axi_ddr_if_WVALID),
        .M01_ACLK(mips_clk),
        .M01_ARESETN(mips_cpu_resetn),
        .M01_AXI_araddr(axi_uart_ARADDR),
        .M01_AXI_arready(axi_uart_ARREADY),
        .M01_AXI_arvalid(axi_uart_ARVALID),
        .M01_AXI_awaddr(axi_uart_AWADDR),
        .M01_AXI_awready(axi_uart_AWREADY),
        .M01_AXI_awvalid(axi_uart_AWVALID),
        .M01_AXI_bready(axi_uart_BREADY),
        .M01_AXI_bresp(axi_uart_BRESP),
        .M01_AXI_bvalid(axi_uart_BVALID),
        .M01_AXI_rdata(axi_uart_RDATA),
        .M01_AXI_rready(axi_uart_RREADY),
        .M01_AXI_rresp(axi_uart_RRESP),
        .M01_AXI_rvalid(axi_uart_RVALID),
        .M01_AXI_wdata(axi_uart_WDATA),
        .M01_AXI_wready(axi_uart_WREADY),
        .M01_AXI_wstrb(axi_uart_WSTRB),
        .M01_AXI_wvalid(axi_uart_WVALID),
        .M02_ACLK(mips_clk),
        .M02_ARESETN(mips_cpu_resetn),
        .M02_AXI_araddr(axi_gpio_ic_s_ARADDR),
        .M02_AXI_arprot(axi_gpio_ic_s_ARPROT),
        .M02_AXI_arready(axi_gpio_ic_s_ARREADY),
        .M02_AXI_arvalid(axi_gpio_ic_s_ARVALID),
        .M02_AXI_awaddr(axi_gpio_ic_s_AWADDR),
        .M02_AXI_awprot(axi_gpio_ic_s_AWPROT),
        .M02_AXI_awready(axi_gpio_ic_s_AWREADY),
        .M02_AXI_awvalid(axi_gpio_ic_s_AWVALID),
        .M02_AXI_bready(axi_gpio_ic_s_BREADY),
        .M02_AXI_bresp(axi_gpio_ic_s_BRESP),
        .M02_AXI_bvalid(axi_gpio_ic_s_BVALID),
        .M02_AXI_rdata(axi_gpio_ic_s_RDATA),
        .M02_AXI_rready(axi_gpio_ic_s_RREADY),
        .M02_AXI_rresp(axi_gpio_ic_s_RRESP),
        .M02_AXI_rvalid(axi_gpio_ic_s_RVALID),
        .M02_AXI_wdata(axi_gpio_ic_s_WDATA),
        .M02_AXI_wready(axi_gpio_ic_s_WREADY),
        .M02_AXI_wstrb(axi_gpio_ic_s_WSTRB),
        .M02_AXI_wvalid(axi_gpio_ic_s_WVALID),
        .S00_ACLK(mips_clk),
        .S00_ARESETN(mips_cpu_resetn),
        .S00_AXI_araddr(mips_cpu_master_ARADDR),
        .S00_AXI_arprot(mips_cpu_master_ARPROT),
        .S00_AXI_arready(mips_cpu_master_ARREADY),
        .S00_AXI_arvalid(mips_cpu_master_ARVALID),
        .S00_AXI_awaddr(mips_cpu_master_AWADDR),
        .S00_AXI_awprot(mips_cpu_master_AWPROT),
        .S00_AXI_awready(mips_cpu_master_AWREADY),
        .S00_AXI_awvalid(mips_cpu_master_AWVALID),
        .S00_AXI_bready(mips_cpu_master_BREADY),
        .S00_AXI_bresp(mips_cpu_master_BRESP),
        .S00_AXI_bvalid(mips_cpu_master_BVALID),
        .S00_AXI_rdata(mips_cpu_master_RDATA),
        .S00_AXI_rready(mips_cpu_master_RREADY),
        .S00_AXI_rresp(mips_cpu_master_RRESP),
        .S00_AXI_rvalid(mips_cpu_master_RVALID),
        .S00_AXI_wdata(mips_cpu_master_WDATA),
        .S00_AXI_wready(mips_cpu_master_WREADY),
        .S00_AXI_wstrb(mips_cpu_master_WSTRB),
        .S00_AXI_wvalid(mips_cpu_master_WVALID));
  sim_mips_reset_gen_0 mips_reset_gen
       (.Op1(mips_reset_n_gen),
        .Res(mips_cpu_resetn));
endmodule

module sim_axi4_gpio_ic_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arready,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awready,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arready,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awready,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input [0:0]M04_AXI_arready;
  output [0:0]M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input [0:0]M04_AXI_awready;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input [0:0]M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [31:0]M06_AXI_araddr;
  input [0:0]M06_AXI_arready;
  output [0:0]M06_AXI_arvalid;
  output [31:0]M06_AXI_awaddr;
  input [0:0]M06_AXI_awready;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [31:0]M06_AXI_rdata;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [31:0]M06_AXI_wdata;
  input [0:0]M06_AXI_wready;
  output [3:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [31:0]M07_AXI_araddr;
  input [0:0]M07_AXI_arready;
  output [0:0]M07_AXI_arvalid;
  output [31:0]M07_AXI_awaddr;
  input [0:0]M07_AXI_awready;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [31:0]M07_AXI_rdata;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [31:0]M07_AXI_wdata;
  input [0:0]M07_AXI_wready;
  output [3:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire axi4_gpio_ic_ACLK_net;
  wire axi4_gpio_ic_ARESETN_net;
  wire [31:0]axi4_gpio_ic_to_s00_couplers_ARADDR;
  wire [2:0]axi4_gpio_ic_to_s00_couplers_ARPROT;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_ARREADY;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_ARVALID;
  wire [31:0]axi4_gpio_ic_to_s00_couplers_AWADDR;
  wire [2:0]axi4_gpio_ic_to_s00_couplers_AWPROT;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_AWREADY;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_AWVALID;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_BREADY;
  wire [1:0]axi4_gpio_ic_to_s00_couplers_BRESP;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_BVALID;
  wire [31:0]axi4_gpio_ic_to_s00_couplers_RDATA;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_RREADY;
  wire [1:0]axi4_gpio_ic_to_s00_couplers_RRESP;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_RVALID;
  wire [31:0]axi4_gpio_ic_to_s00_couplers_WDATA;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_WREADY;
  wire [3:0]axi4_gpio_ic_to_s00_couplers_WSTRB;
  wire [0:0]axi4_gpio_ic_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m00_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m00_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m00_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m00_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m00_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m00_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m00_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m01_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m01_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m01_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m01_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m01_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m01_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m01_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m01_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m02_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m02_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m02_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m02_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m02_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m02_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m02_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m02_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m03_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m03_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m03_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m03_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m03_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m03_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m03_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m03_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m04_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m04_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m04_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m04_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m04_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m04_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m04_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m04_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m05_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m05_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m05_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m05_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m05_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m05_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m05_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m05_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m06_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m06_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m06_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m06_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m06_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m06_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m06_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m06_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]m07_couplers_to_axi4_gpio_ic_ARADDR;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_ARREADY;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_ARVALID;
  wire [31:0]m07_couplers_to_axi4_gpio_ic_AWADDR;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_AWREADY;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_AWVALID;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_BREADY;
  wire [1:0]m07_couplers_to_axi4_gpio_ic_BRESP;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_BVALID;
  wire [31:0]m07_couplers_to_axi4_gpio_ic_RDATA;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_RREADY;
  wire [1:0]m07_couplers_to_axi4_gpio_ic_RRESP;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_RVALID;
  wire [31:0]m07_couplers_to_axi4_gpio_ic_WDATA;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_WREADY;
  wire [3:0]m07_couplers_to_axi4_gpio_ic_WSTRB;
  wire [0:0]m07_couplers_to_axi4_gpio_ic_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [223:192]xbar_to_m06_couplers_ARADDR;
  wire [0:0]xbar_to_m06_couplers_ARREADY;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [223:192]xbar_to_m06_couplers_AWADDR;
  wire [0:0]xbar_to_m06_couplers_AWREADY;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire [0:0]xbar_to_m06_couplers_BVALID;
  wire [31:0]xbar_to_m06_couplers_RDATA;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire [0:0]xbar_to_m06_couplers_RVALID;
  wire [223:192]xbar_to_m06_couplers_WDATA;
  wire [0:0]xbar_to_m06_couplers_WREADY;
  wire [27:24]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [255:224]xbar_to_m07_couplers_ARADDR;
  wire [0:0]xbar_to_m07_couplers_ARREADY;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [255:224]xbar_to_m07_couplers_AWADDR;
  wire [0:0]xbar_to_m07_couplers_AWREADY;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire [0:0]xbar_to_m07_couplers_BVALID;
  wire [31:0]xbar_to_m07_couplers_RDATA;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire [0:0]xbar_to_m07_couplers_RVALID;
  wire [255:224]xbar_to_m07_couplers_WDATA;
  wire [0:0]xbar_to_m07_couplers_WREADY;
  wire [31:28]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi4_gpio_ic_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_axi4_gpio_ic_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi4_gpio_ic_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_axi4_gpio_ic_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_axi4_gpio_ic_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_axi4_gpio_ic_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_axi4_gpio_ic_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_axi4_gpio_ic_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_axi4_gpio_ic_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_axi4_gpio_ic_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_axi4_gpio_ic_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_axi4_gpio_ic_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_axi4_gpio_ic_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_axi4_gpio_ic_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_axi4_gpio_ic_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi4_gpio_ic_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi4_gpio_ic_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_axi4_gpio_ic_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_axi4_gpio_ic_ARADDR;
  assign M02_AXI_arvalid[0] = m02_couplers_to_axi4_gpio_ic_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_axi4_gpio_ic_AWADDR;
  assign M02_AXI_awvalid[0] = m02_couplers_to_axi4_gpio_ic_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_axi4_gpio_ic_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_axi4_gpio_ic_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi4_gpio_ic_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi4_gpio_ic_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_axi4_gpio_ic_WVALID;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_axi4_gpio_ic_ARADDR;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi4_gpio_ic_ARVALID;
  assign M03_AXI_awaddr[31:0] = m03_couplers_to_axi4_gpio_ic_AWADDR;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi4_gpio_ic_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi4_gpio_ic_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi4_gpio_ic_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_axi4_gpio_ic_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_axi4_gpio_ic_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi4_gpio_ic_WVALID;
  assign M04_AXI_araddr[31:0] = m04_couplers_to_axi4_gpio_ic_ARADDR;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi4_gpio_ic_ARVALID;
  assign M04_AXI_awaddr[31:0] = m04_couplers_to_axi4_gpio_ic_AWADDR;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi4_gpio_ic_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi4_gpio_ic_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi4_gpio_ic_RREADY;
  assign M04_AXI_wdata[31:0] = m04_couplers_to_axi4_gpio_ic_WDATA;
  assign M04_AXI_wstrb[3:0] = m04_couplers_to_axi4_gpio_ic_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi4_gpio_ic_WVALID;
  assign M05_AXI_araddr[31:0] = m05_couplers_to_axi4_gpio_ic_ARADDR;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi4_gpio_ic_ARVALID;
  assign M05_AXI_awaddr[31:0] = m05_couplers_to_axi4_gpio_ic_AWADDR;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi4_gpio_ic_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi4_gpio_ic_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi4_gpio_ic_RREADY;
  assign M05_AXI_wdata[31:0] = m05_couplers_to_axi4_gpio_ic_WDATA;
  assign M05_AXI_wstrb[3:0] = m05_couplers_to_axi4_gpio_ic_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi4_gpio_ic_WVALID;
  assign M06_AXI_araddr[31:0] = m06_couplers_to_axi4_gpio_ic_ARADDR;
  assign M06_AXI_arvalid[0] = m06_couplers_to_axi4_gpio_ic_ARVALID;
  assign M06_AXI_awaddr[31:0] = m06_couplers_to_axi4_gpio_ic_AWADDR;
  assign M06_AXI_awvalid[0] = m06_couplers_to_axi4_gpio_ic_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_axi4_gpio_ic_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_axi4_gpio_ic_RREADY;
  assign M06_AXI_wdata[31:0] = m06_couplers_to_axi4_gpio_ic_WDATA;
  assign M06_AXI_wstrb[3:0] = m06_couplers_to_axi4_gpio_ic_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_axi4_gpio_ic_WVALID;
  assign M07_AXI_araddr[31:0] = m07_couplers_to_axi4_gpio_ic_ARADDR;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi4_gpio_ic_ARVALID;
  assign M07_AXI_awaddr[31:0] = m07_couplers_to_axi4_gpio_ic_AWADDR;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi4_gpio_ic_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi4_gpio_ic_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi4_gpio_ic_RREADY;
  assign M07_AXI_wdata[31:0] = m07_couplers_to_axi4_gpio_ic_WDATA;
  assign M07_AXI_wstrb[3:0] = m07_couplers_to_axi4_gpio_ic_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi4_gpio_ic_WVALID;
  assign S00_AXI_arready[0] = axi4_gpio_ic_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = axi4_gpio_ic_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi4_gpio_ic_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = axi4_gpio_ic_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi4_gpio_ic_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = axi4_gpio_ic_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = axi4_gpio_ic_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = axi4_gpio_ic_to_s00_couplers_WREADY;
  assign axi4_gpio_ic_ACLK_net = ACLK;
  assign axi4_gpio_ic_ARESETN_net = ARESETN;
  assign axi4_gpio_ic_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi4_gpio_ic_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi4_gpio_ic_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign axi4_gpio_ic_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi4_gpio_ic_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi4_gpio_ic_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign axi4_gpio_ic_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign axi4_gpio_ic_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign axi4_gpio_ic_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi4_gpio_ic_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi4_gpio_ic_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  assign m00_couplers_to_axi4_gpio_ic_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_axi4_gpio_ic_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_axi4_gpio_ic_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi4_gpio_ic_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_axi4_gpio_ic_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_axi4_gpio_ic_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi4_gpio_ic_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_axi4_gpio_ic_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_axi4_gpio_ic_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_axi4_gpio_ic_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_axi4_gpio_ic_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi4_gpio_ic_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_axi4_gpio_ic_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi4_gpio_ic_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi4_gpio_ic_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_axi4_gpio_ic_WREADY = M01_AXI_wready[0];
  assign m02_couplers_to_axi4_gpio_ic_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_axi4_gpio_ic_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_axi4_gpio_ic_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi4_gpio_ic_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_axi4_gpio_ic_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi4_gpio_ic_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi4_gpio_ic_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_axi4_gpio_ic_WREADY = M02_AXI_wready[0];
  assign m03_couplers_to_axi4_gpio_ic_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi4_gpio_ic_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi4_gpio_ic_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi4_gpio_ic_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi4_gpio_ic_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_axi4_gpio_ic_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi4_gpio_ic_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi4_gpio_ic_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi4_gpio_ic_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi4_gpio_ic_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi4_gpio_ic_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi4_gpio_ic_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi4_gpio_ic_RDATA = M04_AXI_rdata[31:0];
  assign m04_couplers_to_axi4_gpio_ic_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi4_gpio_ic_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi4_gpio_ic_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi4_gpio_ic_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi4_gpio_ic_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi4_gpio_ic_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi4_gpio_ic_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi4_gpio_ic_RDATA = M05_AXI_rdata[31:0];
  assign m05_couplers_to_axi4_gpio_ic_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi4_gpio_ic_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi4_gpio_ic_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi4_gpio_ic_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_axi4_gpio_ic_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_axi4_gpio_ic_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi4_gpio_ic_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_axi4_gpio_ic_RDATA = M06_AXI_rdata[31:0];
  assign m06_couplers_to_axi4_gpio_ic_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi4_gpio_ic_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_axi4_gpio_ic_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_axi4_gpio_ic_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi4_gpio_ic_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi4_gpio_ic_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi4_gpio_ic_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi4_gpio_ic_RDATA = M07_AXI_rdata[31:0];
  assign m07_couplers_to_axi4_gpio_ic_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi4_gpio_ic_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi4_gpio_ic_WREADY = M07_AXI_wready[0];
  m00_couplers_imp_HED6HO m00_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m00_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m00_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m00_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m00_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1R0U4D5 m01_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m01_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m01_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_QC205Z m02_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m02_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m02_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_10HHV4I m03_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m03_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m03_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m03_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m03_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_1YHMF0Q m04_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m04_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m04_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m04_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m04_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m04_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m04_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m04_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_9VN0UN m05_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m05_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m05_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m05_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m05_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m05_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m05_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m05_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_17XDC5D m06_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m06_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m06_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m06_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m06_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m06_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m06_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m06_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_ISZ0P0 m07_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(m07_couplers_to_axi4_gpio_ic_ARADDR),
        .M_AXI_arready(m07_couplers_to_axi4_gpio_ic_ARREADY),
        .M_AXI_arvalid(m07_couplers_to_axi4_gpio_ic_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi4_gpio_ic_AWADDR),
        .M_AXI_awready(m07_couplers_to_axi4_gpio_ic_AWREADY),
        .M_AXI_awvalid(m07_couplers_to_axi4_gpio_ic_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi4_gpio_ic_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi4_gpio_ic_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi4_gpio_ic_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi4_gpio_ic_RDATA),
        .M_AXI_rready(m07_couplers_to_axi4_gpio_ic_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi4_gpio_ic_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi4_gpio_ic_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi4_gpio_ic_WDATA),
        .M_AXI_wready(m07_couplers_to_axi4_gpio_ic_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi4_gpio_ic_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi4_gpio_ic_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  s00_couplers_imp_162PUZQ s00_couplers
       (.M_ACLK(axi4_gpio_ic_ACLK_net),
        .M_ARESETN(axi4_gpio_ic_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi4_gpio_ic_ACLK_net),
        .S_ARESETN(axi4_gpio_ic_ARESETN_net),
        .S_AXI_araddr(axi4_gpio_ic_to_s00_couplers_ARADDR),
        .S_AXI_arprot(axi4_gpio_ic_to_s00_couplers_ARPROT),
        .S_AXI_arready(axi4_gpio_ic_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(axi4_gpio_ic_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi4_gpio_ic_to_s00_couplers_AWADDR),
        .S_AXI_awprot(axi4_gpio_ic_to_s00_couplers_AWPROT),
        .S_AXI_awready(axi4_gpio_ic_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(axi4_gpio_ic_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi4_gpio_ic_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi4_gpio_ic_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi4_gpio_ic_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi4_gpio_ic_to_s00_couplers_RDATA),
        .S_AXI_rready(axi4_gpio_ic_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi4_gpio_ic_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi4_gpio_ic_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi4_gpio_ic_to_s00_couplers_WDATA),
        .S_AXI_wready(axi4_gpio_ic_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi4_gpio_ic_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi4_gpio_ic_to_s00_couplers_WVALID));
  sim_xbar_1 xbar
       (.aclk(axi4_gpio_ic_ACLK_net),
        .aresetn(axi4_gpio_ic_ARESETN_net),
        .m_axi_araddr({xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module sim_mips_axi_ic_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [3:0]M00_AXI_arregion;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [3:0]M00_AXI_awregion;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire [31:0]m00_couplers_to_mips_axi_ic_ARADDR;
  wire [1:0]m00_couplers_to_mips_axi_ic_ARBURST;
  wire [3:0]m00_couplers_to_mips_axi_ic_ARCACHE;
  wire [7:0]m00_couplers_to_mips_axi_ic_ARLEN;
  wire [0:0]m00_couplers_to_mips_axi_ic_ARLOCK;
  wire [2:0]m00_couplers_to_mips_axi_ic_ARPROT;
  wire [3:0]m00_couplers_to_mips_axi_ic_ARQOS;
  wire m00_couplers_to_mips_axi_ic_ARREADY;
  wire [3:0]m00_couplers_to_mips_axi_ic_ARREGION;
  wire [2:0]m00_couplers_to_mips_axi_ic_ARSIZE;
  wire m00_couplers_to_mips_axi_ic_ARVALID;
  wire [31:0]m00_couplers_to_mips_axi_ic_AWADDR;
  wire [1:0]m00_couplers_to_mips_axi_ic_AWBURST;
  wire [3:0]m00_couplers_to_mips_axi_ic_AWCACHE;
  wire [7:0]m00_couplers_to_mips_axi_ic_AWLEN;
  wire [0:0]m00_couplers_to_mips_axi_ic_AWLOCK;
  wire [2:0]m00_couplers_to_mips_axi_ic_AWPROT;
  wire [3:0]m00_couplers_to_mips_axi_ic_AWQOS;
  wire m00_couplers_to_mips_axi_ic_AWREADY;
  wire [3:0]m00_couplers_to_mips_axi_ic_AWREGION;
  wire [2:0]m00_couplers_to_mips_axi_ic_AWSIZE;
  wire m00_couplers_to_mips_axi_ic_AWVALID;
  wire m00_couplers_to_mips_axi_ic_BREADY;
  wire [1:0]m00_couplers_to_mips_axi_ic_BRESP;
  wire m00_couplers_to_mips_axi_ic_BVALID;
  wire [31:0]m00_couplers_to_mips_axi_ic_RDATA;
  wire m00_couplers_to_mips_axi_ic_RLAST;
  wire m00_couplers_to_mips_axi_ic_RREADY;
  wire [1:0]m00_couplers_to_mips_axi_ic_RRESP;
  wire m00_couplers_to_mips_axi_ic_RVALID;
  wire [31:0]m00_couplers_to_mips_axi_ic_WDATA;
  wire m00_couplers_to_mips_axi_ic_WLAST;
  wire m00_couplers_to_mips_axi_ic_WREADY;
  wire [3:0]m00_couplers_to_mips_axi_ic_WSTRB;
  wire m00_couplers_to_mips_axi_ic_WVALID;
  wire [31:0]m01_couplers_to_mips_axi_ic_ARADDR;
  wire m01_couplers_to_mips_axi_ic_ARREADY;
  wire m01_couplers_to_mips_axi_ic_ARVALID;
  wire [31:0]m01_couplers_to_mips_axi_ic_AWADDR;
  wire m01_couplers_to_mips_axi_ic_AWREADY;
  wire m01_couplers_to_mips_axi_ic_AWVALID;
  wire m01_couplers_to_mips_axi_ic_BREADY;
  wire [1:0]m01_couplers_to_mips_axi_ic_BRESP;
  wire m01_couplers_to_mips_axi_ic_BVALID;
  wire [31:0]m01_couplers_to_mips_axi_ic_RDATA;
  wire m01_couplers_to_mips_axi_ic_RREADY;
  wire [1:0]m01_couplers_to_mips_axi_ic_RRESP;
  wire m01_couplers_to_mips_axi_ic_RVALID;
  wire [31:0]m01_couplers_to_mips_axi_ic_WDATA;
  wire m01_couplers_to_mips_axi_ic_WREADY;
  wire [3:0]m01_couplers_to_mips_axi_ic_WSTRB;
  wire m01_couplers_to_mips_axi_ic_WVALID;
  wire [31:0]m02_couplers_to_mips_axi_ic_ARADDR;
  wire [2:0]m02_couplers_to_mips_axi_ic_ARPROT;
  wire [0:0]m02_couplers_to_mips_axi_ic_ARREADY;
  wire [0:0]m02_couplers_to_mips_axi_ic_ARVALID;
  wire [31:0]m02_couplers_to_mips_axi_ic_AWADDR;
  wire [2:0]m02_couplers_to_mips_axi_ic_AWPROT;
  wire [0:0]m02_couplers_to_mips_axi_ic_AWREADY;
  wire [0:0]m02_couplers_to_mips_axi_ic_AWVALID;
  wire [0:0]m02_couplers_to_mips_axi_ic_BREADY;
  wire [1:0]m02_couplers_to_mips_axi_ic_BRESP;
  wire [0:0]m02_couplers_to_mips_axi_ic_BVALID;
  wire [31:0]m02_couplers_to_mips_axi_ic_RDATA;
  wire [0:0]m02_couplers_to_mips_axi_ic_RREADY;
  wire [1:0]m02_couplers_to_mips_axi_ic_RRESP;
  wire [0:0]m02_couplers_to_mips_axi_ic_RVALID;
  wire [31:0]m02_couplers_to_mips_axi_ic_WDATA;
  wire [0:0]m02_couplers_to_mips_axi_ic_WREADY;
  wire [3:0]m02_couplers_to_mips_axi_ic_WSTRB;
  wire [0:0]m02_couplers_to_mips_axi_ic_WVALID;
  wire mips_axi_ic_ACLK_net;
  wire mips_axi_ic_ARESETN_net;
  wire [31:0]mips_axi_ic_to_s00_couplers_ARADDR;
  wire [2:0]mips_axi_ic_to_s00_couplers_ARPROT;
  wire [0:0]mips_axi_ic_to_s00_couplers_ARREADY;
  wire [0:0]mips_axi_ic_to_s00_couplers_ARVALID;
  wire [31:0]mips_axi_ic_to_s00_couplers_AWADDR;
  wire [2:0]mips_axi_ic_to_s00_couplers_AWPROT;
  wire [0:0]mips_axi_ic_to_s00_couplers_AWREADY;
  wire [0:0]mips_axi_ic_to_s00_couplers_AWVALID;
  wire [0:0]mips_axi_ic_to_s00_couplers_BREADY;
  wire [1:0]mips_axi_ic_to_s00_couplers_BRESP;
  wire [0:0]mips_axi_ic_to_s00_couplers_BVALID;
  wire [31:0]mips_axi_ic_to_s00_couplers_RDATA;
  wire [0:0]mips_axi_ic_to_s00_couplers_RREADY;
  wire [1:0]mips_axi_ic_to_s00_couplers_RRESP;
  wire [0:0]mips_axi_ic_to_s00_couplers_RVALID;
  wire [31:0]mips_axi_ic_to_s00_couplers_WDATA;
  wire [0:0]mips_axi_ic_to_s00_couplers_WREADY;
  wire [3:0]mips_axi_ic_to_s00_couplers_WSTRB;
  wire [0:0]mips_axi_ic_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [8:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [8:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_mips_axi_ic_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_mips_axi_ic_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_mips_axi_ic_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_mips_axi_ic_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_mips_axi_ic_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_mips_axi_ic_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_mips_axi_ic_ARQOS;
  assign M00_AXI_arregion[3:0] = m00_couplers_to_mips_axi_ic_ARREGION;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_mips_axi_ic_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_mips_axi_ic_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_mips_axi_ic_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_mips_axi_ic_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_mips_axi_ic_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_mips_axi_ic_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_mips_axi_ic_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_mips_axi_ic_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_mips_axi_ic_AWQOS;
  assign M00_AXI_awregion[3:0] = m00_couplers_to_mips_axi_ic_AWREGION;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_mips_axi_ic_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_mips_axi_ic_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_mips_axi_ic_BREADY;
  assign M00_AXI_rready = m00_couplers_to_mips_axi_ic_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_mips_axi_ic_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_mips_axi_ic_WLAST;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_mips_axi_ic_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_mips_axi_ic_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_mips_axi_ic_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_mips_axi_ic_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_mips_axi_ic_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_mips_axi_ic_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_mips_axi_ic_BREADY;
  assign M01_AXI_rready = m01_couplers_to_mips_axi_ic_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_mips_axi_ic_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_mips_axi_ic_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_mips_axi_ic_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_mips_axi_ic_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_mips_axi_ic_ARPROT;
  assign M02_AXI_arvalid[0] = m02_couplers_to_mips_axi_ic_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_mips_axi_ic_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_mips_axi_ic_AWPROT;
  assign M02_AXI_awvalid[0] = m02_couplers_to_mips_axi_ic_AWVALID;
  assign M02_AXI_bready[0] = m02_couplers_to_mips_axi_ic_BREADY;
  assign M02_AXI_rready[0] = m02_couplers_to_mips_axi_ic_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_mips_axi_ic_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_mips_axi_ic_WSTRB;
  assign M02_AXI_wvalid[0] = m02_couplers_to_mips_axi_ic_WVALID;
  assign S00_AXI_arready[0] = mips_axi_ic_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = mips_axi_ic_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = mips_axi_ic_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = mips_axi_ic_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = mips_axi_ic_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = mips_axi_ic_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = mips_axi_ic_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = mips_axi_ic_to_s00_couplers_WREADY;
  assign m00_couplers_to_mips_axi_ic_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_mips_axi_ic_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_mips_axi_ic_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_mips_axi_ic_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_mips_axi_ic_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_mips_axi_ic_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_mips_axi_ic_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_mips_axi_ic_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_mips_axi_ic_WREADY = M00_AXI_wready;
  assign m01_couplers_to_mips_axi_ic_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_mips_axi_ic_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_mips_axi_ic_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_mips_axi_ic_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_mips_axi_ic_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_mips_axi_ic_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_mips_axi_ic_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_mips_axi_ic_WREADY = M01_AXI_wready;
  assign m02_couplers_to_mips_axi_ic_ARREADY = M02_AXI_arready[0];
  assign m02_couplers_to_mips_axi_ic_AWREADY = M02_AXI_awready[0];
  assign m02_couplers_to_mips_axi_ic_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_mips_axi_ic_BVALID = M02_AXI_bvalid[0];
  assign m02_couplers_to_mips_axi_ic_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_mips_axi_ic_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_mips_axi_ic_RVALID = M02_AXI_rvalid[0];
  assign m02_couplers_to_mips_axi_ic_WREADY = M02_AXI_wready[0];
  assign mips_axi_ic_ACLK_net = ACLK;
  assign mips_axi_ic_ARESETN_net = ARESETN;
  assign mips_axi_ic_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign mips_axi_ic_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign mips_axi_ic_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign mips_axi_ic_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign mips_axi_ic_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign mips_axi_ic_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign mips_axi_ic_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign mips_axi_ic_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign mips_axi_ic_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign mips_axi_ic_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign mips_axi_ic_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_1R6WPDP m00_couplers
       (.M_ACLK(mips_axi_ic_ACLK_net),
        .M_ARESETN(mips_axi_ic_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_mips_axi_ic_ARADDR),
        .M_AXI_arburst(m00_couplers_to_mips_axi_ic_ARBURST),
        .M_AXI_arcache(m00_couplers_to_mips_axi_ic_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_mips_axi_ic_ARLEN),
        .M_AXI_arlock(m00_couplers_to_mips_axi_ic_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_mips_axi_ic_ARPROT),
        .M_AXI_arqos(m00_couplers_to_mips_axi_ic_ARQOS),
        .M_AXI_arready(m00_couplers_to_mips_axi_ic_ARREADY),
        .M_AXI_arregion(m00_couplers_to_mips_axi_ic_ARREGION),
        .M_AXI_arsize(m00_couplers_to_mips_axi_ic_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_mips_axi_ic_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_mips_axi_ic_AWADDR),
        .M_AXI_awburst(m00_couplers_to_mips_axi_ic_AWBURST),
        .M_AXI_awcache(m00_couplers_to_mips_axi_ic_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_mips_axi_ic_AWLEN),
        .M_AXI_awlock(m00_couplers_to_mips_axi_ic_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_mips_axi_ic_AWPROT),
        .M_AXI_awqos(m00_couplers_to_mips_axi_ic_AWQOS),
        .M_AXI_awready(m00_couplers_to_mips_axi_ic_AWREADY),
        .M_AXI_awregion(m00_couplers_to_mips_axi_ic_AWREGION),
        .M_AXI_awsize(m00_couplers_to_mips_axi_ic_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_mips_axi_ic_AWVALID),
        .M_AXI_bready(m00_couplers_to_mips_axi_ic_BREADY),
        .M_AXI_bresp(m00_couplers_to_mips_axi_ic_BRESP),
        .M_AXI_bvalid(m00_couplers_to_mips_axi_ic_BVALID),
        .M_AXI_rdata(m00_couplers_to_mips_axi_ic_RDATA),
        .M_AXI_rlast(m00_couplers_to_mips_axi_ic_RLAST),
        .M_AXI_rready(m00_couplers_to_mips_axi_ic_RREADY),
        .M_AXI_rresp(m00_couplers_to_mips_axi_ic_RRESP),
        .M_AXI_rvalid(m00_couplers_to_mips_axi_ic_RVALID),
        .M_AXI_wdata(m00_couplers_to_mips_axi_ic_WDATA),
        .M_AXI_wlast(m00_couplers_to_mips_axi_ic_WLAST),
        .M_AXI_wready(m00_couplers_to_mips_axi_ic_WREADY),
        .M_AXI_wstrb(m00_couplers_to_mips_axi_ic_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_mips_axi_ic_WVALID),
        .S_ACLK(mips_axi_ic_ACLK_net),
        .S_ARESETN(mips_axi_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_H8XEK8 m01_couplers
       (.M_ACLK(mips_axi_ic_ACLK_net),
        .M_ARESETN(mips_axi_ic_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_mips_axi_ic_ARADDR),
        .M_AXI_arready(m01_couplers_to_mips_axi_ic_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_mips_axi_ic_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_mips_axi_ic_AWADDR),
        .M_AXI_awready(m01_couplers_to_mips_axi_ic_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_mips_axi_ic_AWVALID),
        .M_AXI_bready(m01_couplers_to_mips_axi_ic_BREADY),
        .M_AXI_bresp(m01_couplers_to_mips_axi_ic_BRESP),
        .M_AXI_bvalid(m01_couplers_to_mips_axi_ic_BVALID),
        .M_AXI_rdata(m01_couplers_to_mips_axi_ic_RDATA),
        .M_AXI_rready(m01_couplers_to_mips_axi_ic_RREADY),
        .M_AXI_rresp(m01_couplers_to_mips_axi_ic_RRESP),
        .M_AXI_rvalid(m01_couplers_to_mips_axi_ic_RVALID),
        .M_AXI_wdata(m01_couplers_to_mips_axi_ic_WDATA),
        .M_AXI_wready(m01_couplers_to_mips_axi_ic_WREADY),
        .M_AXI_wstrb(m01_couplers_to_mips_axi_ic_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_mips_axi_ic_WVALID),
        .S_ACLK(mips_axi_ic_ACLK_net),
        .S_ARESETN(mips_axi_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_10LEW52 m02_couplers
       (.M_ACLK(mips_axi_ic_ACLK_net),
        .M_ARESETN(mips_axi_ic_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_mips_axi_ic_ARADDR),
        .M_AXI_arprot(m02_couplers_to_mips_axi_ic_ARPROT),
        .M_AXI_arready(m02_couplers_to_mips_axi_ic_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_mips_axi_ic_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_mips_axi_ic_AWADDR),
        .M_AXI_awprot(m02_couplers_to_mips_axi_ic_AWPROT),
        .M_AXI_awready(m02_couplers_to_mips_axi_ic_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_mips_axi_ic_AWVALID),
        .M_AXI_bready(m02_couplers_to_mips_axi_ic_BREADY),
        .M_AXI_bresp(m02_couplers_to_mips_axi_ic_BRESP),
        .M_AXI_bvalid(m02_couplers_to_mips_axi_ic_BVALID),
        .M_AXI_rdata(m02_couplers_to_mips_axi_ic_RDATA),
        .M_AXI_rready(m02_couplers_to_mips_axi_ic_RREADY),
        .M_AXI_rresp(m02_couplers_to_mips_axi_ic_RRESP),
        .M_AXI_rvalid(m02_couplers_to_mips_axi_ic_RVALID),
        .M_AXI_wdata(m02_couplers_to_mips_axi_ic_WDATA),
        .M_AXI_wready(m02_couplers_to_mips_axi_ic_WREADY),
        .M_AXI_wstrb(m02_couplers_to_mips_axi_ic_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_mips_axi_ic_WVALID),
        .S_ACLK(mips_axi_ic_ACLK_net),
        .S_ARESETN(mips_axi_ic_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  s00_couplers_imp_KPZO07 s00_couplers
       (.M_ACLK(mips_axi_ic_ACLK_net),
        .M_ARESETN(mips_axi_ic_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(mips_axi_ic_ACLK_net),
        .S_ARESETN(mips_axi_ic_ARESETN_net),
        .S_AXI_araddr(mips_axi_ic_to_s00_couplers_ARADDR),
        .S_AXI_arprot(mips_axi_ic_to_s00_couplers_ARPROT),
        .S_AXI_arready(mips_axi_ic_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(mips_axi_ic_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(mips_axi_ic_to_s00_couplers_AWADDR),
        .S_AXI_awprot(mips_axi_ic_to_s00_couplers_AWPROT),
        .S_AXI_awready(mips_axi_ic_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(mips_axi_ic_to_s00_couplers_AWVALID),
        .S_AXI_bready(mips_axi_ic_to_s00_couplers_BREADY),
        .S_AXI_bresp(mips_axi_ic_to_s00_couplers_BRESP),
        .S_AXI_bvalid(mips_axi_ic_to_s00_couplers_BVALID),
        .S_AXI_rdata(mips_axi_ic_to_s00_couplers_RDATA),
        .S_AXI_rready(mips_axi_ic_to_s00_couplers_RREADY),
        .S_AXI_rresp(mips_axi_ic_to_s00_couplers_RRESP),
        .S_AXI_rvalid(mips_axi_ic_to_s00_couplers_RVALID),
        .S_AXI_wdata(mips_axi_ic_to_s00_couplers_WDATA),
        .S_AXI_wready(mips_axi_ic_to_s00_couplers_WREADY),
        .S_AXI_wstrb(mips_axi_ic_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(mips_axi_ic_to_s00_couplers_WVALID));
  sim_xbar_0 xbar
       (.aclk(mips_axi_ic_ACLK_net),
        .aresetn(mips_axi_ic_ARESETN_net),
        .m_axi_araddr({xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m02_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[5:3],xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[5:3],xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
