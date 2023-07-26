/*			Enum of Logic type			*/
module enum_ex;
  // declaration
  enum logic [3:0] { red = 0, green = 1, blue = 4, yellow, white = 6, black = 9 } colors;
 
  initial
    begin
      colors = colors.first;
      $display("===============================");
      for (int i = 0; i < 6; i++)
        begin
          $display("Colors :: Value of %0s is %0d", colors.name(),colors);
          colors = colors.next;
        end
      $display("===============================");
    end
endmodule