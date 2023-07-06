/* 			Class Inheritance		*/
class parent_class;
  bit [31:0] addr;
endclass

class child_class extends parent_class;
  bit [31:0] data;
endclass

module sv_inheritance;
  initial
    begin
      child_class c = new();	// create handle and allocate memory at once
      c.addr = 32'd23;
      c.data = 32'hC9;
      $display("=========================================================");
      $display("value of addr = %0d, value of data = %0h", c.addr, c.data);
      $display("=========================================================");
    end
endmodule
  
      