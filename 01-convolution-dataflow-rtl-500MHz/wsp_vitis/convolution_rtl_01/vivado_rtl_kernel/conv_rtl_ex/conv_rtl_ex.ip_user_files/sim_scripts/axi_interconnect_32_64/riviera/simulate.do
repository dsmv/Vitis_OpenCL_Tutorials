onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_interconnect_32_64 -L xilinx_vip -L xpm -L fifo_generator_v13_2_5 -L axi_interconnect_v1_7_18 -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_interconnect_32_64 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {axi_interconnect_32_64.udo}

run -all

endsim

quit -force
