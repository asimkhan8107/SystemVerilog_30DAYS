/*        	System Verilog Static Class Members	        */
class packet;
  // class static properties
  static byte no_of_pkts_created;
  
  // constructor
  function new();
    // incrementing pkt count on creating an object 
    no_of_pkts_created++ ;
  endfunction
  
  // static method to display class properties
  static function void display_packets_created();
    $display("======================================");
    $display(" \t No of Pkts Created = %0d", no_of_pkts_created);
    $display("======================================");
  endfunction
endclass

  module sv_static_properties;
    packet pkt[3];
    packet p; // creating handle to access static class properties
    
    initial
      begin
        foreach(pkt[i])
        begin
          pkt[i] = new();
        end
        
        // Accessing static varible with the handle
        $display("============================================");
        $display("== Display static class properties created=="); 
        $display(" \t No of Pkts Created = %0d",p.no_of_pkts_created);
        $display("============================================");
  		
        // Accesing static methods with the handle
        $display("== Display static class methods created ===");
        p.display_packets_created();
        
        
      end
  endmodule
    
    
    