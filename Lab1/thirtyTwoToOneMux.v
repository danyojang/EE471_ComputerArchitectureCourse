`include "eightToOneMux.v"

module thirtyTwoToOneMux(out, w, s);
	output out;
	input [31:0] w;
	input [4:0] s;
	wire [3:0] m;

	eightToOneMux m0(m[0], w[7:0], s[2:0]);
	eightToOneMux m1(m[1], w[15:8], s[2:0]);
	eightToOneMux m2(m[2], w[23:16], s[2:0]);
	eightToOneMux m3(m[3], w[31:24], s[2:0]);
	fourToOneMux m4(out, m[3:0], s[3], s[4]);

endmodule
