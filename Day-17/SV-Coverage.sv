/* 							System verilog Coverage 							*/
module sv_coverage;
  // port declaration
  logic [7:0] addr;
  logic [7:0] data;
  logic prty;
  logic rw;
  logic en;
  
  // Coverage Group
  covergroup memory @(posedge en);
    address: coverpoint addr {
      bins low = {0,50};
      bins med = {51,150};
      bins high = {151, 255};
    }
    
    parity: coverpoint prty {
      bins even = {0};
      bins odd = {1};
    }
  endgroup : memory
  
  // Instance of covergroup memory
  memory mem = new();
  
  // task to drive values
  task drive (input [7:0]a, input [7:0]d, input r);
    #5 en <= 1'b1;
       addr <= a;
       rw <= r;
       data <= d;
       prty <= ^d;
    $display("==================================================");
    $display("\t\t@%2tns Adderss: %0d \n\t\tdata: %0x \n\t\trw: %0x \n\t\tparity: %0x",$time,a,d,r,^d);
    #5 en <= 1'b0;
       addr <= 8'b0;
       data <= 8'b0;
       rw <= 1'b0;	
       prty <= 1'b0;
  endtask : drive
  
  // Testcase
  initial
    begin
      en = 1'b0;
      repeat(5)
        begin
          drive($random, $random, $random);
        end
      #10
      $finish;
    end
endmodule
       
    
  
  