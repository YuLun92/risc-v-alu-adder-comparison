`timescale 1ns/1ps

module rca32_tb;

    reg  [31:0] a;
    reg  [31:0] b;
    reg         cin;

    wire [31:0] sum;
    wire        cout;

    rca32 dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $display("        A         B Cin |      SUM Cout");
        $display("------------------------------------------");

        a = 32'h00000007;
        b = 32'h00000003;
        cin = 0;
        #10;
        $display("%h %h  %b  | %h   %b", a, b, cin, sum, cout);

        a = 32'h0000FFFF;
        b = 32'h00000001;
        cin = 0;
        #10;
        $display("%h %h  %b  | %h   %b", a, b, cin, sum, cout);

        a = 32'hFFFFFFFF;
        b = 32'h00000001;
        cin = 0;
        #10;
        $display("%h %h  %b  | %h   %b", a, b, cin, sum, cout);

        a = 32'h00000007;
        b = 32'h00000003;
        cin = 1;
        #10;
        $display("%h %h  %b  | %h   %b", a, b, cin, sum, cout);

        $finish;
    end

endmodule
