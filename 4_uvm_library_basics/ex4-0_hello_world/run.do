if [file exists "work"] {vdel -all}
vlib work

# Comment out either the SystemVerilog or VHDL DUT.
# There can be only one!

#VHDL DUT
#vcom -f dut.f

# SystemVerilog DUT
# vlog ../misc/tinyalu.sv

vlog -f tb.f
vopt hello_world_example -o hello_world_example_optimized  +acc

vsim hello_world_example_optimized -coverage

set NoQuitOnFinish 1
onbreak {resume}
log /* -r
run -all
quit
