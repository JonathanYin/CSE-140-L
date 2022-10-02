module full_adder(input A, B, C_i, output C_o, S)
assign S = (A ^ B) ^ C_i;
assign C_o = (A & B) | (B & C_i) | (C_i & A);

endmodule