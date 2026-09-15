module alu32 (
    input  wire [31:0] a,
    input  wire [31:0] b,
    input  wire [2:0]  alu_control,
    output reg [31:0] result
);
		wire [31:0] srl_result;
		wire [31:0] sll_result;
		wire [31:0] and_result;
		wire [31:0] or_result;
		wire [31:0] slt_result;
		wire [31:0] xor_result;
    wire sub_signal;
    wire [31:0] b_modified;
		wire [31:0] add_sub_result;
		wire add_sub_cout;

always@(*)begin
	case(alu_control)
			3'b000:result = add_sub_result;
			3'b001:result = add_sub_result;
			3'b010:result = and_result;
			3'b011:result = or_result;
			3'b100:result = xor_result;
			3'b101:result = slt_result;
		  3'b110:result = sll_result;
			3'b111:result = srl_result;

			default: result = 32'b0;

	endcase
end

    assign sub_signal = (alu_control == 3'b001);
    assign and_result = a & b;
		assign or_result  = a | b;
		assign xor_result = a ^ b;
    assign b_modified = b ^ {32{sub_signal}};
		assign slt_result = ($signed(a) < $signed(b)) ? 32'b1 : 32'b0;
		assign sll_result = a << b[4:0];
		assign srl_result = a >> b[4:0];



		rca32 u_rca32 (
        .a   (a),
        .b   (b_modified),
        .cin (sub_signal),
        .sum (add_sub_result),
        .cout(add_sub_cout)
    );

endmodule


