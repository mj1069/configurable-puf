module comparator_16bit (
  input [15:0] a,
  input [15:0] b,
  output eq
);
reg [15:0] difference;
reg out;

always @(a,b)
begin
  difference <= a - b;
  if(difference == 0) out <= 1'b1;
  else out <= 1'b0;
end

assign eq = out;
endmodule
