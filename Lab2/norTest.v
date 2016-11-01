`include "norFunct.v"

module norTest();
	initial
	begin
		$shm_open("waves.shm");
		$shm_probe("AS");
		$shm_close(0);
	end	

	wire [31:0] a,b;
	wire out;

	assign a = 32'b01111111111111111111111111111110;
	assign b = 32'b01111111111111111111111111111110;
	norFunct abc(out, a, b);

endmodule
