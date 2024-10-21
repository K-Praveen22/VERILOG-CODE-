//Reduction Operators:
module reduction_op;
  reg [3:0] i1;
  initial begin
    i1 = 4'h6;
    $display("For operator: (&)  : i1 = %b -> %b", i1, &i1);
    $display("For operator: (|)  : i1 = %b -> %b", i1, |i1);
    $display("For operator: (^)  : i1 = %b -> %b", i1, ^i1);
    $display("For operator: (~&) : i1 = %b -> %b", i1, ~&i1);
    $display("For operator: (~|) : i1 = %b -> %b", i1, ~|i1);
    $display("For operator: (~^) : i1 = %b -> %b", i1, ~^i1);
       
    i1 = 4'b1x0z;
    $display("For operator: (&)  : i1 = %b -> %b", i1, &i1);
    $display("For operator: (|)  : i1 = %b -> %b", i1, |i1);
    $display("For operator: (^)  : i1 = %b -> %b", i1, ^i1);
    $display("For operator: (~&) : i1 = %b -> %b", i1, ~&i1);
    $display("For operator: (~|) : i1 = %b -> %b", i1, ~|i1);
    $display("For operator: (~^) : i1 = %b -> %b", i1, ~^i1);
  end
endmodule
