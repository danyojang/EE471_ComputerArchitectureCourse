module regEXMEM();
	// 32 bit reg of Data
	// 5 bit reg Address of Data
	D_FF (qMemWE, dMemWE, rst, clk);
	D_FF (qMemToReg, dMemToReg, rst, clk);
	D_FF (qRegDst, dRegDst, rst, clk);
	D_FF (qRegWE, dRegWE, rst, clk);
endmodule