module tristate_block (#parameter N = 32)(
  input in, [N-1:0] selection,
  output out
);
  wire [N-2:0] w1;
  wire [N-2:0] w2;
  wire q, s;
  wire [15:0] count1, count2;

  frequency_counter c1(q, reset, count1);
  frequency_counter c2(s, reset, count2);
  comparator_16bit comp(count1, count2, cout);
  scrambler scr(selection, rout, challenge);

  switching_block s0(in,in,in,challenge[0],w10[0],w20[0]);

  generate
  genvar i;
    for (i = 0; i < N; i = i + 3) begin: block
      switching_block switch (wi[i],wi[i+1],challenge[i+1],wi[i+1],inverter invert(count[i+1],wi[i+4]);
      bit_reverseal_block bit_reverse (wi[i+2],wi[i+3], challenge[i+3],wi[i+3]);
    end
  endgenerate
  bit_reversal_block sn(wi[N-2]. wi[N-21,challenge[N-I].q,s);
  assign out = rout ^ cout;
endmodule
