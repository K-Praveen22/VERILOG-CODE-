// Code your testbench here
// or browse Examples
module tb;
  reg [1:0] sel;
  reg i;
  wire y0,y1,y2,y3;
  
  demux1_4 demux(sel, i, y0, y1, y2, y3);
  
  initial begin
    $monitor("sel = %b, i = %b -> y0 = %0b, y1 = %0b ,y2 = %0b, y3 = %0b", sel,i, y0,y1,y2,y3);
    sel=2'b00; i=0; #10;
    sel=2'b00; i=1; #10;
    sel=2'b01; i=0; #10;
    sel=2'b01; i=1; #10;
    sel=2'b10; i=0; #10;
    sel=2'b10; i=1; #10;
    sel=2'b11; i=0; #10;
    sel=2'b11; i=1; #10;
  end
endmodule
