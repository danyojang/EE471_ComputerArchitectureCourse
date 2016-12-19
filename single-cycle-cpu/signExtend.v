module signExtend(out, in);

	input [15:0] in;
	output [31:0] out;
	
	assign out = {{16{in[15]}}, in};
	
endmodule
/*	
module signExtendStimulus();

reg [15:0] in;
wire [31:0] out;

signExtend s(out, in);

initial	
	begin
		$monitor($time, " out=%b in=%b", out, in);
		in = 16'b0000000000000000;
		#1000;
		in = 16'b0000000000000001;
		#1000;
		in = 16'b1111111111111101;
		#1000;
		in = 16'b0100000000110001;
		#1000;
		in = 16'b0110000000000001;
		#1000;
		in = 16'b1000000000000001;
		#1000;
		in = 16'b0001111100000001;
		#1000;
		in = 16'b0100000000000001;
		#1000;
		in = 16'b1010000000000001;
	end
endmodule
*/
	

