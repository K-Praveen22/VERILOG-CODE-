// Code your testbench here
// or browse Examples
module tb;
  reg[7:0]d;
  wire[2:0]y;
  priority_encoder pc(d,y);
  initial begin
    $monitor("d=%b,y=%b",d,y);
    repeat(5)begin
      d=$random;#3;
    end
  end
endmodule
