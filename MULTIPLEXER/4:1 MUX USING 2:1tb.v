module Tb;
        reg sel0,sel1;
        reg i0,i1,i2,i3;
        wire y;

        mx4 mx_4(sel0,sel1,i0,i1,i2,i3,y);

        initial begin
          $monitor("sel=%b,sel1=%b,i0=%b,i1=%b,i2=%b,i3=%b,y=%b",sel0,sel1,i0,i1,i2,i3,y);
          {i0,i1,i2,i3}=4'ha;
repeat(6) begin
  {sel0,sel1}=$random;#1;
 end
end
endmodule
