module Tb;
        reg sel0,sel1;
        reg i0,i1,i2,i3;
        wire y;
  mux3 mx(sel0,sel1,i0,i1,i2,i3,y);
initial begin
 $monitor("sel0=%b,sel1=%b,i0=%b,i1=%b,i2=%b,i3=%b,y=%b",sel0,sel1,i0,i1,i2,i3,y);
 {i0,i1,i2,i3}=4'h5;
repeat(10) 
  begin{sel0,sel1}=$random; #3;
end
end 
end module
