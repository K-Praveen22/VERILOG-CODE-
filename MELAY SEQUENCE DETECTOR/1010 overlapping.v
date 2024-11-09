// Code your design here
// Code your design here
module mealy1010_overlapping(
       input clk,
       input reset,
       input a,
       output c);
  
  parameter s0= 4'h1;
  parameter s1= 4'h2;
  parameter s2= 4'h3;
  parameter s3= 4'h4;
   
  reg[3:0] state,next_state;
  always@(posedge clk or negedge reset) begin
    if(~reset)
      state <= 0;
    else
      state <= next_state;
  end
  
  always@(state or a) begin
    case(state)
      s0: begin
        if(a==0)
          next_state = s0;
        else
          next_state = s1;
      end
      
      s1: begin
        if(a==0)
          next_state = s2;
        else
          next_state = s1;
      end
        
      s2: begin
        if(a==0)
          next_state = s0;
        else
          next_state = s3;
      end
          
      s3: begin
        if(a==0)
          next_state = s2;
        else
          next_state = s1;
      end
    default : next_state = s0;
      endcase
  end
  assign a = (state == s3) && (a == 0)? 1:0;
endmodule
