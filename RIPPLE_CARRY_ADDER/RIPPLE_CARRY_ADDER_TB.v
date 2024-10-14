module tb_rca;
  reg [3:0] a,b;
  reg cin;
  wire[3:0]s,cout;
  wire[4:0]add;
  ripple_carry_adder rca (a,b,cin,s,cout);
  assign add= {cout[3],s};
  initial begin $monitor ("a=%b,b=%b,cin=%b,s=%b,cout[3]=%b,addition=%0d",a,b,cin,s,cout,add);
    a=4'h8;b=3;cin=6;#4
    a=3;b=4'h7;cin=7;#4
    a=4;b=4'h4;cin=2;#4
    a=8;b=3;cin=4'h3;#4
    $finish;
  end
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
  
