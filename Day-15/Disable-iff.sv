/*			Disable iff				*/
module sv_assertion;
  bit a,b,c;
  bit clk, rst;
  
  always #20 clk = ~clk;
  
  initial
    begin
      	  a = 1'b1;
      	  b = 1'b1;	
      #60 a = 1'b0;
      	  b = 1'b0;	
      #40 a = 1'b1;
      	  b = 1'b0;	
      #40 a = 1'b0;
      	  b = 1'b0;
      #40 a = 1'b1;
      	  b = 1'b1;	
      #40
      	  $finish;
    end
  property p;
    @(posedge clk) disable iff (rst) a |-> ##1 b[->3] ##1 c;
  endproperty
  
  // calling assert property
  a_1: assert property(p);
    
    initial
      begin
        $dumpfile("dump.vcd");
        $dumpvars;
      end
 endmodule
      	 
      