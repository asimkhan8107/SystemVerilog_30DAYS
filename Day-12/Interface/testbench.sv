/* 				SV Interface			*/
`include "interface.sv"

module tbench_top;
  
  // Creating instance of interface
  intf i_intf();
  
  // DUT instance => interface signals are connected to the DUT ports
  adder DUT(
    .a(i_intf.a),
    .b(i_intf.b),
    .sum(i_intf.sum)
  );
  initial
    begin
      i_intf.a = 7;
      i_intf.b = 3;
      $display("=================================");
      $display("a = %0d b = %0d",i_intf.a,i_intf.b);
      #20;
      $display("Sum of a and b = %0d",i_intf.sum);
      $display("=================================");
    end
endmodule