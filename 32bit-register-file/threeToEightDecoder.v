`include "twoToFourDecoder.v"

module threeToEightDecoder(y, w, en);
	output [7:0] y;
	input [2:0] w;
	input en;
	wire nw2, en1, en2;

	twoToFourDecoder first(y[3:0], w[1:0], en1);
	twoToFourDecoder second(y[7:4], w[1:0], en2);
	
	not n1(nw2, w[2]);
	and a1(en1, nw2, en);
	and a2(en2, w[2], en);

endmodule
