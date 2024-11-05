// Code your design here
module tff(
  input t, clk,rst_n,
  output reg q,
  output q_bar);
  always @(posedge clk)begin
    if(!rst_n)q<=0;
    else begin
      q<=(t?~q:q);
    end
  end
  assign
    q_bar=~q;
    endmodule
    
    
