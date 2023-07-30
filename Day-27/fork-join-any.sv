/*							fork-join-any							*/
module fork_join_any;
  initial
    begin
      $display("=========================================================");
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
      $display($time, "\tOutside Fork-Join");
      $display("=========================================================");
      $finish;
    end
endmodule
          