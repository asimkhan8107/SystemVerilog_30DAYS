// program block 
program testbench(input bit [7:0] addr);
  initial
    begin
      $display("=====================");
      $display("\t Addr = %0d", addr);
      $display("=====================");
    end
endprogram