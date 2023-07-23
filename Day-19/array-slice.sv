/*							Array Slice 					*/
program array_slice;
  bit [31:0] packet_type_A [7:0];
  bit [31:0] packet_type_B [1:0];

  initial begin
    std::randomize(packet_type_A);
    $display("============================================="};
    $display("Value of packet_type_A are %p",packet_type_A);
    
    $display("Before the array part select,");
    $display("\tValues of packet_type_B are %p",packet_type_B);
    
    packet_type_B = packet_type_A[5:4];
    
    $display("After the array part select,");
    $display("\tValues of packet_type_B are %p",packet_type_B);  
    $display("============================================="};         
  end
endprogram