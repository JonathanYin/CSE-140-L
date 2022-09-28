module ctr1tb;

logic clock, 
reset;

wire out;

ctr1 ct( // refers to the module from test_clock.sv
    .clk (clock),
    .reset (reset),
    .C (out)
);

endmodule