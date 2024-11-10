// Code your design here
// Code your design here
module jkff(
  input j,k,clk,rst,
  output reg q,
  output q_bar);
  always @(posedge clk)
    if (!rst)q<=0;
  else begin
    case({j,k})
      2'b00:q<=q;
      2'b01:q<=1'b0;
      2'b10:q<=1'b1;
      2'b11:q<=~q;
    endcase
  end
  
  assign
    q_bar=~q;
   
    endmodule
