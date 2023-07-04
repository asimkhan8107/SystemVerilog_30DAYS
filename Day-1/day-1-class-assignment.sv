/*			System Verilog Class Assignment			 */

class packet;
  // class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  
  // constructor
  function new();
    addr = 32'h23;
    data = 32'hCD;
    write = 1'b1;
    pkt_type = "GOOD Packet";
  endfunction
  
  // class methods to display class properties
  function void display();
    $display("====================================");
    $display(" \t Addr = %0h", addr);
    $display(" \t Data = %0h", data);
    $display(" \t Write = %0b", write);
    $display(" \t PKT Type = %0s", pkt_type);
  endfunction
endclass

module sv_class_assignment();
  packet pkt_1;
  packet pkt_2;
  
  initial
    begin
      pkt_1 = new();
      $display(" ======== Calling pkt_1 handle ======== ");
      pkt_1.display();
      
      // assigning pkt_1 to pkt_2
      pkt_2 = pkt_1;
      $display(" ======== Calling pkt_2 handle ======== ");
      pkt_2.display();
      
      // Changing the value of with pkt_2 handle
      pkt_2.addr = 32'h17;
      pkt_2.data = 32'hEE;
      pkt_2.write = 1'b0;
      pkt_2.pkt_type = "BAD Packet"
      
      // Changing the value with pkt_2 will reflect on pkt_1
      pkt_1.display();
endmodule
    
  