module rcas_tb;
  wire [3:0] s, cout;
  reg [3:0] a, b;
  reg ctrl;
  
  ripple_carry_adder_subtractor rcas(a, b, ctrl, s, cout);
  
  initial begin
    $monitor("ctrl=%b: a = %b, b = %b --> s= %b, cout[3] = %b", ctrl, a, b, s, cout[3]);
    ctrl = 0;
    a= 1; b = 0;
    #3 a = 2; b = 4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 5; b = 3;
    ctrl = 1;
    b = 1; b = 0;
    #3 a = 2; b= 4;
    #3 a = 4'hb; b = 4'h6;
    #3 a = 5; b = 3;
    #3 $finish;
  end
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
