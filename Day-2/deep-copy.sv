/*			 SV Deep Copy 			*/

class address_range;
  bit [31:0] start_address;
  bit [31:0] end_address;
  
  function new();
    start_address = 32'd10;
    end_address = 32'd20;
  endfunction
  
  // Copy method
  function address_range copy;
    copy = new();
    copy.start_address = this.start_address;
    copy.end_address = this.end_address;
    return copy;
  endfunction
endclass

class packet;
  // Class properties
  bit [31:0] addr;
  bit [31:0] data;
  
  // Creating class handle
  address_range ar;
  
  // Constructor
  function new();
    addr = 32'h15;
    data = 32'hCD;
    ar = new(); // Creating object
  endfunction
  
  // Method to display class properties
  function void display();
    $display(" ===================");
    $display("\t addr = %0h", addr);
    $display("\t data = %0h", data);
    $display("\t start_address = %0d", ar.start_address);
    $display("\t end_address = %0d", ar.end_address);
    $display(" ====================");
  endfunction
  
  // Copy method
  function packet copy();
    copy = new();
    copy.addr = this.addr;
    copy.data = this.data;
    copy.ar = ar.copy;
    return copy;
  endfunction
endclass

module sv_deep_copy();
  packet pkt_1;
  packet pkt_2;
  
  initial
    begin
      // Creating pkt_1 object
      pkt_1 = new();	
      $display("==== Calling pkt_1 ====");
      pkt_1.display();
      
      // Creating pkt_2 object
      pkt_2 = new();
      $display("==== Calling pkt_2 ====");
      pkt_2.display();
      
      // calling Copy method
      pkt_2 = pkt_1.copy();
      
      // Changing values with pkt_2 handle
      pkt_2.addr = 32'h45;
      pkt_2.ar.start_address = 32'd37;
      pkt_2.ar.end_address = 32'd97;
      
      $display("\t ==== Calling pkt_1 display after changing pkt_2 properties ====");
      pkt_1.display();
      
      $display("\t ==== Calling pkt_2 display after changing pkt_2 properties ====");
      pkt_2.display();
    end
endmodule
      