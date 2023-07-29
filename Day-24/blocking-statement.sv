/*				Blocking Statement 					*/
module blocking_ex;
  int a, b;
  initial
    begin
      $display("============================================");
      // initializing a and b
      a = 10;
      b = 20;
      
      // displaying initial value of a and b
      $display("\tBefore assignment :: Value of a = %0d", a);
      $display("\tBefore assignment :: Value of b = %0d", b);
      
      a = b;
      b = 30;
      
       // displaying value of a and b after assignment
      $display("\tAfter assignment :: Value of a = %0d", a);
      $display("\tAfter assignment :: Value of b = %0d", b);
      $display("===========================================");
    end
endmodule