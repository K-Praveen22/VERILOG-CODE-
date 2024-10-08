module or_gate_tb;
   reg a,b;
   wire y;
  xor_gate n1(a,b,y);
  initial begin
    $monitor("a=%d,b=%d,y=%d",a,b,y);
    a=0;b=0;#2;
    a=0;b=1;#2;
    a=1;b=0;#2;
    a=1;b=1;#2
    $finish;
  end
endmodule
    
