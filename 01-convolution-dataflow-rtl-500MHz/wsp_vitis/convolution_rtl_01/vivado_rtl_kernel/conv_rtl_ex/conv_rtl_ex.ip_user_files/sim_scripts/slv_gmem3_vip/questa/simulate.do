onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib slv_gmem3_vip_opt

do {wave.do}

view wave
view structure
view signals

do {slv_gmem3_vip.udo}

run -all

quit -force
