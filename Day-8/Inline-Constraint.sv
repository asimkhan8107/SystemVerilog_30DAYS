/*			Inline Constraint			*/
class packet;
  rand bit [3:0] addr;
  constraint addr_range {addr inside {[6:14]};};
endclass

// Testbench
module sv_inline_constraint;
  initial
    begin
      packet pkt = new();
      repeat(2)
        begin
          // Using inline constraint
          pkt.randomize() with { addr == 10;};
          $display("==================");
          $display("\taddr = %0d", pkt.addr);
          $display("==================");
        end
    end
endmodule