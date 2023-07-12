/*			Constraint Disable		 	*/
class packet;
  rand bit [3:0] addr;
  constraint addr_range {addr inside {5,10,15};}
endclass

//Testbench
module sv_static_constrait;
  initial
    begin
      packet pkt = new();
      
      $display("Before Constraint Disable");
      repeat(2)
        begin 
          pkt.randomize();
          $display("\taddr = %0d", pkt.addr);
        end
      
      // Disableing Constraint
      pkt.addr_range.constraint_mode(0);
      $display("After Constraint disable");
      repeat(2)
        begin
          pkt.randomize();
          $display("\taddr = %0d", pkt.addr);
        end
    end
endmodule
          
