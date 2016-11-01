`include "thirtyTwoToOneMux.v"


module thirtyTwoToOneMuxTest();

parameter delay = 50;
integer i;

initial
	begin
		$shm_open("waves.shm");
		$shm_probe("AC");
		$shm_close(0);
	end
	reg [31:0] w;
	reg [4:0] s;
	wire out;


   thirtyTwoToOneMux thirtyTTOMTest(out, w, s);

   initial
	
	begin
		w = 'b10101010101010101010101010101010;
		for(i=0; i<32; i=i+1)
		begin
			#(delay) s = i;


		end


	end
endmodule

