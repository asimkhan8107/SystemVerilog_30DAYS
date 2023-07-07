/*				Static Casting  			*/
module casting;
  real r_a;
  int i_a;
  
  initial
    begin
      r_a = (7.3 * 2.6);
      
      // Real to int conversion
      i_a = int'(r_a);
      $display("========================");
      $display("Real value is %f", r_a);
      $display("Int value is %f", i_a);
      $display("========================");
    end
endmodule