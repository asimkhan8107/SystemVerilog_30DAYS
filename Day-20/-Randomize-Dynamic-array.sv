/*				 Randomize Dynamic Array size					*/
class dynamic_array;
  // random array declaration
  rand bit [3:0] array_1[];
  rand bit [3:0] array_2[];
  
  // Constraint
  constraint a1_size_c { array_1.size() inside {[4:10]}; }
  constraint a2_size_c { array_2.size() inside
                        {[4:10]}; }
  function void display();
    $display("========================================");
    $display("array_1 size is = %0d", array_1.size());
    $display("array_1 = [%0p]", array_1);
    $display("array_2 size is = %0d", array_2.size());
    $display("array_2 = [%0p]", array_2);
    $display("========================================");
  endfunction
endclass

program dynamic_array_randomization;
  dynamic_array pkt = new();
  initial
    begin
      pkt.randomize();
      pkt.display();
    end
endprogram
  