module reg5b();
	output [15:0] q;
	input [15:0] d;
	input rst, clk;
	D_FF d0(q[0], d[0], rst, clk);
	D_FF d1(q[1], d[1], rst, clk);
	D_FF d2(q[2], d[2], rst, clk);
	D_FF d3(q[3], d[3], rst, clk);
	D_FF d4(q[4], d[4], rst, clk);
endmodule