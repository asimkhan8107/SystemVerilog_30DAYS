/* Accessing Protected Variable in Extended Class  */
class parent_class;
  protected bit [31:0] tmp_addr;
  // Constructor
  function new(bit [31:0] r_addr);
    	tmp_addr = r_addr + 10;
  endfunction
  
  function display();
    $display("================");
    $display("tmp_addr = %0d", tmp_addr);
    $display("================");
  endfunction
endclass

class child_class extends parent_class;
  function new(bit [31:0] r_addr);
    super.new(r_addr);
  endfunction
  
  function void incr_addr();
    tmp_addr++;
  endfunction
endclass

// Testbench
module sv_encapsulation;
  initial
    begin
      child_class c = new(10);
      
      // Accessing protected variable in extended class
      c.incr_addr();
      c.display();
    end
endmodule
      
