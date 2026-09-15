`timescale 1ns/1ps

module cla4_tb;

    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;

    wire [3:0] sum;
    wire       cout;

    cla4 dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display(" A    B   Cin | SUM  Cout");
        $display("--------------------------");

        a = 4'b0111;
        b = 4'b0011;
        cin = 0;
        #10;
        $display("%b %b   %b  | %b    %b", a, b, cin, sum, cout);

        a = 4'b1111;
        b = 4'b0001;
        cin = 0;
        #10;
        $display("%b %b   %b  | %b    %b", a, b, cin, sum, cout);

        a = 4'b1010;
        b = 4'b0101;
        cin = 0;
        #10;
        $display("%b %b   %b  | %b    %b", a, b, cin, sum, cout);

        a = 4'b0001;
        b = 4'b0001;
        cin = 1;
        #10;
        $display("%b %b   %b  | %b    %b", a, b, cin, sum, cout);

        $finish;
    end

endmodule
