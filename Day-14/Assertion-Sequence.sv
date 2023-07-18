/*			Assertion Sequence		*/
module sv_asertion;
  bit clk,a,b;
  
  always #10 clk = ~clk;
  
  initial begin 
        a=1; b=1;
    #60 a=0; b=0;
    #40 a=1; b=0;
    #40 a=0; b=0;
    #40 a=1; b=1;
    #40;
    $finish;
  end
  
  //assertion sequence
  sequence seq;
    a ##2 b;
  endsequence

  property p;
    @(posedge clk) seq;
  endproperty
  
  //calling assert property
  a_1: assert property(p);
    
  //wave dump
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule