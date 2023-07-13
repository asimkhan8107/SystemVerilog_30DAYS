/*					Unique Constraint 					*/
class unique_elements;
  // class properties
  rand bit [3:0] var_1,var_2,var_3;
  rand bit [7:0] array[6];
  constraint varis_c {unique {var_1,var_2,var_3};}
  constraint array_c {unique {array};}
  function void display();
    $display("var_1 = %0p",var_1);
    $display("var_2 = %0p",var_2);
    $display("var_3 = %0p",var_3);
    $display("array = %0p",array);
  endfunction
endclass

program unique_elements_randomization;
  unique_elements pkt;  
  initial begin
      pkt = new();
      pkt.randomize();
      pkt.display();
    end
endprogram
  
    
  