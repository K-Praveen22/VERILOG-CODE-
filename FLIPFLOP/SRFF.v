// Code your design here
module srff(
  input s,r,clk,rst_n,
  output reg q,
  output q_bar);
  always @(posedge clk)
    if (!rst_n)q<=0;
  else begin
    case({s,r})
      2'b00:q<=q;
      2'b01:q<=1'b0;
      2'b10:q<=1'b1;
      2'b11:q<=1'bx;
    endcase
  end
  
  assign
    q_bar=~q;
   
    endmodule
