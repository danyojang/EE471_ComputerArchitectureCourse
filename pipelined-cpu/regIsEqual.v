module regIsEqual();
	output equal;
	input [4:0] r0, r1;
	wire xnorOut0, xnorOut1, xnorOut2, xnorOut3, xnorOut4;

	xnor x0(xnorOut0, r0[0], r1[0]);
	xnor x1(xnorOut1, r0[1], r1[1]);
	xnor x2(xnorOut2, r0[2], r1[2]);
	xnor x3(xnorOut3, r0[3], r1[3]);
	xnor x4(xnorOut4, r0[4], r1[4]);
	and a0(equal, xnorOut0, xnorOut1, xnorOut2, xnorOut3, xnorOut4);
endmodule
