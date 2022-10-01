module half_adder(input A, B, output C_o, S)

assign C_o = A & B; // AND
assign S = A ^ B; // XOR

endmodule