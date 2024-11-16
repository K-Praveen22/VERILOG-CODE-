// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
module sfifo_tb;
  reg clk,reset,write_e,read_e;
  reg [7:0]data_in;
  reg [2:0]write_ptr,read_ptr;
  reg [7:0]memory[7:0];
  wire [7:0]data_out;
  wire full,empty;
  
  syn_fifo dut(clk,reset,write_e,read_e,data_in,data_out,full,empty,write_ptr,read_ptr);
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
 
  initial begin
    reset=1;
     write_e=1;
     read_e=0;
    #15
    reset=0;
    
    write_e=1;
    read_e=0;
    data_in=8'b00000001;
    #10
    data_in=8'b00001001;
    #10
    data_in=8'b00000111;
    #10
    data_in=8'b00000011;
    #10
    data_in=8'b00000100;
    #10
    data_in=8'b00000110;
    #10
     data_in=8'b00001000;
    #10
    data_in=8'b00001010;
    #10 
    read_e=1;
    write_e=0;
    #200
    $finish;
  end
  
   initial begin
     $dumpfile("waves.vcd");
     $dumpvars;
     $monitor("time=%d, clk=%d, reset=%d, write_e=%d, read_e=%d, data_in=%d, data_out=%d, full=%d, empty=%d",$time,clk,reset,write_e,read_e,data_in,data_out,full,empty);
  end

endmodule
