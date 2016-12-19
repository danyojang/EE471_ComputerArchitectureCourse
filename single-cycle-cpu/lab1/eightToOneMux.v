`include "fourToOneMux.v"

module eightToOneMux(out, w, s);
	output out;
	input [7:0] w;
	input [2:0] s;
	wire m0, m1;

	fourToOneMux mux0(m0, w[3:0], s[0], s[1]);
	fourToOneMux mux1(m1, w[7:4], s[0], s[1]);
	twoToOneMux mux2(out, m0, m1, s[2]);

endmodule

