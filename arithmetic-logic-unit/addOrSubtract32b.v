`include "addOrSubtract1b.v"
module addOrSubtract32b(s, co, negative, overflow, a, b, sub);
	output [31:0] s; 
	output co, overflow, negative;
	input [31:0] a, b;
	input sub;
	wire [30:0] coBit;
	parameter delay = 50;

	addOrSubtract1b a0(s[0], coBit[0], a[0], b[0], sub, sub);
	addOrSubtract1b a1(s[1], coBit[1], a[1], b[1], coBit[0], sub);
	addOrSubtract1b a2(s[2], coBit[2], a[2], b[2], coBit[1], sub);
	addOrSubtract1b a3(s[3], coBit[3], a[3], b[3], coBit[2], sub);
	addOrSubtract1b a4(s[4], coBit[4], a[4], b[4], coBit[3], sub);
	addOrSubtract1b a5(s[5], coBit[5], a[5], b[5], coBit[4], sub);
	addOrSubtract1b a6(s[6], coBit[6], a[6], b[6], coBit[5], sub);
	addOrSubtract1b a7(s[7], coBit[7], a[7], b[7], coBit[6], sub);
	addOrSubtract1b a8(s[8], coBit[8], a[8], b[8], coBit[7], sub);
	addOrSubtract1b a9(s[9], coBit[9], a[9], b[9], coBit[8], sub);
	addOrSubtract1b a10(s[10], coBit[10], a[10], b[10], coBit[9], sub);
	addOrSubtract1b a11(s[11], coBit[11], a[11], b[11], coBit[10], sub);
	addOrSubtract1b a12(s[12], coBit[12], a[12], b[12], coBit[11], sub);
	addOrSubtract1b a13(s[13], coBit[13], a[13], b[13], coBit[12], sub);
	addOrSubtract1b a14(s[14], coBit[14], a[14], b[14], coBit[13], sub);
	addOrSubtract1b a15(s[15], coBit[15], a[15], b[15], coBit[14], sub);
	addOrSubtract1b a16(s[16], coBit[16], a[16], b[16], coBit[15], sub);
	addOrSubtract1b a17(s[17], coBit[17], a[17], b[17], coBit[16], sub);
	addOrSubtract1b a18(s[18], coBit[18], a[18], b[18], coBit[17], sub);
	addOrSubtract1b a19(s[19], coBit[19], a[19], b[19], coBit[18], sub);
	addOrSubtract1b a20(s[20], coBit[20], a[20], b[20], coBit[19], sub);
	addOrSubtract1b a21(s[21], coBit[21], a[21], b[21], coBit[20], sub);
	addOrSubtract1b a22(s[22], coBit[22], a[22], b[22], coBit[21], sub);
	addOrSubtract1b a23(s[23], coBit[23], a[23], b[23], coBit[22], sub);
	addOrSubtract1b a24(s[24], coBit[24], a[24], b[24], coBit[23], sub);
	addOrSubtract1b a25(s[25], coBit[25], a[25], b[25], coBit[24], sub);
	addOrSubtract1b a26(s[26], coBit[26], a[26], b[26], coBit[25], sub);
	addOrSubtract1b a27(s[27], coBit[27], a[27], b[27], coBit[26], sub);
	addOrSubtract1b a28(s[28], coBit[28], a[28], b[28], coBit[27], sub);
	addOrSubtract1b a29(s[29], coBit[29], a[29], b[29], coBit[28], sub);
	addOrSubtract1b a30(s[30], coBit[30], a[30], b[30], coBit[29], sub);
	addOrSubtract1b a31(s[31], co, a[31], b[31], coBit[30], sub);

	assign negative = s[31];

	xor #delay oflow(overflow, co, coBit[30]);

endmodule
