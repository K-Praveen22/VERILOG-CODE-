module mux2(input sel,
            input i0,i1,
            output y);
assign y=sel?i1:i0;
endmodule
module mux3(input sel0,sel1,
            input i0,i1,i2,i3,
            output y);
 wire y0;
 mux2 mx(sel1,i0,i1,y0);
  mux2 mux(sel0,y0,i2,y);
endmodule
