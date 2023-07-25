/*					Packed Structure 					*/

module struct_example;
  typedef struct packed{
    bit [7:0] addr;
    bit 	  valid;
    bit	[31:0] data;
  } mem_pkt;
  
  mem_pkt pkt;
  initial
    begin
      $display("============================");
      // initializing struct
      pkt = '{8'h6, 1'b1, 32'hC001_0FAB};
      $display("pkt = %p", pkt);
      
      // change the struct field value
      pkt.addr = 8'h8;
      $display("pkt = %p",pkt);
      
      // change the struct field value
      pkt.data = 32'hFFF0_0FFF;
      $display("pkt = %p", pkt);
      $display("============================");
    end
endmodule