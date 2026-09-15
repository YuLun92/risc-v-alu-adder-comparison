`timescale 1ns/1ps

module alu32_tb;

    reg  [31:0] a;
    reg  [31:0] b;
    reg  [2:0]  alu_control;

    wire [31:0] result;

    alu32 dut (
        .a(a),
        .b(b),
        .alu_control(alu_control),
        .result(result)
    );

    initial begin
				

				$dumpfile("alu32.vcd");
				$dumpvars(0, alu32_tb);
        

				a = 32'h0000000C;
        b = 32'h00000003;

        $display("CTRL  OP   RESULT");
        $display("----------------");

        alu_control = 3'b000; #10;
        $display("000   ADD  %h", result);

        alu_control = 3'b001; #10;
        $display("001   SUB  %h", result);

        alu_control = 3'b010; #10;
        $display("010   AND  %h", result);

        alu_control = 3'b011; #10;
        $display("011   OR   %h", result);

        alu_control = 3'b100; #10;
        $display("100   XOR  %h", result);
				
				alu_control = 3'b101;

        a = 32'h00000003;
        b = 32'h00000007;
        #10;
        $display("101   SLT  %h", result);

        a = 32'hFFFFFFFF;
        b = 32'h00000001;
        #10;
        $display("101   SLT  %h", result);
        
			  a = 32'h00000003;
        b = 32'h00000002;
        alu_control = 3'b110;
        #10;//＃10代表等待 10 個 time units，再執行下一行。
        $display("110   SLL  %h", result);

				a = 32'h00000003;
        b = 32'h00000002;
        alu_control = 3'b111;
        #10;
        $display("111   SRL  %h", result);
				$finish;
    end

endmodule
