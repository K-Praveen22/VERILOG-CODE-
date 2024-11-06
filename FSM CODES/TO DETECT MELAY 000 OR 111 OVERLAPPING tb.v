// Code your testbench here
// or browse Examples
module tb;
  reg clk,rst,a;
  wire y;
  wire [3:0] state,next_state;
  melay_111_000 mealy(clk,rst,a,y);
  always #5 clk=~clk;  
  initial begin
     clk=0;
     a=0;
     rst=0;
    #5 rst=1;
     #10 a=1;
     #10 a=0;
     #10 a=0;
     #10 a=0;
     #10 a=1;
     #10 a=0;
     #10 a=1;
     #10 a=1;
     #10 a=1;
     #10 a=0;
     #10 a=1;
     #10 a=1;
     #10 a=1;
     #10 a=1;
     #10 a=0;
     #10 a=0;
     #10 a=0;
     #10 a=0;
    #50 $finish;
  end 
  initial begin
    $monitor("State=%b, Next state=%b, rst=%b, y=%b a=%0b clk=%0b",state,next_state,rst,y,a,clk);
  end  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end  
endmodule
