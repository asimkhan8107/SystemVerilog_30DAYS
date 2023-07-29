/*					for loop			*/
module loop_ex;
  initial
    begin
      $display("================================");
      for(int i = 0; i < 5; i++)
        $display("\t value of i = %0d", i);
      $display("==========================");
    end
endmodule