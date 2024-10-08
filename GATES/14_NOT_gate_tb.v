module not_gate_tb;
   reg a;
   wire y;
  not_gate n1(a,y);
  initial begin
    $monitor("a=%d,y=%d",a,y);
    a=0;#2;
    a=1;#2;
    $finish;
  end
endmodule
    
