/*											 Memory Testbench								*/
`include "interface.sv"

// select any one test to run and comment other  
`include "default_rd_test.sv"
//`include "random_test.sv"
//`include "wr_rd_test.sv"


module testbench;
  
  bit clk;
  bit reset;
  
  always #5 clk = ~clk;
 
  initial begin
    reset = 1;
    #5 reset =0;
  end
  
  
  //creatinng instance of interface
  mem_intf intf(clk,reset);
  
  //Testcase instance
  test t1(intf);
  
  //DUT instance
  memory DUT (
    .clk(intf.clk),
    .reset(intf.reset),
    .addr(intf.addr),
    .wr_en(intf.wr_en),
    .rd_en(intf.rd_en),
    .wdata(intf.wdata),
    .rdata(intf.rdata)
   );
  
  //enabling the wave dump
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule