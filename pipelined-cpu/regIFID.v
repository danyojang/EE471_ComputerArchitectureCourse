module regIFID();
	// 32 bit reg of instruction
	reg32b instruction(qInstr, dInstr, 1'b1, rst, clk);
	// 32 bit reg of PC
	reg32b pc(qPC, dPC, 1'b1, rst, clk);
endmodule