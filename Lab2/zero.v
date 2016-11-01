module zero(out, a);
	
	output out;
	input [31:0] a;
	wire [7:0] nOr;
	wire and1, and2;	

	nor #50 n1(nOr[0], a[0], a[1], a[2], a[3]);
	nor #50 n2(nOr[1], a[4], a[5], a[6], a[7]);
	nor #50 n3(nOr[2], a[8], a[9], a[10], a[11]);
	nor #50 n4(nOr[3], a[12], a[13], a[14], a[15]);
	nor #50 n5(nOr[4], a[16], a[17], a[18], a[19]);
	nor #50 n6(nOr[5], a[20], a[21], a[22], a[23]);
	nor #50 n7(nOr[6], a[24], a[25], a[26], a[27]);
	nor #50 n8(nOr[7], a[28], a[29], a[30], a[31]);
	and #50 a1(and1, nOr[0] , nOr[1], nOr[2], nOr[3]);
	and #50 a2(and2, nOr[4], nOr[5], nOr[6], nOr[7]);
	and #50 a3(out, and1, and2);

endmodule
