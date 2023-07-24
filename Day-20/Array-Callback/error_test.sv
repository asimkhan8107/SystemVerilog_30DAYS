class err_inject extends slave_driver;
  virtual task update_resp;
    $display("Injection SLVERR");
    resp = SLVERR;
  endtask
endclass

program error_test;
  // Instance
  slave_env env;
  err_inject err_driver;
  
  initial
    begin
      env = new();
      err_driver = new();
      
      env.slv_driver = err_driver;
      
      // calling run of env
      env.run();
    end
endprogram