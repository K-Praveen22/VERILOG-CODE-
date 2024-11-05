// Code your testbench here
// or browse Examples
module tb;
  reg[2:0]d;
  wire[7:0]y;
  binary_decoder bdc(d,y);
  initial begin
    $monitor("d=%b,y=%b",d,y);
    repeat(5)begin
      d=$random;#3;
    end
  end
endmodule
  
