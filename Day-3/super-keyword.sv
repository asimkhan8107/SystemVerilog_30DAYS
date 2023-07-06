/* 					Super keyword 				*/
class parent_class;
  bit [31:0] addr;
  function display();
    $display(" Addr = %0d", addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display(); 	// to access to parent class member
    $display(" Data = %0d", data);
  endfunction
endclass

// Testbench
module sv_inheritance;
  initial
    begin
      child_class c  = new(); // Creating object and allocating memory at once
      c.addr = 32'd23;
      c.data = 32'h5F;
      $display("==============================");
      c.display();
      $display("==============================");
    end
endmodule
  
// In previous, overriding method I found there only data will display because there child class can't access to parent class member.
// But here using super keyword in child class it access the parent class member