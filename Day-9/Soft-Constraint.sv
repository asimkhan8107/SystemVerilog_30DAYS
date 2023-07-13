/*				Soft Constraint 			*/
class packet;
  // class properties
  rand bit [3:0] addr;
  constraint addr_range { soft addr > 6; }
endclass

module sv_soft_constraint;
  initial
    begin
      packet pkt = new();
      repeat(2)
        begin
          pkt.randomize() with { addr < 6 ;};
          $display("\taddr = %0d",pkt.addr);
        end
    end
endmodule
          