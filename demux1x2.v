module demux1x2(
    input x,
    input s,
    output m,
    output n
);

assign m = s ? x : 1'b0;
assign n = s ? 1'b0 : x;

endmodule
