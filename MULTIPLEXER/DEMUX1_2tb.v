// Code your testbench here
// or browse Examples
module demux_tb;
  reg sel,i;
  wire y0,y1;
  demux1_2 demux (sel,i,y0,y1);
  initial begin
    $monitor("sel=%h: i=%h; y0=%h: y1=%h",sel,i,y0,y1);
             sel=0; i=0;#3;
             sel=0; i=1;#3;
             sel=1; i=0;#3;
             sel=1; i=1;#3;
             end 
             endmodule
