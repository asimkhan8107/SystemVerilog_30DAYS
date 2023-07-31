/*					Argument passing by name					*/
module argument_passing_ex;
  int x,y,z;
  
  function void display(int x, string y);
    $display("\t value of x = %0d y = %0s",x,y);
  endfunction
  
  initial
    begin
      $display("=================================================");
      display(.y("Hello World"), .x(2023));
      $display("=================================================");
    end	
endmodule