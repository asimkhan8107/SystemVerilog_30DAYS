/*	Weighted Distribution (Dist Operator)	*/
class packet;
  // class properties
  rand bit [3:0] addr_1;
  rand bit [3:0] addr_2;
  
  // Constraint using := operator
  constraint addr_1_range { addr_1 dist { 2 := 5,[10:12] := 8};}
  // Constraint using :\ operator
  constraint addr_2_range { addr_2 dist { 2 :/ 5,[10:12] := 8};}
endclass

// Testbench
module sv_constraint_dist;
  initial
    begin
      packet pkt = new();
      $display("====================================");
      repeat(10)
        begin
          pkt.randomize();
          $display("\taddr_1 = %0d", pkt.addr_1);
        end
      $display("====================================");
      $display("====================================");
      repeat(10)
        begin
          pkt.randomize();
          $display("\taddr_2 = %0d", pkt.addr_2);
        end
      $display("====================================");
    end
endmodule
      