all: work tb sim

work:
	vlib work

tb:
	vlog ex4-0_hello_world.sv

sim:
	vsim hello_world_example -do "run -all;quit" -c

simgui:
	vsim hello_world_example -voptargs=+acc

clean:
	rm -r work transcript
