/*				Immediate Assertion		*/
module sv_assertion;
  bit a,b;
  bit clk;
  
  // Clock generation
  always #20 clk = ~clk;
  
  // Generating a
  initial
    begin
     	  a = 1'b1; b = 1'b1;
      #60           b = 1'b0;
      #40 a = 1'b0; b = 1'b1;
      #80 a = 1'b1;
      #40 $finish;
    end
  
  // Immediate Assertion
  always@(posedge clk) assert ( a && b);
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule