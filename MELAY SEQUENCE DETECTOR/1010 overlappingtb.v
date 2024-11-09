// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module tb;
  reg clk, reset, a;
  wire c;
  
  mealy1010_overlapping ol(clk, reset, a, c);
  initial clk = 0;   
  always #5 clk = ~clk;
    
  initial begin
    a = 0;
    #5 reset = 0;
    #6 reset = 1;
    
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
    #4 a = 1;
    #4 a = 1;
    #4 a = 1;
    #200;
    $finish;
  end
  initial begin
    $monitor("At time %0t: clk=%b,reset=%b,a=%b,c=%b",$time,clk,reset,a,c);
  end
  
  initial begin
   
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
