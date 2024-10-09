module full_adder
  (input a,b,cin,output s,cout);
  assign s=a^b^cin;
  assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry_adder #(parameter size=4)(
  input[size-1:0]a,b,
  input cin,
  output [size-1:0]s,cout);
  genvar g;
  full_adder fa0(a[0], b[0], cin, s[0], cout[0]);
  generate
    for (g=1;g<size;g++)begin
      full_adder fa(a[g],b[g],cout[g-1],s[g],cout[g]);
    end
  endgenerate
endmodule
