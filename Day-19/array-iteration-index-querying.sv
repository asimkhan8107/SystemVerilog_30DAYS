/*			Array Iteration Index Querying		*/
module fixed_array;
  int array1[6], array2[6];
  int tmp_qu[$], tmp_cnt, tmp_value;
  
  initial
    begin
      array1 = '{10,20,2,40,67,5};
      array2 = '{80,4,2,40,67,5};
      
      $display("========================================================");
      // Type-1
      tmp_qu = array1.find with (item == item.index);
      tmp_cnt = tmp_qu.size();
      $display("Index and Elements are same for %0d index's", tmp_cnt);
      for(int i = 0; i<tmp_cnt; i++)
        begin
          tmp_value = tmp_qu.pop_front();
          $display("\tsame for value %0d", tmp_value);
        end
      
       // Type-2
      tmp_qu = array1.find(item) with (item > item.index);
      tmp_cnt = tmp_qu.size();
      $display("Index and Elements condition satisfied for %0d index's", tmp_cnt);
      for(int i = 0; i<tmp_cnt; i++)
        begin
          tmp_value = tmp_qu.pop_front();
          $display("\tsame for value %0d", tmp_value);
        end
      $display("=======================================================");
    end
endmodule
  