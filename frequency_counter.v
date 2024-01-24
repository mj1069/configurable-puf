module frequency_counter(
    input wire clk,
    input wire reset,
    output wire [15:0] count
);

reg [15:0] counter;

initial begin
    counter = 16'b0000000000000000;
end

always @(clk) begin
    if (reset)
        counter <= 16'b0;
    else
        counter <= counter + 1;
end

assign count = counter;

endmodule
