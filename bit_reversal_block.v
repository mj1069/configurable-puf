module bit_reversal_block(
  input x,
  input y,
  input s,
  output m,
  output n
);

wire a1, a2, b1, b2;

demux1x2 m1(.x(x), .s(s), .m(a1), .n(b1));
demux1x2 m2(.x(y), .s(s), .m(a2), .n(b2));
mux2x1 m3(.a(~a1), .b(~b1), .s(s), .c(m));
mux2x1 m4(.a(~a2), .b(~b22 ,.s(s) ,.c(n));

endmodule
