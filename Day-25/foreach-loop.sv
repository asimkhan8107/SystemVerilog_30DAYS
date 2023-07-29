/*				foreach loop				*/
module loop_ex;
  int a[6];
  initial
    begin
      $display("============================");
      foreach(a[i])
        a[i] = i;
      foreach(a[i])
        $display("\t value of a[%0d] = %0d",i,a[i]);
      $display("=========================");
    end
endmodule