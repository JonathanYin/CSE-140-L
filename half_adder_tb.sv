module half_adder_tb;
  
  logic a = 0;
  logic b = 0;
  
  wire c, sum;
  
  initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end

  half_adder U1(
    .A(a),
    .B(b),
    .C_o(c),
    .S(sum)
  );
  
  initial
    begin
      a = 1'b0;
      b = 1'b0;
      #100
      a = 1'b1;
      b = 1'b0;
      #100
      a = 1'b0;
      b = 1'b1;
      #100
      a = 1'b1;
      b = 1'b1;
      #100
    end
  
endmodule