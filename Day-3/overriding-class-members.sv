/*			Overriding Class Members			*/
class parent_class;
  bit [31:0] addr;
  function display();
    $display(" Addr = %0d ", addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
  	$display(" Data = %0h", data);
  endfunction
endclass

// Testbench
module sv_inheritance;
  initial
    begin
      child_class c = new(); 	// Creating handle and allocate memory at once
      c.addr = 32'd13;
      c.data = 32'hFF;
      $display("=========================================================");
      c.display();
      $display("=========================================================");
    end
endmodule

// here, display() is parent class and i also redefine to child class i.e. property of overriding class member applies. 
