all: work tb sim

work:
	vlib work

tb:
	vlog ex4-12_tlm_export_connect.sv

sim:
	vsim test -do "run -all;quit" -c

simgui:
	vsim test -voptargs=+acc

clean:
	rm -r work transcript
