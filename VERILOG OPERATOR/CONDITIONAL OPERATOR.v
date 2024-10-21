//Conditional Operator:
module conditional_op;
  reg [3:0] i1, i2;
  reg [3:0] result;
  initial begin
    i1 = 4'h6; i2 = 4'h2;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = %0h", result);
    
    i1 = 4'h6; i2 = 4'h6;
    $display("i1 = %0h, i2 = %0h", i1, i2);
    result = (i1 > i2)? 1 : 0;
    $display("result = %0h", result);
    
    i1 = 4'b1x00; i2 = 4'b0100;
    $display("i1 = %b, i2 = %b", i1, i2);
    result = (i1 > i2)? (i1 & i2) : (i1 | i2);
    // The outcome is ambiguous then both <true_expression> and <false_expression>
    // will be evaluated and compared to compute outcome
    // <true_expression>  = i1 & i2 = 4'b0x00
    // <false_expression> = i1 | i2 = 4'b1x00
    // result = xx00;
    $display("result = %b", result);
  end
endmodule
