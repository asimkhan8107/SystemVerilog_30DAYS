/*		Randomization Control		*/
class packet;
  rand byte addr;
  randc bit wr_rd;
  		bit tmp_wr_rd;
  
  // Pre randomization function
  function void pre_randomize();
    if(tmp_wr_rd==1)
      addr.rand_mode(0);
    else
      addr.rand_mode(1);
  endfunction
  
  // Post randomization function
  function void post_randomize();
    tmp_wr_rd = wr_rd;
    $display("===========================================");
    $display("POST_RANDOMIZATION:: Addr = %0h,wr_rd = %0h",addr,wr_rd);
    $display("===========================================");
  endfunction
endclass

// Testbench
module rand_methods;
  initial
    begin
      packet pkt = new();
      repeat(4)
        pkt.randomize();
    end
endmodule