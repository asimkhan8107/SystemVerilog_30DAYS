/*					Constraint Inheritance					*/
class packet_1;
  rand bit [3:0] addr;
  constraint addr_range { addr > 5; };
endclass

class packet_2 extends packet_1;
  // Overriding constraint of parent class
  constraint addr_range { addr < 5; };
endclass

// Testbench
module sv_constraint_inheritance;
  initial
    begin
      packet_1 pkt1 = new();
      packet_2 pkt2 = new();
      
      $display("============================");
      repeat(5)
        begin
          pkt1.randomize();
          $display("\tpkt1:: addr = %0d", pkt1.addr);
        end
      $display("============================");
      repeat(5)
        begin
          pkt2.randomize();
          $display("\tpkt2:: addr = %0d",pkt2.addr);
        end
      $display("============================");
    end
endmodule