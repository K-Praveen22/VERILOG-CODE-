//Replication Operators:
module replication_op;
  reg [1:0] i1, i2;
  reg [7:0] out;
  
  initial begin
    i1 = 2'h2; i2 = 2'h3;
    
    $display("out = %b", {4{i1}});
    $display("out = %b", {{3{i2}}, {2{i1}}} );
  end
endmodule
