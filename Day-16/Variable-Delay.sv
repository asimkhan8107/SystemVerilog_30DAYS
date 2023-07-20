/*				Variable Delay	 			*/
module variable_delay;
  bit clk;
  bit a, b;
  int cfg_delay;
  
  always #5 clk = ~clk;
  initial
    begin
      cfg_delay = 4;
      a = 1'b1;
      b = 1'b0;
      
      #15
      a = 1'b0;
      b = 1'b1;
      
      #10
      a = 1'b0;
      
      #10
      a = 1'b0;
      b = 1'b1;
      
      #10
      $finish;
    end
  
  // delay sequence
  sequence delay_seq(v_delay);
    int delay;
    (1, delay = v_delay) ##0 first_match((1,delay=delay-1) [*0:$] ##0 delay <= 0);
  endsequence
  
  // callling assert property
  a_1: assert property(@(posedge clk) a |-> delay_seq(cfg_delay) |-> b);
    
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
endmodule