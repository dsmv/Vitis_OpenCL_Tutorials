############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project conv_01
set_top convolve_fpga
add_files conv_01/src/types.h
add_files conv_01/src/kernels.h
add_files conv_01/src/filters.h
add_files conv_01/src/convolve_fpga.cpp
add_files conv_01/src/constants.h
open_solution "solution1" -flow_target vivado
set_part {xcu200-fsgd2104-2-e}
create_clock -period 2 -name default
config_export -format ip_catalog -output /xprj/vitis/project_ip/convolve_fpga.zip -rtl verilog -vendor inline -vivado_optimization_level 0 -vivado_phys_opt none -vivado_report_level 0
source "./conv_01/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -vendor "inline" -version "1.1" -output /xprj/vitis/project_ip/convolve_fpga.zip
