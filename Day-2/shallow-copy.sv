/*					SV Shallow Copy					*/
class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address;
  
  function new();
    start_address = 32'd10;
    end_address = 32'd20;
  endfunction
endclass

class packet;
  // Class properties
  bit [31:0] addr;
  bit [31:0] data;
  
  // creating class handle
  address_range ar;
  
  // Constructor
  function new();
    addr = 32'h10;
    data = 32'hFF;
    ar = new(); // Creating Object
  endfunction
  
  // Method to display class properties
  function void display();
    $display("===============");
    $display( "\t Addr = %0h", addr);
    $display(" \t Data = %0h", data);
    $display(" \t start_address = %0d", ar.start_address);
    $display(" \t end_address = %0d", ar.end_address);
    $display("================");
  endfunction
endclass

module shallow_copy();
  packet pkt_1;
  packet pkt_2;
  
  initial
    begin
      pkt_1 = new(); 	// Creating pkt_1
      $display(" \t === calling pkt_1 === ");
      pkt_1.display();
      
      // Creating pkt_2 object and copying pkt_1 to pkt_2
      pkt_2 = new pkt_1;
      $display(" \t === calling pkt_2 ===");
      pkt_2.display();
      
      // Changing the value with pkt_2 handle
      pkt_2.addr = 32'h57;
      pkt_2.ar.start_address = 32'd38;
      pkt_2.ar.end_address = 32'd97;
      
      $display("=== Calling pkt_1 display after changing pkt_2 properties ===");
      pkt_1.display();
      
      $display("=== Calling pkt_2 display after changing pkt_2 properties ===");
      pkt_2.display();
    end
endmodule