/*					SV Function				*/
module sv_function_ex;
  int x;
  function int sum(input int a,b);
    sum = a + b;
  endfunction
  
  initial
    begin
      x = sum(20,10);
      $display("============================");
      $display("\t value of x = %0d",x);
      $display("============================");
    end
endmodule