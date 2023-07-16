/*		SV Virtual Interface		*/
`include "interface.sv"
`include "test.sv"

module tbench_top;
  // Creating instance of interface
  intf i_intf();
  
  // Testcase instance
  test t (i_intf);
  
  // DUT instance => interface signals are connected to the DUT ports
  adder DUT(
    .a(i_intf.a),
    .b(i_intf.b),
    .sum(i_intf.sum)
  );
endmodule