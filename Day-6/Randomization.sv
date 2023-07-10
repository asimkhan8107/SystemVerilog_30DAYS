/* 				Randomization 				*/
class packet;
  // Class properties
  rand bit [2:0] addr1;
  rand bit [2:0] addr2;
endclass

// Testbench
module sv_randomization;
  
  initial 
    begin
      packet pkt = new();		// Memory allocation
      
      repeat(10)
        begin
      		pkt.randomize();
          $display("==========================");
          $display("	Addr1 = %0d, Addr2 = %0d",pkt.addr1,pkt.addr2);
          $display("==========================");
        end
    end
endmodule
      
  