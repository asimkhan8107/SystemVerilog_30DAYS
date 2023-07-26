/*		Sample the data based on storbe		*/
`define STORBE_WIDTH 32
`define DATA_WIDTH 128

module data_on_strobe;
  bit [`STORBE_WIDTH-1:0] Storbe;
  bit [`DATA_WIDTH-1:0] Data;
  bit [`DATA_WIDTH-1:0] tmp_data;
  
  initial
    begin
      Data = 'h30000_0000;
      Storbe = 'h30;
      
      // logic to sample data
      for(int i = 0, j = 0; i < 32; i++)
        if(Storbe[i])
          begin
            tmp_data[8 * (j) +: 8] = Data[8 *(i) +:8];
            $display("i=%0d\tData=%0h\ttmp_data=%0h",i,Data[8*(i) +: 8],tmp_data);
            j++;
          end
      $display("Data Value = %0h", tmp_data);
    end
endmodule