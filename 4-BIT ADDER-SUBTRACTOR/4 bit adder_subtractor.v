// Code your design here
module full_adder(
input a,b,cin,
output sum,cout);
assign sum=a^b^cin;
  assign cout=(a&b)|(b&cin)|(a&cin);
endmodule
  module rcas #(parameter size=4)(
    input [size -1:0]a,b,
    input ctrl,
    output [size-1:0]s,cout);
    wire [size-1:0]bc;
    genvar g;
    assign bc[0]=b[0]^ctrl;
    full_adder fa0(a[0],bc[0],ctrl,s[0],cout[0]);
generate
  for(g=1;g<size;g++)begin
    assign bc[g]=b[g]^ctrl;
      full_adder fa(a[g],bc[g],cout[g-1],s[g],cout[g]);
  end
endgenerate
 endmodule          
    
                   
                   
                   
                   
                   
                   
    
    
