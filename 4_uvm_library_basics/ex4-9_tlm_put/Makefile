all: work tb sim

work:
	vlib work

tb:
	vlog ex4-9_tlm_put.sv

sim:
	vsim test +UVM_VERBOSITY=UVM_HIGH -do "run -all;quit" -c

simgui:
	vsim test -voptargs=+acc

clean:
	rm -r work transcript
