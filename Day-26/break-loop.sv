/*						break loop							*/
module break_statement_ex;
  int i;
  initial
    begin
      $display("=============================");
      i = 8;
      while (i != 0)
        begin
          $display("\t value of i = %0d",i);
          if(i == 4)
            begin
              $display("\t Calling break ");
              break;
            end
          i--;
        end
      $display("==============================");
    end
endmodule