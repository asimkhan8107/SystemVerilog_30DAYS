/*				Repetition Operator			 */
module asertion_ex;
  bit clk;
  bit a,b;
  
  always #20 clk = ~clk;
  
  initial begin 
        a=1'b1;
    	b=1'b1;
    	
    	#60 	
    	a=1'b0; 	
    	b=1'b0;
    
    	#40 
    	a=1'b1; 
    	b=1'b0;
    
    	#40 
    	a=1'b0; 
    	b=1'b0;	
    
    	#40 
    	a=1'b1; 
    	b=1'b1;
    
    	#40;
    	$finish;
  end
  
  property p;
    @(posedge clk) a |-> ##1 b[*3]; // using repetion operator
  endproperty
  
  //calling assert property
  a_1: assert property(p);
    
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule