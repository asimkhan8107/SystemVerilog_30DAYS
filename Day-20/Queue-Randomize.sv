/* 							Queue Randomize						  			*/
class queue_rand;
  rand bit [7:0] qu[$];
  
  constraint size_c { qu.size() inside {[4:10]}; }
  
  function void display();
    $display("============================================");
    $display("array size = %0d", qu.size());
    $display("array = [%0p]", qu);
    $display("============================================");       
  endfunction
endclass
             
program assoc_array_randomization;
	assoc_array pkt = new();
               
    initial
    	begin
        	pkt.randomize();
            pkt.display();
        end
endprogram












