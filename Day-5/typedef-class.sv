/*			typedef Class 			*/
typedef class c2;

// Class 1  
  class c1;
    c2 c;
  endclass
  
//class 2
  class c2;
    c1 c;
  endclass

  // Testbench
  module sv_typedef_class;
    initial
      begin
        c1 class1;
        c2 class2;
        $display("====================");
        $display("Inside typedef Class");
        $display("====================");
      end
  endmodule