// Code your design here
module comparator(
  input[3:0]a,b,
  output reg a_grt_b,a_less_b,a_eq_b);
  always @(*)begin
    a_grt_b= 0; a_less_b= 0; a_eq_b=0;
    if (a>b)
      a_grt_b=1'b1;
    else if(a<b) 
      a_less_b=1'b1;
    else 
      a_eq_b=1'b1;
  end
endmodule
