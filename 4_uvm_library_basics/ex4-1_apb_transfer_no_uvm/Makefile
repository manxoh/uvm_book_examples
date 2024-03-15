all: work tb sim

work:
	vlib work

tb:
	vlog ex4-1_apb_transfer_no_uvm.sv

sim:
	vsim test -do "run -all;quit" -c

simgui:
	vsim test -voptargs=+acc

clean:
	rm -r work transcript
