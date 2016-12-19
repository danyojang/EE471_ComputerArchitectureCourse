`include "D_FF.v"
module pc(out, d, rst, clk);
	input [29:0] d;
	input rst, clk;
	output [29:0] out;

	D_FF bit0(out[0], d[0], rst, clk);
 	D_FF bit1(out[1], d[1], rst, clk);
	D_FF bit2(out[2], d[2], rst, clk);
	D_FF bit3(out[3], d[3], rst, clk);
	D_FF bit4(out[4], d[4], rst, clk);
	D_FF bit5(out[5], d[5], rst, clk);
	D_FF bit6(out[6], d[6], rst, clk);
	D_FF bit7(out[7], d[7], rst, clk);
	D_FF bit8(out[8], d[8], rst, clk);
	D_FF bit9(out[9], d[9], rst, clk);
	D_FF bit10(out[10], d[10], rst, clk);
	D_FF bit11(out[11], d[11], rst, clk);
	D_FF bit12(out[12], d[12], rst, clk);
	D_FF bit13(out[13], d[13], rst, clk);
	D_FF bit14(out[14], d[14], rst, clk);
	D_FF bit15(out[15], d[15], rst, clk);
	D_FF bit16(out[16], d[16], rst, clk);
	D_FF bit17(out[17], d[17], rst, clk);
	D_FF bit18(out[18], d[18], rst, clk);
	D_FF bit19(out[19], d[19], rst, clk);
	D_FF bit20(out[20], d[20], rst, clk);
	D_FF bit21(out[21], d[21], rst, clk);
	D_FF bit22(out[22], d[22], rst, clk);
	D_FF bit23(out[23], d[23], rst, clk);
	D_FF bit24(out[24], d[24], rst, clk);
	D_FF bit25(out[25], d[25], rst, clk);
	D_FF bit26(out[26], d[26], rst, clk);
	D_FF bit27(out[27], d[27], rst, clk);
	D_FF bit28(out[28], d[28], rst, clk);
	D_FF bit29(out[29], d[29], rst, clk);

endmodule
/*
module pcStimulus();

reg [29:0] d;
reg rst, clk;
wire [29:0] out;
	
initial
	begin
		$shm_open("waves.shm");
		$shm_probe("AS");
		$shm_close(0);
	end

pc p(out, d, rst, clk);

initial clk = 0;
always #1000 clk = ~clk;
	
initial
	begin
	$monitor($time, " out=%b d=%b rst=%b", out, d, rst);
	
	rst = 0;
	d = 30'b000000000000000000000000000000;
	#2000;
	d = 30'b000000000000000000000000000000;
	#2000;
	d = 30'b000000000000000000000000000000;
	#2000;
	d = 30'b111100000000000000000000000000;
	#2000;
	d = 30'b000000100000010000001000001000;
	#2000;
	d = 30'b000100100000001000000000010000;
	#2000;
	d = 30'b100010010100100000010000001000;
	#2000;
	d = 30'b110011100000000000011100000111;
	#2000;
	d = 30'b000000100000000000000000010000;
	#2000;
	end
endmodule
*/



		
