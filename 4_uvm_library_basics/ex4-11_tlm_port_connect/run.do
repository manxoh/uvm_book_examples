if [file exists "work"] {vdel -all}
vlib work

# Comment out either the SystemVerilog or VHDL DUT.
# There can be only one!

#VHDL DUT
#vcom -f dut.f

# SystemVerilog DUT
# vlog ex4-11_tlm_port_connect.sv

vlog -f tb.f
vopt test -o test_optimized  +acc

vsim test_optimized -coverage

set NoQuitOnFinish 1
onbreak {resume}
log /* -r
run -all
quit
