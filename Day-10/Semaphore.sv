/*					Semaphore					*/
module sv_semaphore;
  // declaring semaphore 
  semaphore sema;
  initial
    begin
      // creating sema with 4 keys
      sema = new(4);
      fork 			// process will execute concurrently
        display();	// process 1
        display();  // process 2
      join
    end
  
  // Display Method
  task automatic display();
    sema.get(4);	// getting 4 keys from sema
    $display($time,"\tCurrent Simulation Time");
    #30;
    sema.put(4);	// putting 4 keys to sema
  endtask
endmodule