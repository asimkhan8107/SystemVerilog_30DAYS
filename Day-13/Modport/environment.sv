class environment;
  // virtual interface
  virtual intf vif;
  
  // Constructor
  function new(virtual intf vif);
    this.vif = vif; 	// get interface from test
  endfunction
  
  task run;
    vif.a = 4'd4;
    vif.b = 4'd4;
 	  $display("=================================");
    $display("Value of a = %0d b = %0d",vif.a,vif.b);
      #20;
    $display("Sum of a and b = %0d",vif.sum);
      $display("=================================");
  endtask
endclass