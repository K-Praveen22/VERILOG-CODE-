module tb_top;
  reg a,b;
  wire B,D;
  half_subtractor hs(a,b,B,D);
  
  initial begin
    $monitor ("At time %0t: a=%b b=%b,B=%b,D=%b",$time,a,b,B,D);
    a=0;b=0; #2;
    a=0;b=1; #2;
    a=1;b=0; #2;
    a=1;b=1; #2;
  end
endmodule
  
  
  
