// Code your testbench here
// or browse Examples
module tb;
  reg d,clk,rst;
  wire q;
  dff df(q,d,clk,rst);
  initial begin
    rst =1; clk=0;
  #10rst =0; d=1;
  #10d=0;
  #10d=1;
  #10$finish;
  end
  
    always #5 clk=~clk;
  initial begin
    $dumpvars(1);
    $dumpfile("dump.vcd");
  end
endmodule
