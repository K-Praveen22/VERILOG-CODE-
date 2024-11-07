// Code your testbench here
// or browse Example
module tb;
  reg j,k,reset,clk;
  wire y;
  
  jkfsm fsm(j,k,reset,clk,y);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    reset=1;j=0;k=0;
    #6;
    reset=0;
    #7;
    j=1;k=1;
    #10;
    j=1;k=0;
    #10;
    j=0;k=1;
    #10;
    j=0;k=0;
    #90;
   
    $finish;
  end
  
  initial begin
    $monitor("At time %0t:j=%b,k=%b,reset=%b,clk=%b,y=%b",$time,j,k,reset,clk,y);
  end
  
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars;
  end
  
endmodule
    
