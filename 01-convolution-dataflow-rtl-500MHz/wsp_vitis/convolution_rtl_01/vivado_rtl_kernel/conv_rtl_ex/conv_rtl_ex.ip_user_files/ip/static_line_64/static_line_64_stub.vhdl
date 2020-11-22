-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Tue Nov 10 00:05:18 2020
-- Host        : dsp55 running 64-bit CentOS Linux release 7.6.1810 (Core)
-- Command     : write_vhdl -force -mode synth_stub
--               /xprj/vitis/wsp_01/convolution_rtl_01/vivado_rtl_kernel/conv_rtl_ex/imports/ip_core/static_line_64/static_line_64_stub.vhdl
-- Design      : static_line_64
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcu200-fsgd2104-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity static_line_64 is
  Port ( 
    data_i : in STD_LOGIC_VECTOR ( 63 downto 0 );
    data_o : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clk : in STD_LOGIC
  );

end static_line_64;

architecture stub of static_line_64 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "data_i[63:0],data_o[63:0],clk";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "static_line,Vivado 2020.1";
begin
end;
