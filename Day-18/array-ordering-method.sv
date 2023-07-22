/*				Array Ordering methods				*/
module fixedsize_array;
  // declartion of array
  int array1[4];
  int array2[4];
  int array3[4];
  int array4[4];
  
  initial
    begin
      // array initialization
      array1 = '{0,1,2,3};
      array2 = '{2,3,1,0};
      array3 = '{2,3,1,0};
      array4 = '{0,1,2,3};
      
      $display("========= reverse ==========");
      $display("Before: \t %0p", array1);
      array1.reverse();
      $display("After :\t &0p",array1);
      $display("============================");
      
      $display("==========  sort  ==========");
      $display("Before: \t %0p", array2);
      array2.sort();
      $display("After :\t &0p",array2);
      $display("============================");
      
      $display("========= rsort ============");
      $display("Before: \t %0p", array3);
      array3.rsort();
      $display("After :\t &0p",array3);
      $display("============================");
      
      $display("========= shuffle ==========");
      $display("Before: \t %0p", array4);
      array4.shuffle();
      $display("After :\t &0p",array4);
      $display("============================");
    end
endmodule
  