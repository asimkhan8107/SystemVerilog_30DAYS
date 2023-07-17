/*				Modport					*/
// Defining modport in interfce
interface intf();
  
  // declaring the signals
  logic [3:0] a,b;
  logic [6:0] sum;
  
  modport driver (output a,b, input sum);
endinterface
