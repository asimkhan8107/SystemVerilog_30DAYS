/*										System Functions											*/
module sv_system_functions;
  bit [31:0] addr1;
  bit [31:0] addr2;
  bit [63:0] addr3;
  bit [31:0] data;
  initial
    begin
      addr1 = $urandom();
      addr2 = $urandom(89);
      addr3 = {$urandom(),$urandom()};
      data = $urandom * 6;
      $display("=================================== $urandom ========================================");
      $display("addr1 = %0d, addr2 = %0d, addr3 = %0d, data = %0d",addr1,addr2,addr3,data);
      $display("=====================================================================================");
      
      addr1 = $urandom_range(30,20);
      addr2 = $urandom_range(20);
      addr3 = $urandom_range(20,30); // 20 = min, 30 = max
      $display("=========== $urandom_range ===========");
      $display("addr1 = %0d, addr2 = %0d, addr3 = %0d",addr1,addr2,addr3);
      $display("======================================");
    end
endmodule
      
      
      