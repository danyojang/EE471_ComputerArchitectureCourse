module twoToOneMux(out, low, high, sel);
	output out;
	input low, high, sel;
	wire nsel, outLow, outHigh;	

	not n1(nsel, sel);
	
	
	and a1(outLow, nsel, low);
	and a2(outHigh, sel, high);

	or o1(out, outLow, outHigh);
endmodule
