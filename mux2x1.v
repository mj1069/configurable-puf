module mux2x1 (
    input a,
    input b,
    input s,
    output c
);
assign c = s ? b : a;
endmodule
