/*					Array Locator methods			*/
module fixed_array;
  int array1[4];
  int tmp_value[$];
  
  initial
    begin
      array1 = '{80,20,3,40};
      
      $display("================================================");
      tmp_value = array1.min();
      $display("Min value element of array1 is \t%p", tmp_value);
      tmp_value = array1.max();
      $display("Min value element of array1 is \t%p", tmp_value);
      $display("================================================");
    end
endmodule