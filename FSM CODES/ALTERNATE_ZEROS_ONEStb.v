// Code your testbench here
// or browse Examples
module tb;
  reg clk, rst, a;
  wire y;
  
  alt_zeros_ones alter(clk, rst, a, y);
  
  initial clk = 0;
  always #10 clk=~clk;
  
  initial begin
    a = 0;
    #6 rst = 0;
    #7 rst = 1;
    
    #14 a=1;
    #14 a=1;
    #14 a=0;
    #14 a=1;
    #14 a=0;
    #14 a=1;
    #14 a=1;
    #14 a=0;
    #14 a=1;
    #14 a=0;
    #14 a=1;
    #14 a=0;
    #14 a=1;
    #14 a=1;
    #100 $finish;
  end
  
  initial begin 
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
endmodule
    
