/* 			if-else-constraint			*/
class packet;
  // Class properties
  rand bit [3:0] addr;
  rand enum {LOW, HIGH} addr_range;
  
  // if-else-constraint
  constraint address_range { if(addr_range == LOW)
    addr < 8;
                            else 
                              addr > 8; }
endclass

// Testbench
module sv_if_else_constraint;
  initial
    begin
      packet pkt = new();
      
      repeat(5)
        begin
          pkt.randomize();
          $display("=========================================");
          $display("addr_range = %0s, addr = %0d",pkt.addr_range.name(), pkt.addr);
          $display("=========================================");
        end
    end
endmodule
  