/*						SV Task						*/
module sv_task;
  int x;
  
  // task to add two integer numbers
  task sum(input int a,b, output int c);
    c = a + b;
  endtask
  
  initial
    begin
      sum(10,5,x);
      $display("==============================");
      $display("\t Value of x = %0d",x);
      $display("==============================");
    end
endmodule