/*			Print the current line			*/
module current_ex;
  initial
    begin
      $display("==========================");
      $display("\t Line Number = %0d",`__LINE__);
      $display("==========================");
    end
endmodule