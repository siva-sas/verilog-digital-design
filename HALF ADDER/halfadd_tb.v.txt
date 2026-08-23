`timescale 1ns/1ps

module half_adder_tb;

    reg  a, b;
    wire sum, carry;

    halfadd uut (
      .a(a),
      .b(b),
      .sum(sum),
      .carry(carry)
    );

    initial begin
        $display("A\tB\tSum\tCarry");
      $monitor("%b\t%b\t%b\t%b", a, b, sum, carry);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

    initial begin
      $dumpfile("halfadd.vcd");
        $dumpvars(0, half_adder_tb);
    end

endmodule