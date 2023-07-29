/*						Unique if						*/
module unique_if_ex;
  int a,b,c;
  initial
    begin
      a = 50;
      b = 20;
      c = 40;
      
      $display("=====================================");
      unique if ( a < b )
        $display("\t a is less than b");
      else if ( a < c )
        $display("\t a is less than c");
      else
        $display("\t a is greater than b and c");
      $display("=====================================");
    end
endmodule