/*		foreach loop constraint		*/
class packet;
  // class properties
  rand byte addr[];
  rand byte data[];
  
  // Constraint 
  constraint avlaues {foreach(addr[i]) addr[i] inside {4,8,12,16}; }
  constraint dvalues {foreach(data[j]) data[j] > 4 * j; }
  constraint asize { addr.size < 4; }
  constraint dsize {data.size == addr.size;}
endclass
                              
// Testbench
module sv_constraint_iteration;
 	initial
    	begin
        	packet pkt = new();
            $display("==============================");
            repeat(2)
            	begin
                	pkt.randomize();
                    $display("\t addr size = %0d data size = %0d",pkt.addr.size(),pkt.data.size());
                    	foreach(pkt.addr[i])
                        	$display("\taddr = %0d data = %0d",pkt.addr[i],pkt.data[i]);
                            $display("===============================");
                end
         end
endmodule
                              