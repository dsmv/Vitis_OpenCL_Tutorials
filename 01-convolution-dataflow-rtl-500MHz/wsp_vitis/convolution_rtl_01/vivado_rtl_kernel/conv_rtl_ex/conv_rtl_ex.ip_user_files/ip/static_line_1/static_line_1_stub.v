// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 06:17:20 2020
// Host        : dsp55 running 64-bit CentOS Linux release 7.6.1810 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /xprj/vitis/wsp_01/convolution_rtl_01/vivado_rtl_kernel/conv_rtl_ex/imports/ip_core/static_line_1/static_line_1_stub.v
// Design      : static_line_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "static_line,Vivado 2020.1" *)
module static_line_1(data_i, data_o, clk)
/* synthesis syn_black_box black_box_pad_pin="data_i[0:0],data_o[0:0],clk" */;
  input [0:0]data_i;
  output [0:0]data_o;
  input clk;
endmodule
