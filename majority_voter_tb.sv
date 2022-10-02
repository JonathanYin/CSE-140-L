module majority_voter_tb();
logic a, b, c;
wire out;

  initial 
    begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end

majority_voter(
    .A(a),
    .B(b),
    .C(c),
    .OUT(out)
);

initial
begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    #100;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    #100;
    a = 1'b0;
    b = 1'b0;
    c = 1'b1;
    #100;
    a = 1'b0;
    b = 1'b1;
    c = 1'b1;
    #100;
    a = 1'b1;
    b = 1'b0;
    c = 1'b0;
    #100;
    a = 1'b1;
    b = 1'b0;
    c = 1'b1;
    #100;
    a = 1'b1;
    b = 1'b1;
    c = 1'b0;
    #100;
    a = 1'b1;
    b = 1'b1;
    c = 1'b1;
    #100;
end

endmodule