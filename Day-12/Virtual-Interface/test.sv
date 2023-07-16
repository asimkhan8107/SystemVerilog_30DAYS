`include "environment.sv"
program test(intf i_intf);
  // declaring environment instance
  environment env;
  
  initial
    begin
      // Creating environment
      env = new(i_intf);     
      env.run(); // calling run of env
    end
endprogram