class slave_env;
  slave_driver slv_driver;
  
  function new();
    slv_driver = new();
  endfunction
  
  // run task to call driver logic
  task run;
    repeat(2)
      begin
        slv_driver.send_response();
        $display("Slave Generated Response is %0s", slv_driver.resp.name());
      end
  endtask
endclass
        