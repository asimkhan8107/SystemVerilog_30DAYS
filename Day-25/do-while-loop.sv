/*							do while loop							*/
module do_while_loop_ex;
  int i;
  initial
    begin
      $display("===============================");
      do
        begin
          $display("\t value of i = %0d", i);
          i++;
        end
      while(i < 5);
      $display("===============================");
    end
endmodule