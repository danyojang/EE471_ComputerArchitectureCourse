module reg16b(q, d, rst, clk);
	output [15:0] q;
	input [15:0] d;
	input rst, clk;
	D_FF d0(q[0], d[0], rst, clk);
	D_FF d1(q[1], d[1], rst, clk);
	D_FF d2(q[2], d[2], rst, clk);
	D_FF d3(q[3], d[3], rst, clk);
	D_FF d4(q[4], d[4], rst, clk);
	D_FF d5(q[5], d[5], rst, clk);
	D_FF d6(q[6], d[6], rst, clk);
	D_FF d7(q[7], d[7], rst, clk);
	D_FF d8(q[8], d[8], rst, clk);
	D_FF d9(q[9], d[9], rst, clk);
	D_FF d10(q[10], d[10], rst, clk);
	D_FF d11(q[11], d[11], rst, clk);
	D_FF d12(q[12], d[12], rst, clk);
	D_FF d13(q[13], d[13], rst, clk);
	D_FF d14(q[14], d[14], rst, clk);
	D_FF d15(q[15], d[15], rst, clk);

endmodule