
module fourToOneMux(out, i0, i1, i2, i3, s0, s1);
	output out;
	input i0, i1, i2, i3;
	input s0,s1;
	wire m0, m1;
	twoToOneMux mux0(m0, i0, i1, s0);
	twoToOneMux mux1(m1, i2, i3, s0);
	twoToOneMux mux2(out, m0, m1, s1); 	
	
endmodule
