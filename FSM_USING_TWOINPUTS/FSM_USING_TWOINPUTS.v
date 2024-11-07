// Code your design here
module jkfsm(
  input clk,rst,j,k,
  output reg y);
  
  parameter a=2'h0,
            b=2'h1;
  reg[1:0]state,next_state;
  always @(posedge clk or posedge rst) begin
    if(rst)
    state<=a;
    else 
      state<=next_state;
  end
  always@(state or j or k) begin
    case (state)
    a:begin
      if(j==0)
        next_state = a;
      else 
        next_state = b;
    end
      b:begin
        if(k==0)
          next_state=b;
        else
          next_state=a;
      end
      default:next_state=a;
    endcase
  end
  always@(state)begin
    case (state)
      a:y=0;
      b:y=1;
      default:y=0;
       
    endcase
        end
 
        endmodule
      
    
    
    
    
    
    
    
