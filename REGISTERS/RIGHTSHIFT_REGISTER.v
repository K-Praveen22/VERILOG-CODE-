// Code your design here
module rightshift_register (
    input clk, rst,d,
    output reg [3:0] q);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else 
            q <= {1'b0, q[3:1]};
    end
endmodule
