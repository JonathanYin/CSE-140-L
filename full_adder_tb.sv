module full_adder_tb;
logic a = 0;
logic b = 0;
logic cin = 0;

wire cout, sum;

initial 
begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
end

full_adder(
    .A(a),
    .B(b),
    .C_i(cin),
    .C_o(cout),
    .S(sum)
);

initial
begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    #100;
end

endmodule