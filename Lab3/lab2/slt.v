`include "addOrSubtract32b.v"

module slt(out, in1, in2);
	output [31:0] out;
	input [31:0] in1, in2;
	wire [31:0] sum;
	wire overflow, negative, co;

	addOrSubtract32b a(sum, co, negative, overflow, in1, in2, 1'b1);
	
	xor b(out[0], overflow, negative);
	assign out[31:1] = 31'b0000000000000000000000000000000;

endmodule
