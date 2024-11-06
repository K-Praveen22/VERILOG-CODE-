module tb;
  reg clk, rst, a;
  wire y;
  
  consecutive_threeones onee(clk,rst,a,y);
  
  initial clk=0;
  always #5 clk=~clk;
  
  initial begin
    a=0;
    #10 rst=0;
    #20 rst=1;
    
    #10 a=1;
    #10 a=0;
    #10 a=0;
    #10 a=1;
    #10 a=1;
    #10 a=1;
    #10 a=1;
    #10 a=0;
    #10 a=0;
    #10 a=1;
    #10 a=1;
    #10 a=1;
    #10 a=0;
    #10 $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
