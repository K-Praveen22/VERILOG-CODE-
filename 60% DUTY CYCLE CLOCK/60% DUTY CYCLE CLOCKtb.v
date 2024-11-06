// Code your testbench here
// or browse Examples
module tb;
  reg in_clk,rst;
  wire out_clk;
  
  duty_cycle duty(in_clk,rst,out_clk);
  
  initial in_clk = 0;
  always #2 in_clk = ~in_clk;
  
  initial begin
    rst = 1;
    #10 rst =0;
    #200 $finish;
  end
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
