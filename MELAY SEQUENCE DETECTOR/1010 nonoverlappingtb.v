module tb;
  reg clk, reset, b;
  wire a;
  
  mealy1010nonover nov(clk, reset, b,a);
  initial clk = 0;   
  always #5 clk = ~clk;
    
  initial begin
    b = 0;
    #5 reset = 0;
    #5 reset = 1;
    
    #5 b = 1;
    #4 b = 1;
    #4 b = 0;
    #4 b = 1;
    #4 b = 0;
    #4 b = 1;
    #4 b = 0;
    #4 b = 1;
    #4 b = 1;
    #4 b = 1;
    #4 b = 0;
    #4 b = 1;
    #4 b = 0;
    #4 b = 1;
    #4 b = 0;
    #100;
    $finish;
  end
  initial begin
    $monitor("At time %0t: clk=%b,reset=%b,b=%b,a=%b",$time,clk,reset,b,a);
  end
  
  initial begin
   
    $dumpfile(".vcd");
    $dumpvars();
  end
endmodule
