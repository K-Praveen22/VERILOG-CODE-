// Code your design here
module morethan_one_ones(input clk,rst,a, output y); 
  parameter s0 = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  
  reg [1:0] state, next_state;
  
  always@(posedge clk or negedge rst) begin
    if(!rst)
      state <= s0;
    else
      state <= next_state;
  end
  
  always@(state or a) begin
    case(state)
      s0 : begin
        if(a==0)
          next_state = s0;
        else
          next_state = s1;
      end
      
      s1 : begin
        if(a==0)
          next_state = s0;
        else
          next_state = s2;
      end
      
      s2 : begin
        if(a==0)
          next_state = s0;
        else
          next_state = s2;
      end
    endcase
  end
  
  assign y = (state==s2) && (a==1)?1:0;
  
endmodule
