module full_adder(input A, B, C_i, output C_o, S);
assign C_o = (A & B) | (B & C_i) | (C_i & A);
assign S = (A ^ B) ^ C_i;

endmodule