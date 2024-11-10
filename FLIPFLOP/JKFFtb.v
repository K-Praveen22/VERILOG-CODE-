// Code your testbench here
// or browse Examples
module tb;
    reg j,k,clk,rst;
    wire q,q_bar;
    
  jkff jk (.j(j),.k(k),.clk(clk),.rst(rst),.q(q),.q_bar(q_bar));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        j = 0;
        k = 0;
        rst = 1; 
        #10 rst = 0;
        j = 0; k = 0;
        #10;
        j = 1; k = 0;
        #10;
        j = 0; k = 1;
        #10;
        j = 1; k = 1;
        #20;
        $finish;
    end
    initial begin
      $monitor("At time %0t: j=%b, k=%b, q=%b, q_bar=%b", $time, j, k, q, q_bar);
    end
endmodule
