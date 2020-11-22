// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: inline:hls:convolve_fpga:1.1
// IP Revision: 2011082004

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
convolve_fpga_0 your_instance_name (
  .m_axi_gmem1_AWADDR(m_axi_gmem1_AWADDR),      // output wire [63 : 0] m_axi_gmem1_AWADDR
  .m_axi_gmem1_AWLEN(m_axi_gmem1_AWLEN),        // output wire [7 : 0] m_axi_gmem1_AWLEN
  .m_axi_gmem1_AWSIZE(m_axi_gmem1_AWSIZE),      // output wire [2 : 0] m_axi_gmem1_AWSIZE
  .m_axi_gmem1_AWBURST(m_axi_gmem1_AWBURST),    // output wire [1 : 0] m_axi_gmem1_AWBURST
  .m_axi_gmem1_AWLOCK(m_axi_gmem1_AWLOCK),      // output wire [1 : 0] m_axi_gmem1_AWLOCK
  .m_axi_gmem1_AWREGION(m_axi_gmem1_AWREGION),  // output wire [3 : 0] m_axi_gmem1_AWREGION
  .m_axi_gmem1_AWCACHE(m_axi_gmem1_AWCACHE),    // output wire [3 : 0] m_axi_gmem1_AWCACHE
  .m_axi_gmem1_AWPROT(m_axi_gmem1_AWPROT),      // output wire [2 : 0] m_axi_gmem1_AWPROT
  .m_axi_gmem1_AWQOS(m_axi_gmem1_AWQOS),        // output wire [3 : 0] m_axi_gmem1_AWQOS
  .m_axi_gmem1_AWVALID(m_axi_gmem1_AWVALID),    // output wire m_axi_gmem1_AWVALID
  .m_axi_gmem1_AWREADY(m_axi_gmem1_AWREADY),    // input wire m_axi_gmem1_AWREADY
  .m_axi_gmem1_WDATA(m_axi_gmem1_WDATA),        // output wire [31 : 0] m_axi_gmem1_WDATA
  .m_axi_gmem1_WSTRB(m_axi_gmem1_WSTRB),        // output wire [3 : 0] m_axi_gmem1_WSTRB
  .m_axi_gmem1_WLAST(m_axi_gmem1_WLAST),        // output wire m_axi_gmem1_WLAST
  .m_axi_gmem1_WVALID(m_axi_gmem1_WVALID),      // output wire m_axi_gmem1_WVALID
  .m_axi_gmem1_WREADY(m_axi_gmem1_WREADY),      // input wire m_axi_gmem1_WREADY
  .m_axi_gmem1_BRESP(m_axi_gmem1_BRESP),        // input wire [1 : 0] m_axi_gmem1_BRESP
  .m_axi_gmem1_BVALID(m_axi_gmem1_BVALID),      // input wire m_axi_gmem1_BVALID
  .m_axi_gmem1_BREADY(m_axi_gmem1_BREADY),      // output wire m_axi_gmem1_BREADY
  .m_axi_gmem1_ARADDR(m_axi_gmem1_ARADDR),      // output wire [63 : 0] m_axi_gmem1_ARADDR
  .m_axi_gmem1_ARLEN(m_axi_gmem1_ARLEN),        // output wire [7 : 0] m_axi_gmem1_ARLEN
  .m_axi_gmem1_ARSIZE(m_axi_gmem1_ARSIZE),      // output wire [2 : 0] m_axi_gmem1_ARSIZE
  .m_axi_gmem1_ARBURST(m_axi_gmem1_ARBURST),    // output wire [1 : 0] m_axi_gmem1_ARBURST
  .m_axi_gmem1_ARLOCK(m_axi_gmem1_ARLOCK),      // output wire [1 : 0] m_axi_gmem1_ARLOCK
  .m_axi_gmem1_ARREGION(m_axi_gmem1_ARREGION),  // output wire [3 : 0] m_axi_gmem1_ARREGION
  .m_axi_gmem1_ARCACHE(m_axi_gmem1_ARCACHE),    // output wire [3 : 0] m_axi_gmem1_ARCACHE
  .m_axi_gmem1_ARPROT(m_axi_gmem1_ARPROT),      // output wire [2 : 0] m_axi_gmem1_ARPROT
  .m_axi_gmem1_ARQOS(m_axi_gmem1_ARQOS),        // output wire [3 : 0] m_axi_gmem1_ARQOS
  .m_axi_gmem1_ARVALID(m_axi_gmem1_ARVALID),    // output wire m_axi_gmem1_ARVALID
  .m_axi_gmem1_ARREADY(m_axi_gmem1_ARREADY),    // input wire m_axi_gmem1_ARREADY
  .m_axi_gmem1_RDATA(m_axi_gmem1_RDATA),        // input wire [31 : 0] m_axi_gmem1_RDATA
  .m_axi_gmem1_RRESP(m_axi_gmem1_RRESP),        // input wire [1 : 0] m_axi_gmem1_RRESP
  .m_axi_gmem1_RLAST(m_axi_gmem1_RLAST),        // input wire m_axi_gmem1_RLAST
  .m_axi_gmem1_RVALID(m_axi_gmem1_RVALID),      // input wire m_axi_gmem1_RVALID
  .m_axi_gmem1_RREADY(m_axi_gmem1_RREADY),      // output wire m_axi_gmem1_RREADY
  .ap_clk(ap_clk),                              // input wire ap_clk
  .ap_rst_n(ap_rst_n),                          // input wire ap_rst_n
  .ap_start(ap_start),                          // input wire ap_start
  .ap_done(ap_done),                            // output wire ap_done
  .ap_ready(ap_ready),                          // output wire ap_ready
  .ap_idle(ap_idle),                            // output wire ap_idle
  .m_axi_gmem2_AWADDR(m_axi_gmem2_AWADDR),      // output wire [63 : 0] m_axi_gmem2_AWADDR
  .m_axi_gmem2_AWLEN(m_axi_gmem2_AWLEN),        // output wire [7 : 0] m_axi_gmem2_AWLEN
  .m_axi_gmem2_AWSIZE(m_axi_gmem2_AWSIZE),      // output wire [2 : 0] m_axi_gmem2_AWSIZE
  .m_axi_gmem2_AWBURST(m_axi_gmem2_AWBURST),    // output wire [1 : 0] m_axi_gmem2_AWBURST
  .m_axi_gmem2_AWLOCK(m_axi_gmem2_AWLOCK),      // output wire [1 : 0] m_axi_gmem2_AWLOCK
  .m_axi_gmem2_AWREGION(m_axi_gmem2_AWREGION),  // output wire [3 : 0] m_axi_gmem2_AWREGION
  .m_axi_gmem2_AWCACHE(m_axi_gmem2_AWCACHE),    // output wire [3 : 0] m_axi_gmem2_AWCACHE
  .m_axi_gmem2_AWPROT(m_axi_gmem2_AWPROT),      // output wire [2 : 0] m_axi_gmem2_AWPROT
  .m_axi_gmem2_AWQOS(m_axi_gmem2_AWQOS),        // output wire [3 : 0] m_axi_gmem2_AWQOS
  .m_axi_gmem2_AWVALID(m_axi_gmem2_AWVALID),    // output wire m_axi_gmem2_AWVALID
  .m_axi_gmem2_AWREADY(m_axi_gmem2_AWREADY),    // input wire m_axi_gmem2_AWREADY
  .m_axi_gmem2_WDATA(m_axi_gmem2_WDATA),        // output wire [31 : 0] m_axi_gmem2_WDATA
  .m_axi_gmem2_WSTRB(m_axi_gmem2_WSTRB),        // output wire [3 : 0] m_axi_gmem2_WSTRB
  .m_axi_gmem2_WLAST(m_axi_gmem2_WLAST),        // output wire m_axi_gmem2_WLAST
  .m_axi_gmem2_WVALID(m_axi_gmem2_WVALID),      // output wire m_axi_gmem2_WVALID
  .m_axi_gmem2_WREADY(m_axi_gmem2_WREADY),      // input wire m_axi_gmem2_WREADY
  .m_axi_gmem2_BRESP(m_axi_gmem2_BRESP),        // input wire [1 : 0] m_axi_gmem2_BRESP
  .m_axi_gmem2_BVALID(m_axi_gmem2_BVALID),      // input wire m_axi_gmem2_BVALID
  .m_axi_gmem2_BREADY(m_axi_gmem2_BREADY),      // output wire m_axi_gmem2_BREADY
  .m_axi_gmem2_ARADDR(m_axi_gmem2_ARADDR),      // output wire [63 : 0] m_axi_gmem2_ARADDR
  .m_axi_gmem2_ARLEN(m_axi_gmem2_ARLEN),        // output wire [7 : 0] m_axi_gmem2_ARLEN
  .m_axi_gmem2_ARSIZE(m_axi_gmem2_ARSIZE),      // output wire [2 : 0] m_axi_gmem2_ARSIZE
  .m_axi_gmem2_ARBURST(m_axi_gmem2_ARBURST),    // output wire [1 : 0] m_axi_gmem2_ARBURST
  .m_axi_gmem2_ARLOCK(m_axi_gmem2_ARLOCK),      // output wire [1 : 0] m_axi_gmem2_ARLOCK
  .m_axi_gmem2_ARREGION(m_axi_gmem2_ARREGION),  // output wire [3 : 0] m_axi_gmem2_ARREGION
  .m_axi_gmem2_ARCACHE(m_axi_gmem2_ARCACHE),    // output wire [3 : 0] m_axi_gmem2_ARCACHE
  .m_axi_gmem2_ARPROT(m_axi_gmem2_ARPROT),      // output wire [2 : 0] m_axi_gmem2_ARPROT
  .m_axi_gmem2_ARQOS(m_axi_gmem2_ARQOS),        // output wire [3 : 0] m_axi_gmem2_ARQOS
  .m_axi_gmem2_ARVALID(m_axi_gmem2_ARVALID),    // output wire m_axi_gmem2_ARVALID
  .m_axi_gmem2_ARREADY(m_axi_gmem2_ARREADY),    // input wire m_axi_gmem2_ARREADY
  .m_axi_gmem2_RDATA(m_axi_gmem2_RDATA),        // input wire [31 : 0] m_axi_gmem2_RDATA
  .m_axi_gmem2_RRESP(m_axi_gmem2_RRESP),        // input wire [1 : 0] m_axi_gmem2_RRESP
  .m_axi_gmem2_RLAST(m_axi_gmem2_RLAST),        // input wire m_axi_gmem2_RLAST
  .m_axi_gmem2_RVALID(m_axi_gmem2_RVALID),      // input wire m_axi_gmem2_RVALID
  .m_axi_gmem2_RREADY(m_axi_gmem2_RREADY),      // output wire m_axi_gmem2_RREADY
  .m_axi_gmem3_AWADDR(m_axi_gmem3_AWADDR),      // output wire [63 : 0] m_axi_gmem3_AWADDR
  .m_axi_gmem3_AWLEN(m_axi_gmem3_AWLEN),        // output wire [7 : 0] m_axi_gmem3_AWLEN
  .m_axi_gmem3_AWSIZE(m_axi_gmem3_AWSIZE),      // output wire [2 : 0] m_axi_gmem3_AWSIZE
  .m_axi_gmem3_AWBURST(m_axi_gmem3_AWBURST),    // output wire [1 : 0] m_axi_gmem3_AWBURST
  .m_axi_gmem3_AWLOCK(m_axi_gmem3_AWLOCK),      // output wire [1 : 0] m_axi_gmem3_AWLOCK
  .m_axi_gmem3_AWREGION(m_axi_gmem3_AWREGION),  // output wire [3 : 0] m_axi_gmem3_AWREGION
  .m_axi_gmem3_AWCACHE(m_axi_gmem3_AWCACHE),    // output wire [3 : 0] m_axi_gmem3_AWCACHE
  .m_axi_gmem3_AWPROT(m_axi_gmem3_AWPROT),      // output wire [2 : 0] m_axi_gmem3_AWPROT
  .m_axi_gmem3_AWQOS(m_axi_gmem3_AWQOS),        // output wire [3 : 0] m_axi_gmem3_AWQOS
  .m_axi_gmem3_AWVALID(m_axi_gmem3_AWVALID),    // output wire m_axi_gmem3_AWVALID
  .m_axi_gmem3_AWREADY(m_axi_gmem3_AWREADY),    // input wire m_axi_gmem3_AWREADY
  .m_axi_gmem3_WDATA(m_axi_gmem3_WDATA),        // output wire [31 : 0] m_axi_gmem3_WDATA
  .m_axi_gmem3_WSTRB(m_axi_gmem3_WSTRB),        // output wire [3 : 0] m_axi_gmem3_WSTRB
  .m_axi_gmem3_WLAST(m_axi_gmem3_WLAST),        // output wire m_axi_gmem3_WLAST
  .m_axi_gmem3_WVALID(m_axi_gmem3_WVALID),      // output wire m_axi_gmem3_WVALID
  .m_axi_gmem3_WREADY(m_axi_gmem3_WREADY),      // input wire m_axi_gmem3_WREADY
  .m_axi_gmem3_BRESP(m_axi_gmem3_BRESP),        // input wire [1 : 0] m_axi_gmem3_BRESP
  .m_axi_gmem3_BVALID(m_axi_gmem3_BVALID),      // input wire m_axi_gmem3_BVALID
  .m_axi_gmem3_BREADY(m_axi_gmem3_BREADY),      // output wire m_axi_gmem3_BREADY
  .m_axi_gmem3_ARADDR(m_axi_gmem3_ARADDR),      // output wire [63 : 0] m_axi_gmem3_ARADDR
  .m_axi_gmem3_ARLEN(m_axi_gmem3_ARLEN),        // output wire [7 : 0] m_axi_gmem3_ARLEN
  .m_axi_gmem3_ARSIZE(m_axi_gmem3_ARSIZE),      // output wire [2 : 0] m_axi_gmem3_ARSIZE
  .m_axi_gmem3_ARBURST(m_axi_gmem3_ARBURST),    // output wire [1 : 0] m_axi_gmem3_ARBURST
  .m_axi_gmem3_ARLOCK(m_axi_gmem3_ARLOCK),      // output wire [1 : 0] m_axi_gmem3_ARLOCK
  .m_axi_gmem3_ARREGION(m_axi_gmem3_ARREGION),  // output wire [3 : 0] m_axi_gmem3_ARREGION
  .m_axi_gmem3_ARCACHE(m_axi_gmem3_ARCACHE),    // output wire [3 : 0] m_axi_gmem3_ARCACHE
  .m_axi_gmem3_ARPROT(m_axi_gmem3_ARPROT),      // output wire [2 : 0] m_axi_gmem3_ARPROT
  .m_axi_gmem3_ARQOS(m_axi_gmem3_ARQOS),        // output wire [3 : 0] m_axi_gmem3_ARQOS
  .m_axi_gmem3_ARVALID(m_axi_gmem3_ARVALID),    // output wire m_axi_gmem3_ARVALID
  .m_axi_gmem3_ARREADY(m_axi_gmem3_ARREADY),    // input wire m_axi_gmem3_ARREADY
  .m_axi_gmem3_RDATA(m_axi_gmem3_RDATA),        // input wire [31 : 0] m_axi_gmem3_RDATA
  .m_axi_gmem3_RRESP(m_axi_gmem3_RRESP),        // input wire [1 : 0] m_axi_gmem3_RRESP
  .m_axi_gmem3_RLAST(m_axi_gmem3_RLAST),        // input wire m_axi_gmem3_RLAST
  .m_axi_gmem3_RVALID(m_axi_gmem3_RVALID),      // input wire m_axi_gmem3_RVALID
  .m_axi_gmem3_RREADY(m_axi_gmem3_RREADY),      // output wire m_axi_gmem3_RREADY
  .inFrame(inFrame),                            // input wire [63 : 0] inFrame
  .outFrame(outFrame),                          // input wire [63 : 0] outFrame
  .coefficient(coefficient),                    // input wire [63 : 0] coefficient
  .coefficient_size(coefficient_size),          // input wire [31 : 0] coefficient_size
  .img_width(img_width),                        // input wire [31 : 0] img_width
  .img_height(img_height)                      // input wire [31 : 0] img_height
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

