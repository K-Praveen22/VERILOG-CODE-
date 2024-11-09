// Code your design here
// Code your design here
module moore1010over(
  input clk,
  input reset,
  input a,
  output reg d);
  
  parameter s0 = 4'h0;
  parameter s1 = 4'h1;
  parameter s2 = 4'h2;
  parameter s3 = 4'h3;
  parameter s4 = 4'h4;
  
  bit[3:0] state,next_state;
  always@(posedge clk or negedge reset) begin
    if(~reset)
      state<= s0;
    else
      state<= next_state;
  end
  
  always@(a or state)begin
    case(state)
      s0:begin
        if(a==0)
          next_state=s0;
        else
          next_state=s1;
      end
      s1:begin
        if(a==0)
          next_state=s2;
        else
          next_state=s1;
      end
      s2:begin
        if(a==0)
          next_state=s0;
        else
          next_state=s3;
      end
      s3:begin
        if(a==0)
          next_state=s4;
        else
          next_state=s1;
      end
      s4:begin
        if(a==0)
          next_state=s0;
        else
          next_state=s3;
      end
    endcase
  end
  always@(state) begin
  case(state)
    s0: d=0;
    s0: d=0;
    s0: d=0;
    s0: d=0;
    s0: d=1;
    default:d=0;
   endcase
end
  endmodule
      
  
