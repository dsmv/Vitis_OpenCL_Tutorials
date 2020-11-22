// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 06:18:55 2020
// Host        : dsp55 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /xprj/vitis/wsp_01/convolution_rtl_01/vivado_rtl_kernel/conv_rtl_ex/imports/ip_core/convolve_fpga_0/convolve_fpga_0_stub.v
// Design      : convolve_fpga_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "convolve_fpga,Vivado 2020.1" *)
module convolve_fpga_0(m_axi_gmem1_AWADDR, m_axi_gmem1_AWLEN, 
  m_axi_gmem1_AWSIZE, m_axi_gmem1_AWBURST, m_axi_gmem1_AWLOCK, m_axi_gmem1_AWREGION, 
  m_axi_gmem1_AWCACHE, m_axi_gmem1_AWPROT, m_axi_gmem1_AWQOS, m_axi_gmem1_AWVALID, 
  m_axi_gmem1_AWREADY, m_axi_gmem1_WDATA, m_axi_gmem1_WSTRB, m_axi_gmem1_WLAST, 
  m_axi_gmem1_WVALID, m_axi_gmem1_WREADY, m_axi_gmem1_BRESP, m_axi_gmem1_BVALID, 
  m_axi_gmem1_BREADY, m_axi_gmem1_ARADDR, m_axi_gmem1_ARLEN, m_axi_gmem1_ARSIZE, 
  m_axi_gmem1_ARBURST, m_axi_gmem1_ARLOCK, m_axi_gmem1_ARREGION, m_axi_gmem1_ARCACHE, 
  m_axi_gmem1_ARPROT, m_axi_gmem1_ARQOS, m_axi_gmem1_ARVALID, m_axi_gmem1_ARREADY, 
  m_axi_gmem1_RDATA, m_axi_gmem1_RRESP, m_axi_gmem1_RLAST, m_axi_gmem1_RVALID, 
  m_axi_gmem1_RREADY, ap_clk, ap_rst_n, ap_start, ap_done, ap_ready, ap_idle, m_axi_gmem2_AWADDR, 
  m_axi_gmem2_AWLEN, m_axi_gmem2_AWSIZE, m_axi_gmem2_AWBURST, m_axi_gmem2_AWLOCK, 
  m_axi_gmem2_AWREGION, m_axi_gmem2_AWCACHE, m_axi_gmem2_AWPROT, m_axi_gmem2_AWQOS, 
  m_axi_gmem2_AWVALID, m_axi_gmem2_AWREADY, m_axi_gmem2_WDATA, m_axi_gmem2_WSTRB, 
  m_axi_gmem2_WLAST, m_axi_gmem2_WVALID, m_axi_gmem2_WREADY, m_axi_gmem2_BRESP, 
  m_axi_gmem2_BVALID, m_axi_gmem2_BREADY, m_axi_gmem2_ARADDR, m_axi_gmem2_ARLEN, 
  m_axi_gmem2_ARSIZE, m_axi_gmem2_ARBURST, m_axi_gmem2_ARLOCK, m_axi_gmem2_ARREGION, 
  m_axi_gmem2_ARCACHE, m_axi_gmem2_ARPROT, m_axi_gmem2_ARQOS, m_axi_gmem2_ARVALID, 
  m_axi_gmem2_ARREADY, m_axi_gmem2_RDATA, m_axi_gmem2_RRESP, m_axi_gmem2_RLAST, 
  m_axi_gmem2_RVALID, m_axi_gmem2_RREADY, m_axi_gmem3_AWADDR, m_axi_gmem3_AWLEN, 
  m_axi_gmem3_AWSIZE, m_axi_gmem3_AWBURST, m_axi_gmem3_AWLOCK, m_axi_gmem3_AWREGION, 
  m_axi_gmem3_AWCACHE, m_axi_gmem3_AWPROT, m_axi_gmem3_AWQOS, m_axi_gmem3_AWVALID, 
  m_axi_gmem3_AWREADY, m_axi_gmem3_WDATA, m_axi_gmem3_WSTRB, m_axi_gmem3_WLAST, 
  m_axi_gmem3_WVALID, m_axi_gmem3_WREADY, m_axi_gmem3_BRESP, m_axi_gmem3_BVALID, 
  m_axi_gmem3_BREADY, m_axi_gmem3_ARADDR, m_axi_gmem3_ARLEN, m_axi_gmem3_ARSIZE, 
  m_axi_gmem3_ARBURST, m_axi_gmem3_ARLOCK, m_axi_gmem3_ARREGION, m_axi_gmem3_ARCACHE, 
  m_axi_gmem3_ARPROT, m_axi_gmem3_ARQOS, m_axi_gmem3_ARVALID, m_axi_gmem3_ARREADY, 
  m_axi_gmem3_RDATA, m_axi_gmem3_RRESP, m_axi_gmem3_RLAST, m_axi_gmem3_RVALID, 
  m_axi_gmem3_RREADY, inFrame, outFrame, coefficient, coefficient_size, img_width, img_height)
/* synthesis syn_black_box black_box_pad_pin="m_axi_gmem1_AWADDR[63:0],m_axi_gmem1_AWLEN[7:0],m_axi_gmem1_AWSIZE[2:0],m_axi_gmem1_AWBURST[1:0],m_axi_gmem1_AWLOCK[1:0],m_axi_gmem1_AWREGION[3:0],m_axi_gmem1_AWCACHE[3:0],m_axi_gmem1_AWPROT[2:0],m_axi_gmem1_AWQOS[3:0],m_axi_gmem1_AWVALID,m_axi_gmem1_AWREADY,m_axi_gmem1_WDATA[31:0],m_axi_gmem1_WSTRB[3:0],m_axi_gmem1_WLAST,m_axi_gmem1_WVALID,m_axi_gmem1_WREADY,m_axi_gmem1_BRESP[1:0],m_axi_gmem1_BVALID,m_axi_gmem1_BREADY,m_axi_gmem1_ARADDR[63:0],m_axi_gmem1_ARLEN[7:0],m_axi_gmem1_ARSIZE[2:0],m_axi_gmem1_ARBURST[1:0],m_axi_gmem1_ARLOCK[1:0],m_axi_gmem1_ARREGION[3:0],m_axi_gmem1_ARCACHE[3:0],m_axi_gmem1_ARPROT[2:0],m_axi_gmem1_ARQOS[3:0],m_axi_gmem1_ARVALID,m_axi_gmem1_ARREADY,m_axi_gmem1_RDATA[31:0],m_axi_gmem1_RRESP[1:0],m_axi_gmem1_RLAST,m_axi_gmem1_RVALID,m_axi_gmem1_RREADY,ap_clk,ap_rst_n,ap_start,ap_done,ap_ready,ap_idle,m_axi_gmem2_AWADDR[63:0],m_axi_gmem2_AWLEN[7:0],m_axi_gmem2_AWSIZE[2:0],m_axi_gmem2_AWBURST[1:0],m_axi_gmem2_AWLOCK[1:0],m_axi_gmem2_AWREGION[3:0],m_axi_gmem2_AWCACHE[3:0],m_axi_gmem2_AWPROT[2:0],m_axi_gmem2_AWQOS[3:0],m_axi_gmem2_AWVALID,m_axi_gmem2_AWREADY,m_axi_gmem2_WDATA[31:0],m_axi_gmem2_WSTRB[3:0],m_axi_gmem2_WLAST,m_axi_gmem2_WVALID,m_axi_gmem2_WREADY,m_axi_gmem2_BRESP[1:0],m_axi_gmem2_BVALID,m_axi_gmem2_BREADY,m_axi_gmem2_ARADDR[63:0],m_axi_gmem2_ARLEN[7:0],m_axi_gmem2_ARSIZE[2:0],m_axi_gmem2_ARBURST[1:0],m_axi_gmem2_ARLOCK[1:0],m_axi_gmem2_ARREGION[3:0],m_axi_gmem2_ARCACHE[3:0],m_axi_gmem2_ARPROT[2:0],m_axi_gmem2_ARQOS[3:0],m_axi_gmem2_ARVALID,m_axi_gmem2_ARREADY,m_axi_gmem2_RDATA[31:0],m_axi_gmem2_RRESP[1:0],m_axi_gmem2_RLAST,m_axi_gmem2_RVALID,m_axi_gmem2_RREADY,m_axi_gmem3_AWADDR[63:0],m_axi_gmem3_AWLEN[7:0],m_axi_gmem3_AWSIZE[2:0],m_axi_gmem3_AWBURST[1:0],m_axi_gmem3_AWLOCK[1:0],m_axi_gmem3_AWREGION[3:0],m_axi_gmem3_AWCACHE[3:0],m_axi_gmem3_AWPROT[2:0],m_axi_gmem3_AWQOS[3:0],m_axi_gmem3_AWVALID,m_axi_gmem3_AWREADY,m_axi_gmem3_WDATA[31:0],m_axi_gmem3_WSTRB[3:0],m_axi_gmem3_WLAST,m_axi_gmem3_WVALID,m_axi_gmem3_WREADY,m_axi_gmem3_BRESP[1:0],m_axi_gmem3_BVALID,m_axi_gmem3_BREADY,m_axi_gmem3_ARADDR[63:0],m_axi_gmem3_ARLEN[7:0],m_axi_gmem3_ARSIZE[2:0],m_axi_gmem3_ARBURST[1:0],m_axi_gmem3_ARLOCK[1:0],m_axi_gmem3_ARREGION[3:0],m_axi_gmem3_ARCACHE[3:0],m_axi_gmem3_ARPROT[2:0],m_axi_gmem3_ARQOS[3:0],m_axi_gmem3_ARVALID,m_axi_gmem3_ARREADY,m_axi_gmem3_RDATA[31:0],m_axi_gmem3_RRESP[1:0],m_axi_gmem3_RLAST,m_axi_gmem3_RVALID,m_axi_gmem3_RREADY,inFrame[63:0],outFrame[63:0],coefficient[63:0],coefficient_size[31:0],img_width[31:0],img_height[31:0]" */;
  output [63:0]m_axi_gmem1_AWADDR;
  output [7:0]m_axi_gmem1_AWLEN;
  output [2:0]m_axi_gmem1_AWSIZE;
  output [1:0]m_axi_gmem1_AWBURST;
  output [1:0]m_axi_gmem1_AWLOCK;
  output [3:0]m_axi_gmem1_AWREGION;
  output [3:0]m_axi_gmem1_AWCACHE;
  output [2:0]m_axi_gmem1_AWPROT;
  output [3:0]m_axi_gmem1_AWQOS;
  output m_axi_gmem1_AWVALID;
  input m_axi_gmem1_AWREADY;
  output [31:0]m_axi_gmem1_WDATA;
  output [3:0]m_axi_gmem1_WSTRB;
  output m_axi_gmem1_WLAST;
  output m_axi_gmem1_WVALID;
  input m_axi_gmem1_WREADY;
  input [1:0]m_axi_gmem1_BRESP;
  input m_axi_gmem1_BVALID;
  output m_axi_gmem1_BREADY;
  output [63:0]m_axi_gmem1_ARADDR;
  output [7:0]m_axi_gmem1_ARLEN;
  output [2:0]m_axi_gmem1_ARSIZE;
  output [1:0]m_axi_gmem1_ARBURST;
  output [1:0]m_axi_gmem1_ARLOCK;
  output [3:0]m_axi_gmem1_ARREGION;
  output [3:0]m_axi_gmem1_ARCACHE;
  output [2:0]m_axi_gmem1_ARPROT;
  output [3:0]m_axi_gmem1_ARQOS;
  output m_axi_gmem1_ARVALID;
  input m_axi_gmem1_ARREADY;
  input [31:0]m_axi_gmem1_RDATA;
  input [1:0]m_axi_gmem1_RRESP;
  input m_axi_gmem1_RLAST;
  input m_axi_gmem1_RVALID;
  output m_axi_gmem1_RREADY;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_ready;
  output ap_idle;
  output [63:0]m_axi_gmem2_AWADDR;
  output [7:0]m_axi_gmem2_AWLEN;
  output [2:0]m_axi_gmem2_AWSIZE;
  output [1:0]m_axi_gmem2_AWBURST;
  output [1:0]m_axi_gmem2_AWLOCK;
  output [3:0]m_axi_gmem2_AWREGION;
  output [3:0]m_axi_gmem2_AWCACHE;
  output [2:0]m_axi_gmem2_AWPROT;
  output [3:0]m_axi_gmem2_AWQOS;
  output m_axi_gmem2_AWVALID;
  input m_axi_gmem2_AWREADY;
  output [31:0]m_axi_gmem2_WDATA;
  output [3:0]m_axi_gmem2_WSTRB;
  output m_axi_gmem2_WLAST;
  output m_axi_gmem2_WVALID;
  input m_axi_gmem2_WREADY;
  input [1:0]m_axi_gmem2_BRESP;
  input m_axi_gmem2_BVALID;
  output m_axi_gmem2_BREADY;
  output [63:0]m_axi_gmem2_ARADDR;
  output [7:0]m_axi_gmem2_ARLEN;
  output [2:0]m_axi_gmem2_ARSIZE;
  output [1:0]m_axi_gmem2_ARBURST;
  output [1:0]m_axi_gmem2_ARLOCK;
  output [3:0]m_axi_gmem2_ARREGION;
  output [3:0]m_axi_gmem2_ARCACHE;
  output [2:0]m_axi_gmem2_ARPROT;
  output [3:0]m_axi_gmem2_ARQOS;
  output m_axi_gmem2_ARVALID;
  input m_axi_gmem2_ARREADY;
  input [31:0]m_axi_gmem2_RDATA;
  input [1:0]m_axi_gmem2_RRESP;
  input m_axi_gmem2_RLAST;
  input m_axi_gmem2_RVALID;
  output m_axi_gmem2_RREADY;
  output [63:0]m_axi_gmem3_AWADDR;
  output [7:0]m_axi_gmem3_AWLEN;
  output [2:0]m_axi_gmem3_AWSIZE;
  output [1:0]m_axi_gmem3_AWBURST;
  output [1:0]m_axi_gmem3_AWLOCK;
  output [3:0]m_axi_gmem3_AWREGION;
  output [3:0]m_axi_gmem3_AWCACHE;
  output [2:0]m_axi_gmem3_AWPROT;
  output [3:0]m_axi_gmem3_AWQOS;
  output m_axi_gmem3_AWVALID;
  input m_axi_gmem3_AWREADY;
  output [31:0]m_axi_gmem3_WDATA;
  output [3:0]m_axi_gmem3_WSTRB;
  output m_axi_gmem3_WLAST;
  output m_axi_gmem3_WVALID;
  input m_axi_gmem3_WREADY;
  input [1:0]m_axi_gmem3_BRESP;
  input m_axi_gmem3_BVALID;
  output m_axi_gmem3_BREADY;
  output [63:0]m_axi_gmem3_ARADDR;
  output [7:0]m_axi_gmem3_ARLEN;
  output [2:0]m_axi_gmem3_ARSIZE;
  output [1:0]m_axi_gmem3_ARBURST;
  output [1:0]m_axi_gmem3_ARLOCK;
  output [3:0]m_axi_gmem3_ARREGION;
  output [3:0]m_axi_gmem3_ARCACHE;
  output [2:0]m_axi_gmem3_ARPROT;
  output [3:0]m_axi_gmem3_ARQOS;
  output m_axi_gmem3_ARVALID;
  input m_axi_gmem3_ARREADY;
  input [31:0]m_axi_gmem3_RDATA;
  input [1:0]m_axi_gmem3_RRESP;
  input m_axi_gmem3_RLAST;
  input m_axi_gmem3_RVALID;
  output m_axi_gmem3_RREADY;
  input [63:0]inFrame;
  input [63:0]outFrame;
  input [63:0]coefficient;
  input [31:0]coefficient_size;
  input [31:0]img_width;
  input [31:0]img_height;
endmodule
