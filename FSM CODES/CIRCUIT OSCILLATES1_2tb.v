// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst,A;
  wire y;
  
  circuit osclates(clk,rst,A,y);
  
  always #5 clk=~clk;
  
  initial begin
    clk=0;
    #2 rst=0;
    #3 rst=1;
    
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=1;
    #4 A=1;
    #4 A=0;
    #4 A=1;
    #4 A=0;
    #4 A=0;
    #4 A=1;
    #200 $finish;
  end
  
  initial begin
    $dumpfile(".vcd");
    $dumpvars;
  end
endmodule
