/* Disable Randomization for all Class Variables*/
class packet;
  rand byte addr;
  rand byte data;
endclass

module sv_randomization;
  initial
    begin
      packet pkt = new();
      $display("=================================================");
      $display("\taddr.rand_mode() = %0d \tdata.rand_mode() = %0d",pkt.addr.rand_mode(),pkt.data.rand_mode());
      $display("=================================================");
      
      // Disable rand_mode of object
      pkt.rand_mode(0);
      
      // Calling Randomize Method
      pkt.randomize();
      
      $display("=================================================");
      $display("\taddr = %0d \tdata = %0d",pkt.addr,pkt.data);
      $display("\taddr.rand_mode() = %0d \tdata.rand_mode() = %0d",pkt.addr.rand_mode(),pkt.data.rand_mode());
      $display("=================================================");
    end
endmodule
  
  