/*  		Overlapped Implication Assertion           */
module sv_asertion;
  bit clk,a,b;
  
  always #20 clk = ~clk; //clock generation
  
  //generating a
  initial begin 
        a=1; b=1;
    #60 a=0; b=0;
    #40 a=1; b=0;
    #40 a=0; b=0;
    #40 a=1; b=1;
    #40;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> b;
  endproperty
  
  //calling assert property
  a_1: assert property(p);
   
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule