module mux(input sel,
           input i0,i1,
           output y);

      assign y=sel?i1:i0;
endmodule
