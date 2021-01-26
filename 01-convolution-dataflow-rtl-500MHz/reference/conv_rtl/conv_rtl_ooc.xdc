# This is a generated file. Use and modify at your own risk.
################################################################################
  # This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs. For
# best results the frequencies should be modified to match the target
# frequencies. This constraints file is not used in normal top-down
# synthesis (the default flow of Vivado)
create_clock -period 3.333 [get_ports ap_clk]
# Secondary clock is async to ap_clk. Same notes above apply here.
create_clock -period 2.000 [get_ports ap_clk_2]

set_false_path  -from [get_clocs ap_clk] -to [get_clocks ap_clk_2]
set_false_path  -from [get_clocs ap_clk_2] -to [get_clocks ap_clk]