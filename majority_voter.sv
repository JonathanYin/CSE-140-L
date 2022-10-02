module majority_voter(input A, B, C, output OUT);
assign OUT = (A & B) | (B & C) | (C & A); 

endmodule