/*			Constraint Inside Operator			*/

class packet;
  // class properties
  rand bit [3:0] addr;
  rand bit [3:0] start_addr;
  rand bit [3:0] end_addr;
  
  // using inside operator
  constraint addr_1_range { addr inside {[start_addr:end_addr]};}
endclass

// Testbench
module sv_constraint_inside;
  initial
    begin
      packet pkt;
      pkt = new();
      $display("============================");
      repeat(3)
        begin
          pkt.randomize();
          $display("\tstart_addr = %0d.end_addr = %0d",pkt.start_addr,pkt.end_addr);
          $display("\taddr = %0d",pkt.addr);
          $display("========================");
        end
    end
endmodule
  
  