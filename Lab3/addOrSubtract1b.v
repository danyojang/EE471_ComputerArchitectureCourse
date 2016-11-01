`include "fullAdder.v"
`include "twoToOneMux.v"
module addOrSubtract1b(s, co, a, b, ci, sub);
	output s, co;
	input a, b, ci, sub;
	wire b0, nB;

	parameter delay = 50;

	not #delay n0(nB, b);

	twoToOneMux t0(b0, b, nB, sub);

	fullAdder f0(s, co, a, b0, ci);

endmodule
