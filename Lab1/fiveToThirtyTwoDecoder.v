`include "threeToEightDecoder.v"

module fiveToThirtyTwoDecoder(y,w,en);

	output [31:0] y;
	input [4:0] w;
	input en;
	wire [3:0] branchEnable;
	
	threeToEightDecoder zero(y[7:0], w[2:0], branchEnable[0]);
	threeToEightDecoder one(y[15:8], w[2:0], branchEnable[1]);
	threeToEightDecoder two(y[23:16], w[2:0], branchEnable[2]);
	threeToEightDecoder three(y[31:24], w[2:0], branchEnable[3]);
	twoToFourDecoder branch(branchEnable[3:0], w[4:3], en);
	
endmodule	


	
