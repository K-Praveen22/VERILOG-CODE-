// Bitwise Operators:
module bitwise_op;
  reg [3:0] i1, i2;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("For operator: (&) : i1 = %b &  i2 = %b: %h", i1, i2, i1 & i2);
    $display("For operator: (|) : i1 = %b |  i2 = %b: %h", i1, i2, i1 | i2);
    $display("For operator: (^) : i1 = %b ^  i2 = %b: %h", i1, i2, i1 ^ i2);
    $display("For operator: (~) : i1 = %b ~  i2 = %b: %h", i1, i2, ~i1);
    $display("For operator: (~^): i1 = %b ~^ i2 = %b: %h", i1, i2, i1 ~^ i2);
    
    i1 = 4'b1x0z; i2 = 4'b0x1x;
    $display("For operator: (&) : i1 = %b &  i2 = %b: %b", i1, i2, i1 & i2);
    $display("For operator: (|) : i1 = %b |  i2 = %b: %b", i1, i2, i1 | i2);
    $display("For operator: (^) : i1 = %b ^  i2 = %b: %b", i1, i2, i1 ^ i2);
    $display("For operator: (~) : i1 = %b ~  i2 = %b: %b", i1, i2, ~i1);
    $display("For operator: (~^): i1 = %b ~^ i2 = %b: %b", i1, i2, i1 ~^ i2);
  end
endmodule
