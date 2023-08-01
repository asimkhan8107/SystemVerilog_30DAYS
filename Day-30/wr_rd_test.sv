`include "environment.sv"
program test(mem_intf intf);
  
  class my_trans extends transaction;
    
    bit [1:0] count;
    
    function void pre_randomize();
      wr_en.rand_mode(0);
      rd_en.rand_mode(0);
      addr.rand_mode(0);
            
      if(cnt %2 == 0) begin
        wr_en = 1;
        rd_en = 0;
        addr  = count;      
      end 
      else begin
        wr_en = 0;
        rd_en = 1;
        addr  = count;
        count++;
      end
      cnt++;
    endfunction
    
  endclass
    
  //declaring environment instance
  environment env;
  my_trans my_tr;
  
  initial begin
    //creating environment
    env = new(intf);
    
    my_tr = new();
    
    //setting the repeat count of generator as 3
    env.gen.repeat_count = 3;
    
    env.gen.trans = my_tr;
    
    //calling run of env
    env.run();
  end
endprogram