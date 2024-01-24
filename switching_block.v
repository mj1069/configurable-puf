module switching_block(
    input x,
    input y,
    input s,
    output m,
    output n
);

mux2x1 m1(.a(x), .b(y), .s(s), .c(m));
mux2x1 m2(.a(y), .b(x), .s(s), .c(n));

endmodule
