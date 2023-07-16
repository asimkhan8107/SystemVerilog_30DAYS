/*				Program Block				*/

// Testbench top
`include"program_block.sv"

module tbench_top;
  wire [7:0] addr;
  
  // instantiation
  design_block dut(addr);
  
  // testbench instance
  testbench test(addr);
endmodule


