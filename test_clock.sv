module ctr1(
    input clk,
    reset,
    output logic C
);

logic newC; // 0 1 X Z

always_comb newC = C + 1;

always_ff @ (posedge clk)
if (reset)
C <= 0;
else 
C <= newC;

endmodule
