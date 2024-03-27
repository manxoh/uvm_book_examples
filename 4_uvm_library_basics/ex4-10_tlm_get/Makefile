all: work tb sim

work:
	vlib work

tb:
	vlog ex4-10_tlm_get.sv

sim:
	vsim test -do "run -all;quit" -c

simgui:
	vsim test -voptargs=+acc

clean:
	rm -r work transcript
