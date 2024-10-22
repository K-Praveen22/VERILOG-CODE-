// Code your testbench here
// or browse Examples
module Tb;
        reg sel,
            i0,
            i1;
        wire y;
 mux mux0(sel,i0,i1,y);
 initial begin
 $monitor("sel=%b,i0=%b,i1=%b,y=%b",sel,i0,i1,y);
i0=0;i1=1;sel=0;#2;
  sel=1;#2;
  $finish;
 end
initial begin
 $dumpfile("mux.vcd");
 $dumpvars;
end
endmodule
