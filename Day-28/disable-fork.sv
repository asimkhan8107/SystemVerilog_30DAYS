/*							disable-fork								*/
module disable_fork;
  initial
    begin
      $display("=========================================================");
      // fork-1
      fork
        // process-1 
        begin
          $display($time,"\tProcess-1 Started");
          #5;
          $display($time,"\tProcess-1 Finished");
        end
        
        // process-2
        begin
          $display($time,"\tProcess-2 Started");
          #20;
          $display($time,"\tProcess-2 Finished");
        end
      join_any 
      
 // fork-2
      fork
        // process-1 
        begin
          $display($time,"\tProcess-1 Started");
          #5;
          $display($time,"\tProcess-1 Finished");
        end
        
        // process-2
        begin
          $display($time,"\tProcess-2 Started");
          #20;
          $display($time,"\tProcess-2 Finished");
        end
      join_none
      
	disable fork; 
      $display("=========================================================");
      $display($time,"\tAfter disable-fork");
      $display("=========================================================");
    end
endmodule
          