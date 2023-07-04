/*          System Verilog Class Constructor             */
class packet;
  
  // class properties
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  
  // constructor
  function new();
    addr = 32'h23;
    data = 32'hAC;
    write = 1'b1;
    pkt_type = "Good Packet";
  endfunction
  
  // class methods to display class properties
  function void display();
    $display("=======================================");
    $display(" \t Addr = %0h", addr);
    $display(" \t Data = %0h", data);
    $display(" \t Write = %0b", write);
    $display(" \t Packet Type = %0s", pkt_type);
    $display("=======================================");
  endfunction
  
  module sv_constructor;
    packet pkt;
    
    initial
      begin
        pkt = new();
        pkt.display();
      end
  endmodule
    
    