onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+static_line_32 -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.static_line_32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {static_line_32.udo}

run -all

endsim

quit -force
