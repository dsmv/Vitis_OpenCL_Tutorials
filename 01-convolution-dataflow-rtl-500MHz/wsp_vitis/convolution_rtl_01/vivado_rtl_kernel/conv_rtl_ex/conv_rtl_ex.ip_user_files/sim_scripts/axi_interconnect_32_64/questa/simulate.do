onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axi_interconnect_32_64_opt

do {wave.do}

view wave
view structure
view signals

do {axi_interconnect_32_64.udo}

run -all

quit -force
