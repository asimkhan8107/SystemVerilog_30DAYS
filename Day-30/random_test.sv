`include "environment.sv"
program test(mem_intf intf);
  
  //declaring environment instance
  environment env;
  
  initial begin
    //creating environment
    env = new(intf);
    
    //setting the repeat count of generator as 3
    env.gen.repeat_count = 3;
    
    //calling run of env
    env.run();
  end
endprogram