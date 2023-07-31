/*					Argument passing by value				*/
module argument_passing_ex;
  int x,y,z;
  
  function int sum(int x, y);
    x = x + y;
    return x + y;
  endfunction
  
  initial
    begin
      x = 20;
      y = 30;
      z = sum(x,y);
      $display("============================");
      $display("\t value of x = %0d",x);
      $display("\t value of y = %0d",y);
      $display("\t value of z = %0d",z);
      $display("============================");
    end
endmodule