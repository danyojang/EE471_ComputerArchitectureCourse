module twoToOneMux(out, low, high, sel);
	output out;
	input low, high, sel;
	wire nsel, outLow, outHigh;	

	not #50 n1(nsel, sel);
	
	
	and #50 a1(outLow, nsel, low);
	and #50 a2(outHigh, sel, high);

	or #50 o1(out, outLow, outHigh);
endmodule
