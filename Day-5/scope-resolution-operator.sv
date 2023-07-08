/* 		Scope Resolution Operator(::) 	*/
class packet;
  bit [31:0] addr;
  static bit [31:0] id;
  
  function display(bit [31:0] a,b);
    $display("=========================");
    $display(" a=%0d b=%0d",a,b);
    $display("=========================");
  endfunction
endclass

//Testbench
module sro_class;
  int id = 10;
  initial
    begin
      packet p = new();	// create object and allocate memory
      
      // using resolution operator
      packet::id = 20;
      p.display(packet::id,id);
    end
endmodule

      
  