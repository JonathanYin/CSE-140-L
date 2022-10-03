module equality_comparator #(parameter N = 4) (input [N-1:0] A, B, output OUT);

assign OUT = (A == B);

endmodule