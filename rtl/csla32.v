module csla32 (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire        cin,
    output wire [31:0] sum,
    output wire        cout
);

    wire [8:0] carry;

    assign carry[0] = cin;
    assign cout = carry[8];
		  


		csla4 csla4_0 (
        .a   (a[3:0]),
        .b   (b[3:0]),
        .cin (carry[0]),
        .sum (sum[3:0]),
        .cout(carry[1])
    );

    csla4 csla4_1 (
        .a   (a[7:4]),
        .b   (b[7:4]),
        .cin (carry[1]),
        .sum (sum[7:4]),
        .cout(carry[2])
    );

    csla4 csla4_2 (
        .a   (a[11:8]),
        .b   (b[11:8]),
        .cin (carry[2]),
        .sum (sum[11:8]),
        .cout(carry[3])
    );

    csla4 csla4_3 (
        .a   (a[15:12]),
        .b   (b[15:12]),
        .cin (carry[3]),
        .sum (sum[15:12]),
        .cout(carry[4])
    );

    csla4 csla4_4 (
        .a   (a[19:16]),
        .b   (b[19:16]),
        .cin (carry[4]),
        .sum (sum[19:16]),
        .cout(carry[5])
    );

    csla4 csla4_5 (
        .a   (a[23:20]),
        .b   (b[23:20]),
        .cin (carry[5]),
        .sum (sum[23:20]),
        .cout(carry[6])
    );

    csla4 csla4_6 (
        .a   (a[27:24]),
        .b   (b[27:24]),
        .cin (carry[6]),
        .sum (sum[27:24]),
        .cout(carry[7])
    );

    csla4 csla4_7 (
        .a   (a[31:28]),
        .b   (b[31:28]),
        .cin (carry[7]),
        .sum (sum[31:28]),
        .cout(carry[8])
    );
endmodule
