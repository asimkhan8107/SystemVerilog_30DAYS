/*							Enum Casting						*/
module enum_datatype_ex;
  // declaration
  typedef enum int { red = 0, green = 1, blue = 4, yellow, white = 6, black = 9 } Colors;
  
  Colors color;
  
  initial
    begin
      $cast(color,6);
      $display("=================================");
      $display("  Colors :: Value of %0s = %0d",color.name(),color);
      $display("=================================");
    end
endmodule
