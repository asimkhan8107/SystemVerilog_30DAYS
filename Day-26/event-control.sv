/*					Event Control					*/
module event_control_ex;
  bit [2:0] a,b;
  
  always@(*)
    $display("=================================");
    begin
      $display(%time,"\tValue of a = %0d b = %od",a,b);
    end
$display("=================================");
  
  initial
    begin
      #20 a = 5;
      #30 b = 2;
      #20 a = 1;
      #10 b = 7;
      #20;
      $finish;
    end
endmodule