program basic_test;
  // slave env instance
  slave_env env;
  
  initial
    begin
      // create env
      env = new();
      
      // calling run of env
      env.run();
    end
endprogram