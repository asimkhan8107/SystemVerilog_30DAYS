/*							while loop							*/
module while_loop_ex;
  int i;
  initial
    begin
      $display("===============================");
      while(i < 5)
        begin
          $display("\t value of i = %0d", i);
          i++;
        end
      $display("===============================");
    end
endmodule