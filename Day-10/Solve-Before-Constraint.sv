/*			Solve before Constraint			*/
class packet;
  rand bit a;		// 2 possible value(0,1)
  rand bit [3:0] b; // 16 possible value(0-15)
  
  constraint sa_b {solve a before b;}
  constraint a_b {(a == 1)-> b == 0;}
endclass

// Testbench
module sv_inline_constraint;
  initial
    begin
      packet pkt = new();
      $display("=========================");
      repeat(10)
        begin
          pkt.randomize();
          $display("\ta = %0d, b = %0d",pkt.a,pkt.b);
        end
      $display("=========================");
    end
endmodule
  