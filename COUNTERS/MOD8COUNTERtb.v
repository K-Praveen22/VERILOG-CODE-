// Code your testbench here
// or browse Examples
module tb;
  reg clk, rst;
  wire [2:0] count;
  
  mod8counter cnt(clk,rst,count);
  
  initial begin
      clk = 0;
      forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time = %0t, Reset = %b, Count = %b", $time, rst, count);
      rst = 1; #10;
      rst = 0; #80;
      rst = 1; #10;
      rst = 0; #40;
      rst = 1; #10;
      rst = 0; #40;
      rst=1;#30
      $stop;
  end
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
endmodule
