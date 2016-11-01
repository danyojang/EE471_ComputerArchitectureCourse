`include "twoToOneMux.v"
module fourToOneMux(out, w, s0, s1);
	output out;
	input [3:0] w;
	input s0,s1;
	wire m0, m1;
	twoToOneMux mux0(m0, w[0], w[1], s0);
	twoToOneMux mux1(m1, w[2], w[3], s0);
	twoToOneMux mux2(out, m0, m1, s1); 	
	
endmodule
