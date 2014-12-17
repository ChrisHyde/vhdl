
vlib work
#
# Compile sources
#
vcom -explicit  -93 "netgen/par/gen_funciones_timesim.vhd"
vcom -explicit  -93 "epp_device1.vhd"
vcom -explicit  -93 "DAC121S101.vhd"
vcom -explicit  -93 "gen_funciones_tb.vhd"
#
# Call vsim to invoke simulator
#
vsim -voptargs="+acc" -t 1ps -sdfmax "/uut=netgen/par/gen_funciones_timesim.sdf"  -lib work work.gen_funciones_tb
#
# Source the wave do file
# Set the window types
#
view wave
view structure
view signals
#
# 
#
add wave -divider "CLK y RST globales"
add wave  sim:/gen_funciones/RELOJ
add wave  sim:/gen_funciones/rst
add wave -divider "Unidad Aritmetica"
add wave -radix binary  sim:/gen_funciones/uut/cnt_epp/operation
add wave -radix unsigned  sim:/gen_funciones/uut/cnt_epp/operand1
add wave -radix unsigned  sim:/gen_funciones/uut/cnt_epp/operand2
add wave -radix binary  sim:/gen_funciones/uut/DAC121S101/MSB_result
add wave -radix binary  sim:/gen_funciones/uut/DAC121S101/LSB_result
add wave -radix binary  sim:/gen_funciones/uut/DAC121S101/state

add wave -divider "Entrada y salida Manchester"
add wave  -color gold  sim:/gen_funciones/uut/manchesterdecoder/rx
add wave  -color gold sim:/gen_funciones/uut/manchesterdecoder/dout

restart -f
focus
# Run simulation for this time
#
run 2000000000ns

#
# End
#
