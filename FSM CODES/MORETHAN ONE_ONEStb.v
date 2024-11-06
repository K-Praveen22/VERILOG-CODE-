// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst,a;
  wire y;
  
  morethan_one_ones onees(clk,rst,a,y);
  
  initial clk=0;
  always #1 clk=~clk;
  
  initial begin
    a=0;
    #3 rst=0;
    #4 rst=1;
    
    #3 a=0;
    #3 a=1;
    #3 a=1;
    #3 a=0;
    #3 a=0;
    #3 a=1;
    #3 a=1;
    #3 a=0;
    #3 a=0;
    #3 a=1;
    #3 a=0;
    #3 a=1;
    #3 a=1;
    #3 a=1;
    #3 a=1;
    #3 a=1;
    #3 a=0;
    #3 a=0;
    #100 $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
endmodule
    
