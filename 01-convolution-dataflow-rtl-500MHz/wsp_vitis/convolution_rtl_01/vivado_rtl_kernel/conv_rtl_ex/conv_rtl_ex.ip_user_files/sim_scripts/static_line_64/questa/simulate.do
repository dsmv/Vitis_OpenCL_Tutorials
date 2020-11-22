onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib static_line_64_opt

do {wave.do}

view wave
view structure
view signals

do {static_line_64.udo}

run -all

quit -force
