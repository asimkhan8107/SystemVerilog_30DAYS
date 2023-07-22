/*						Array Reduction Method						 */
module fixed_array;
  int array1[4];
  int r_sum, r_product;
  
  initial
    begin
      array1 = '{1,2,3,4};
      r_sum = array1.sum();
      $display("============================");
      $display("Sum of array1 : \t%0d",r_sum);
      
      r_product = array1.product();
      $display("Product of array1 : \t%0d", r_product);
      $display("=============================");
    end
endmodule

// In this i have seen only sum and product reduction method
/* Similarly, there is more reduction methods 
	1. and()
    2. or()
    3. xor()*/


  