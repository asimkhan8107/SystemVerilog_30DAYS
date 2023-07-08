/* 		External Function 		*/
class packet;
  bit [31:0] addr;
  bit [31:0] data;
  
  // external function declaration
  extern virtual function void display();
endclass
    
  // function implementation outside class body
    function void packet::display();
      $display("============================");
      $display("ADDR = %0d, DATA = %0h",addr,data);
      $display("============================");
    endfunction
    
    //Testbench
    module extern_method;
      initial
        begin
          packet p = new();
          p.addr = 32'd20;
          p.data = 32'hFF;
          p.display();
        end
    endmodule
    