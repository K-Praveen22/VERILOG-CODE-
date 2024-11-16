// Code your design here

module syn_fifo(
  input clk, reset, write_e, read_e,
  input [7:0] data_in,
  output reg [7:0] data_out,
  output wire full,empty,
  output reg [2:0] write_ptr, read_ptr
);

  reg [7:0] memory[7:0];

  always @(posedge clk)
  begin
    if (reset)
    begin
      write_ptr <= 0;
      read_ptr<= 0;
      data_out = 0;
    end
  end

  always @(posedge clk)
  begin
    if (write_e && !full)
    begin
      memory[write_ptr] <= data_in;
      write_ptr <= write_ptr+ 1;
    end
  end
  always @(posedge clk)
  begin
    if (read_e && !empty)
    begin
      data_out <= memory[read_ptr];
      read_ptr<= read_ptr + 1;
    end
  end
  assign full = (write_ptr + 1'b1 == read_ptr);
  assign empty = (write_ptr == read_ptr);

endmodule
