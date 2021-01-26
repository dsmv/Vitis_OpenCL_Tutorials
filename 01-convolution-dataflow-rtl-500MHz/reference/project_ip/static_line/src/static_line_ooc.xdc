
#set_multicycle_path 3 -through [get_nets static_data*]  -to [get_cells data_o_reg*]
set_false_path -through [get_nets static_data*]  -to [get_cells data_o_reg*]
#set_false_path -through [get_nets static_data*]  

#
