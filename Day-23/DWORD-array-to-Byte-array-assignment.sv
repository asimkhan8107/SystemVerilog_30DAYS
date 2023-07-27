/*				DWORD Array to Byte Array Assignment				*/
module data_on_storbe;
  int abc [];
  bit [8:0] dcd[];
  
  initial
    begin
      abc = new[4];
      dcd = new[abc.size() * 4];
      
      foreach(abc[i])
        abc[i] = 32'hacdf_eff * (i+1);
      
      foreach(abc[i])
         $display("acdf[%d] %0h",i,abc[i]);
      
      for (int i = 0,j=0,k=0;i<dcd.size();i++)
        begin
          dcd[i] = abc[k][8*(j) +: 8];
          j++;
          
          if(j % 4 == 0)
            begin
              $display("Inside J %0d mod %0b",j,(j % 4));
              j = 0;
              k++;
            end
          $display("dcd[%0d] %0h",i,dcd[i]);
        end
      foreach(dcd[i])
        $display("dcd[%0d] %0h",i,dcd[i]);
    end
endmodule