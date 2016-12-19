`include "zero.v"
`include "slt.v"
`include "norFunct.v"
`include "fourToOneMux.v"

module alu(out, carryout, zero, overflow, negative, aIn, bIn, control);
	output [31:0] out;
	output zero, overflow, carryout, negative;	
	input [31:0] aIn, bIn;
	input [1:0] control;
	
	wire [31:0] addOutput, subOutput, sltOutput, norOutput;
	wire negativeAdd, carryoutAdd, negativeSub, carryoutSub, overflowAdd, overflowSub;
	wire nor1, nor2, nor3, nor4, nor5, nor6, nor7, nor8, and1, and2;

	norFunct norAB(norOutput, aIn, bIn);
	addOrSubtract32b add(addOutput, carryoutAdd, negativeAdd, overflowAdd, aIn, bIn, 1'b0);
	addOrSubtract32b sub(subOutput, carryoutSub, negativeSub, overflowSub, aIn, bIn, 1'b1);
	slt sltAB(sltOutput, aIn, bIn);

	twoToOneMux carryoutDecider(carryout, carryoutAdd, carryoutSub, control[0]); 
	twoToOneMux overflowDecider(overflow, overflowAdd, overflowSub, control[0]);
	assign negative = out[31];
	zero zeroFlag(zero, out);

	fourToOneMux a(out[0], norOutput[0], sltOutput[0], addOutput[0], subOutput[0], control[0], control[1]);
	fourToOneMux b(out[1], norOutput[1], sltOutput[1], addOutput[1], subOutput[1], control[0], control[1]);
	fourToOneMux c(out[2], norOutput[2], sltOutput[2], addOutput[2], subOutput[2], control[0], control[1]);
	fourToOneMux d(out[3], norOutput[3], sltOutput[3], addOutput[3], subOutput[3], control[0], control[1]);
	fourToOneMux e(out[4], norOutput[4], sltOutput[4], addOutput[4], subOutput[4], control[0], control[1]);
	fourToOneMux f(out[5], norOutput[5], sltOutput[5], addOutput[5], subOutput[5], control[0], control[1]);
	fourToOneMux g(out[6], norOutput[6], sltOutput[6], addOutput[6], subOutput[6], control[0], control[1]);
	fourToOneMux h(out[7], norOutput[7], sltOutput[7], addOutput[7], subOutput[7], control[0], control[1]);
	fourToOneMux i(out[8], norOutput[8], sltOutput[8], addOutput[8], subOutput[8], control[0], control[1]);
	fourToOneMux j(out[9], norOutput[9], sltOutput[9], addOutput[9], subOutput[9], control[0], control[1]);
	fourToOneMux k(out[10], norOutput[10], sltOutput[10], addOutput[10], subOutput[10], control[0], control[1]);
	fourToOneMux l(out[11], norOutput[11], sltOutput[11], addOutput[11], subOutput[11], control[0], control[1]);
	fourToOneMux m(out[12], norOutput[12], sltOutput[12], addOutput[12], subOutput[12], control[0], control[1]);
	fourToOneMux n(out[13], norOutput[13], sltOutput[13], addOutput[13], subOutput[13], control[0], control[1]);
	fourToOneMux o(out[14], norOutput[14], sltOutput[14], addOutput[14], subOutput[14], control[0], control[1]);
	fourToOneMux p(out[15], norOutput[15], sltOutput[15], addOutput[15], subOutput[15], control[0], control[1]);
	fourToOneMux q(out[16], norOutput[16], sltOutput[16], addOutput[16], subOutput[16], control[0], control[1]);
	fourToOneMux r(out[17], norOutput[17], sltOutput[17], addOutput[17], subOutput[17], control[0], control[1]);
	fourToOneMux s(out[18], norOutput[18], sltOutput[18], addOutput[18], subOutput[18], control[0], control[1]);
	fourToOneMux t(out[19], norOutput[19], sltOutput[19], addOutput[19], subOutput[19], control[0], control[1]);
	fourToOneMux u(out[20], norOutput[20], sltOutput[20], addOutput[20], subOutput[20], control[0], control[1]);
	fourToOneMux v(out[21], norOutput[21], sltOutput[21], addOutput[21], subOutput[21], control[0], control[1]);
	fourToOneMux w(out[22], norOutput[22], sltOutput[22], addOutput[22], subOutput[22], control[0], control[1]);
	fourToOneMux x(out[23], norOutput[23], sltOutput[23], addOutput[23], subOutput[23], control[0], control[1]);
	fourToOneMux y(out[24], norOutput[24], sltOutput[24], addOutput[24], subOutput[24], control[0], control[1]);
	fourToOneMux z(out[25], norOutput[25], sltOutput[25], addOutput[25], subOutput[25], control[0], control[1]);
	fourToOneMux aa(out[26], norOutput[26], sltOutput[26], addOutput[26], subOutput[26], control[0], control[1]);
	fourToOneMux ab(out[27], norOutput[27], sltOutput[27], addOutput[27], subOutput[27], control[0], control[1]);
	fourToOneMux ac(out[28], norOutput[28], sltOutput[28], addOutput[28], subOutput[28], control[0], control[1]);
	fourToOneMux ad(out[29], norOutput[29], sltOutput[29], addOutput[29], subOutput[29], control[0], control[1]);
	fourToOneMux ae(out[30], norOutput[30], sltOutput[30], addOutput[30], subOutput[30], control[0], control[1]);
	fourToOneMux af(out[31], norOutput[31], sltOutput[31], addOutput[31], subOutput[31], control[0], control[1]);

endmodule
