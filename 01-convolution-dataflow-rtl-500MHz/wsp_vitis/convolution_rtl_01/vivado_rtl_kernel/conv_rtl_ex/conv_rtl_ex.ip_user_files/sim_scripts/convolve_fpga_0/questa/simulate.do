onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib convolve_fpga_0_opt

do {wave.do}

view wave
view structure
view signals

do {convolve_fpga_0.udo}

run -all

quit -force
