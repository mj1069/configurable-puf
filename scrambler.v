module scrambler #(parameter N = 128)(
input [N-1:0] selection,
input aout,
output reg [N-1:0] challenge
);
integer i;

initial begin
challenge = selection;
end

always @(selection or aout) begin
for (i = 0; i < N; i = i + 1) begin
if (i == 0) begin
challenge[i] = aout ^ selection[i];
end else begin
challenge[i] = challenge[i-1] ^ selection[i];
end end end

endmodule
