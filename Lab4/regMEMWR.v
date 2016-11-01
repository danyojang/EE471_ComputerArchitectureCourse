module regMEMWR();
	// 32 bit reg of Data for load
	reg32b dataLoad();
	// 32 bit reg of Data for Rd to WB
	reg32b dataRd();
	// 5 bit reg Address of Data (to check for forwarding)
	reg5b Rd();

	//ctrl
	D_FF (qRegDst, dRegDst, rst, clk);
	D_FF (qRegWE, dRegWE, rst, clk);
endmodule