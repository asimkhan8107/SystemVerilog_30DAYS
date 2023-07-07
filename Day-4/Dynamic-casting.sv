/*				Dynamic Casting				*/
class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr = %0d",addr);
  endfunction
endclass

class child_class extends parent_class;
  bit [31:0] data;
  function display();
    super.display();
    $display("Data = %0h", data);
  endfunction
endclass

// Testbench
module sv_inheritance;
  initial
    begin
      parent_class p;
      child_class c = new(); 
      child_class c1;
      $display("========================");
      c.addr = 32'd15;
      c.data = 32'hFF;
      $display("========================");
      
      p = c;	// p is pointing to child class handle
      // $cast check type during runtime
      $cast(c1,p);
      c1.display();
    end 
endmodule
      
      

    
