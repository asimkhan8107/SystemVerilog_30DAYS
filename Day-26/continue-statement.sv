/*						continue Statement							*/
module continue_statement_ex;
  int i;
  initial
    begin
      $display("============================================================");
      for(int i = 0; i < 8; i++)
        begin
          if((i > 2) && (i < 7))
            begin
              $display("\t\t Calling Continue");
              continue;
            end
          $display("\t\tAfter Continue\t:: Value of i is = %0d",i);
        end
      $display("============================================================");
    end
endmodule