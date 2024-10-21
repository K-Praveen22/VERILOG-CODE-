//Shift Operators:
module shift_op;
  reg [7:0] i1, o1;
  reg signed [7:0] i2, o2;
  
  initial begin
    // Logical shift
    i1 = 8'b1111_0000;
    o1 = i1 >> 3;
    $display("Shift right (>>) i1 = %b by 3: %b", i1, o1);
    i1 = o1;
    
    o1 = i1 << 3;
    $display("Shift left (<<) i1 = %b by 3: %b", i1, o1);
    
    // Arithmatic shift
    i2 = 8'b1111_0000;
    o2 = i2 >>> 3;
    $display("Shift right (>>>) i2 = %b by 3: %b", i2, o2);
    i2 = o2;
    
    o2 = i2 <<< 3;
    $display("Shift left (<<<) i2 = %b by 3: %b", i2, o2);
  end
endmodule
