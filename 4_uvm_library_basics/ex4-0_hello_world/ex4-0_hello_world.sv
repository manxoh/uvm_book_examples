//-----------------------------------------------------------------
// File: ex4-0_hello_world.sv
// 
// To Run:  %  irun -uvm ex4-0_hello_world.sv
//
// OR:      %  irun -uvmhome $UVM_HOME ex4-0_hello_world.sv
//-----------------------------------------------------------------
module hello_world_example;
  // Import the UVM library and include the UVM macros
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  
  initial begin
    #5
    `uvm_info("INFO", "Hello World!", UVM_LOW)
  end
endmodule : hello_world_example
