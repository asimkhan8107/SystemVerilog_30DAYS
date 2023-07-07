/* 		Abstract Class 		*/
virtual class packet;
  bit [31:0] addr;
endclass

class extended_packet extends packet;
  function void display();
    $display("=================");
    $display("Addr = %0d", addr);
    $display("=================");
  endfunction
endclass

// Testbench
module sv_abstract_class;
  initial
    begin
      extended_packet p = new();
      p.addr = 32'd20;
      p.display();
    end
endmodule