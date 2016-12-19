module fullAdder(s, co, a, b, ci);

	output s, co;
	input a, b, ci;
	wire and0, and1, and2;	

	parameter delay = 50;
	
	xor #delay x0(s, a, b, ci);
	
	and #delay a0(and0, a, b);
	and #delay a1(and1, a, ci);
	and #delay a2(and2, b, ci);

	or #delay o1(co, and0, and1, and2);

endmodule

