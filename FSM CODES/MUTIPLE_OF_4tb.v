// Code your testbench here
// or browse Examples
module tb;
  reg clk;
  reg rst;
  reg a;
  wire y;
  multiple_of_four dut (.clk(clk),.rst(rst),.a(a), .y(y));

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end
  initial begin
    rst = 1;
    a = 0;
    #10 rst = 0;
    #10 a = 1;   
    #10 a = 1;   
    #10 a = 0;   
    #10 a = 0;
    #10 a = 1;
    #10 a = 1;   
    #10 a = 1;
    #10 a = 0;   
    #10 a = 0;   
    #10 a = 0;  
    #10 a = 1;
    #10 a = 0;
    #10 a = 0;
    #10 a = 1;
    #10 a = 1;
    #200 $finish;
  end
  initial begin 
    $dumpfile(".vcd");
    $dumpvars();
  end
  initial begin
    $monitor("Time: %0dns | a: %b | y: %b", $time, a, y);
  end

endmodule
