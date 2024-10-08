module tb_half_adder;
  reg a,b;
  wire sum,cout;
  half_adder ha
  (.a(a),.b(b),.sum(sum),.cout(cout));
   initial begin
    $monitor(
      "At time %0h: a=%b, b=%b, sum=%b, carry=%b",
      $time ,a,b,sum,cout);
    a=0; b=0;
    #1
    a=0; b=1;
    #1
    a=1; b=0;
    #1
    a=1; b=1;
  end
endmodule
