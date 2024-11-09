// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg clk, reset, a;
  wire d;
  
  moore1010nonover non(clk, reset, c, d);
  initial clk = 0;   
  always #5 clk = ~clk;
    
  initial begin
    a = 0;
    #1 reset = 0;
    #2 reset = 1;
    
    #4 a = 1;
    #4 a = 1;
    #4 a = 0;
    #4 a = 1;
    #4 a = 0;
    #4 a = 1;
    #4 a = 0;
    #4 a = 1;
    #4 a = 1;
    #4 a = 1;
    #4 a = 0;
    #4 a = 1;
    #4 a = 0;
    #4 a = 1;
    #4 a = 0;
    #100;
    $finish;
  end
  
  initial begin
    $dumpfile(".vcd");
    $dumpvars();
  end
endmodule
