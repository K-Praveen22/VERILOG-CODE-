//Concatination Operators:
module concatenation_op;
  reg [1:0] i1, i2;
  reg [3:0] i3;
  reg [7:0] out;
  
  initial begin
    i1 = 2'h2; i2 = 2'h3;
    i3 = 4'h8;
    
    $display("out = %b", {i3, i2, i1});
    $display("out = %b", {i3, i2, 2'b11});
    $display("out = %b", {i3, i2[1], 1'b1, i1[0]});
  end
endmodule
