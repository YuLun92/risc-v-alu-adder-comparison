module rca4 (
    input  wire [3:0] a,
    input  wire [3:0] b,
    input  wire       cin,
    output wire [3:0] sum,
    output wire       cout
);

    wire [4:0] carry;

    assign carry[0] = cin;
    assign cout = carry[4];

    genvar i;

    generate
        for (i = 0; i < 4; i = i + 1) begin : FA_CHAIN
            full_adder fa (
                .a   (a[i]),
                .b   (b[i]),
                .cin (carry[i]),
                .sum (sum[i]),
                .cout(carry[i+1])
            );
        end
    endgenerate

endmodule
