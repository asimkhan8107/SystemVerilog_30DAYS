/*		Implimenting Randomize Methods		*/
class packet;
  rand byte addr;
  rand byte data;
  
  // Pre randomization function
  function void pre_randomize();
    $display("=========================");
    $display("Inside pre_randomization");
    $display("=========================");
  endfunction
  
  // Post randomization function
  function void post_randomize();
    $display("=========================");
    $display("Inside post_randomization");
    $display(" Addr = %0d, Data = %0d ",addr,data);
    $display("=========================");
  endfunction
endclass

// Testbench
module sv_rand_methods;
  initial
    begin
      packet pkt = new();
      pkt.randomize();
    end
endmodule