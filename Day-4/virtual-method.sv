/*			Virtual Method				*/
class parent_class;
  virtual function void display();
    $display("========================");
    $display("Inside parent_class");
    $display("========================");
  endfunction
endclass
class child_class extends parent_class;
  function void display();
  	$display("========================");
    $display("Inside child_class");
    $display("========================");
  endfunction
endclass

// Testbench
module sv_virtual_class;
  initial
    begin
      parent_class p;
      child_class c = new();
      
      p = c;
      p.display();
    end
endmodule
      

             