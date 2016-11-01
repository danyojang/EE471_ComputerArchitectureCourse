module concatenate(out, firstFour, target);
	input [3:0] firstFour;
	input [25:0] target;
	output [29:0] out;

	assign out = {firstFour, target};
	
endmodule

/*
module concatenateStimulus();

reg [3:0] firstFour;
reg [25:0] target;
wire [29:0] out;

concatenate c(out, firstFour, target);

initial	
	begin
		$monitor($time, " out=%b fF=%b tar=%b", 			out, firstFour, target);
		firstFour = 4'b0000;
		target = 26'b00000000000000000000000000;
		#1000;
		firstFour = 4'b0100;
		target = 26'b10000000000000000000000001;
		#1000;
		firstFour = 4'b0110;
		target = 26'b00000000111100000000000000;
		#1000;
		firstFour = 4'b1101;
		target = 26'b11000000000000001111110000;
		#1000;
		firstFour = 4'b1111;
		target = 26'b01000100000010000000001101;
		#1000;
		firstFour = 4'b0010;
		target = 26'b11111001101000111001000010;
		#1000;
		firstFour = 4'b0001;
		target = 26'b00000000010010101100000000;
		#1000;
		firstFour = 4'b1001;
		target = 26'b11100000000001110000000000;
		#1000;

	end
endmodule
*/

	

