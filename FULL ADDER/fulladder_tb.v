`timescale 1ns/1ps
module fulladd_tb;
    reg a, b, cin;
    wire sum, cout;

    fulladd uut (
        .a(a), .b(b), .cin(cin),
        .sum(sum), .cout(cout)
    );
  
  

    initial begin
      $display("a\tb\tcin\t|sum\tcout");
      $monitor("%b\t%b\t%b\t|%b\t%b",a,b,cin,sum,cout);
        a=0; b=0; cin=0; #10;
        a=0; b=0; cin=1; #10;
        a=0; b=1; cin=0; #10;
        a=0; b=1; cin=1; #10;
        a=1; b=0; cin=0; #10;
        a=1; b=0; cin=1; #10;
        a=1; b=1; cin=0; #10;
        a=1; b=1; cin=1; #10;
        $finish;
    end
  initial begin
    $dumpfile("fulladd_tb.vcd");
    $dumpvars(0, fulladd_tb);
  end
  
endmodule