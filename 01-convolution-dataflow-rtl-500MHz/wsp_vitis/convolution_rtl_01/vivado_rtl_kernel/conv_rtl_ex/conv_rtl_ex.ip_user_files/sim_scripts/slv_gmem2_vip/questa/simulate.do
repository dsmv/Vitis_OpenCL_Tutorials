onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib slv_gmem2_vip_opt

do {wave.do}

view wave
view structure
view signals

do {slv_gmem2_vip.udo}

run -all

quit -force
