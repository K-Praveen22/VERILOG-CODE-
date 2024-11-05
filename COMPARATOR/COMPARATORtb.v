// Code your testbench here
// or browse Examples
module tb;
  reg [3:0]a,b;
  wire a_grt_b,a_less_b,a_eq_b;
  comparator comp(a,b,a_grt_b,a_less_b,a_eq_b);
  initial begin
    $monitor("a=%0h,b=%0h,a_grt_b=%0h,a_less_b=%0h,a_eq_b=%0h",a,b,a_grt_b,a_less_b,a_eq_b);
             repeat(5)begin
               a=$random;b=$random;#3;
             end
             end
             endmodule
               
