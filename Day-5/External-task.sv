/*			External Task 		*/
class packet;
  //Class properties
  bit [31:0] addr;
  bit [31:0] data;
  
  // External task declaration
  extern virtual task display();
    endclass  
    
    // Task implementation
    task packet::display();
      $display("=======================");
      $display(" ADDR = %0d DATA = %0h ", addr, data);
      $display("=======================");
    endtask
    
    // Testbench
    module sv_extern_method;
      initial
        begin
          packet p = new();
          p.addr = 32'd10;
          p.data = 32'hD5;
          p.display();
        end
    endmodule