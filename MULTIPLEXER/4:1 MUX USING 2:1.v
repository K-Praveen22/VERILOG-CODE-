module mx2(input sel,
        input i0,i1,
        output y);
assign y=sel?i1:i0;
endmodule
module mx4(input sel0,sel1,
           input i0,i1,i2,i3,
           output y);
 wire y0,y1;
 mx2 mx_0(sel1,i0,i1,y0);
   mx2 mx_1(sel1,i2,i3,y1);
   mx2 mx_2(sel0,y0,y1,y);
endmodule