-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/tools/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xbip_utils_v3_0_10 \
  "../../../ipstatic/xbip_utils_v3_0_10/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_utils_v2_0_6 \
  "../../../ipstatic/axi_utils_v2_0_6/hdl/axi_utils_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_pipe_v3_0_6 \
  "../../../ipstatic/xbip_pipe_v3_0_6/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_wrapper_v3_0_4 \
  "../../../ipstatic/xbip_dsp48_wrapper_v3_0_4/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_addsub_v3_0_6 \
  "../../../ipstatic/xbip_dsp48_addsub_v3_0_6/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_dsp48_multadd_v3_0_6 \
  "../../../ipstatic/xbip_dsp48_multadd_v3_0_6/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xbip_bram18k_v3_0_6 \
  "../../../ipstatic/xbip_bram18k_v3_0_6/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mult_gen_v12_0_16 \
  "../../../ipstatic/mult_gen_v12_0_16/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/floating_point_v7_1_10 \
  "../../../ipstatic/floating_point_v7_1_10/hdl/floating_point_v7_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/hdl/verilog/convolve_fpga_Block_split1_proc9.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_compute_dataflow_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_compute_dataflow_1_window_mem_0.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_fifo_w32_d2_S.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_fifo_w64_d2_S.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_fifo_w64_d3_S.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_fifo_w64_d4_S.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_fpext_32ns_64_3_no_dsp_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_gmem1_m_axi.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_gmem2_m_axi.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_gmem3_m_axi.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mac_muladd_8ns_16s_16s_16_4_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mac_muladd_16s_8ns_16s_16_4_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mul_32s_32s_32_7_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mul_mul_8ns_16s_16_4_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mul_mul_16s_8ns_16_4_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_mux_32_32_1_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_read_dataflow_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_start_for_write_dataflow_1_U0.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga_write_dataflow_1.v" \
  "../../../ipstatic/hdl/verilog/convolve_fpga.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../ipstatic/hdl/ip/convolve_fpga_ap_fpext_1_no_dsp_32.vhd" \
  "../../../../imports/ip_core/convolve_fpga_0/sim/convolve_fpga_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

