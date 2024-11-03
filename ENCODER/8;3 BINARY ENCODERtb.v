// Code your testbench here
// or browse Examples 
module tb;
  reg[7:0]d;
  wire[2:0]y;
  int i;
  binary_encoder bc(d,y);
  initial begin
    d=8'b1;#3;
    for(i=0;i<8;i++)begin
      $display("d=%h,y=%h",d,i,y);
      
    end
  end
endmodule
