/*					Mailbox 				*/
class packet;
  // class properties
  rand bit [7:0] addr;
  rand bit [7:0] data;
  
  // Displaying randomization values
  function void post_randomize();
    $display("Packet::Packet Generated");
    $display("Packet::Addr = %0d Data = %0d",addr,data);
  endfunction
endclass

/* Generator => Generates the transaction packet and send to drive */
class generator;
  packet pkt;
  mailbox m_box;
  
  // Constructor, getting mailbox handle
  function new(mailbox m_box);
    this.m_box = m_box;
  endfunction
  
  task run;
    repeat(2)
      begin
        pkt = new();
        pkt.randomize(); 		// Generating packet
        m_box.put(pkt);		// Putting packet into mailbox
        $display("Generator::Packet Put into Mailbox");
        #5;
      end
  endtask
endclass

/*	Driver => Gets the packet from generator and display's the packet items */
class driver;
  packet pkt;
  mailbox m_box;
  
  // Constructor, getting mailbox handle
  function new(mailbox m_box);
    this.m_box = m_box;
  endfunction
  
  task run;
    repeat(2) 
      begin
        m_box.get(pkt);	// getting packet from mailbox
        $display("Driver::Packet Received");
        $display("Driver::Addr = %0d Data = %0d\n", pkt.addr,pkt.data);
      end
  endtask
endclass

// Testbench
module mailbox_ex;
  generator gen;
  driver dri;
  mailbox m_box; 	// declaring mailbox m_box
  
  initial
    begin
      m_box = new();
      gen = new(m_box);
      dri = new(m_box);
      $display("==============================");
      fork	// process will run concurrently
        gen.run(); 
        dri.run();
      join
      $display("=================================");
    end
endmodule
    
			
        