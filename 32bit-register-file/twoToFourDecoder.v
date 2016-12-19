module twoToFourDecoder(y, w, en);
	output [3:0] y;
	input [1:0] w;
	input en;
	wire nw0, nw1;

	not n1 (nw0, w[0]);
	not n2 (nw1, w[1]);
	
	and a1 (y[0], nw0, nw1, en);
	and a2 (y[1], w[0], nw1, en);
	and a3 (y[2], nw0, w[1], en);
	and a4 (y[3], w[0], w[1], en);

endmodule
