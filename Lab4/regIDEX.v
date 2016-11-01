module regIDEX();
	output qALUSrcA, qALUSrcB, qALUOp, qMemWE, qMemToReg, qRegDst, qRegWE;
	input dALUSrcA, dALUSrcB, dALUOp, dMemWE, dMemToReg, dRegDst, dRegWE;
	
	// 32 bit reg Da
	// 32 bit reg Db
	// 5 bit reg Address of Da
	// 5 bit reg Address of Db

	D_FF (qALUSrcA, dALUSrcA, rst, clk);
	D_FF (qALUSrcB, dALUSrcB, rst, clk);
	D_FF (qALUOp, dALUOp, rst, clk);
	D_FF (qMemWE, dMemWE, rst, clk);
	D_FF (qMemToReg, dMemToReg, rst, clk);
	D_FF (qRegDst, dRegDst, rst, clk);
	D_FF (qRegWE, dRegWE, rst, clk);

endmodule