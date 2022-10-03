module equality_comparator_tb();
logic a = 0;
logic b = 0;
wire out;

initial 
    begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end

equality_comparator U1(
    .A(a),
    .B(b),
    .OUT(out)
);

initial
begin
    a = 4'b1010;
    b = 4'b1010;
    #100;
    a = 4'b1011;
    b = 4'b1010;
    #100;
end

endmodule