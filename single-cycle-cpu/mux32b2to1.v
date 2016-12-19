`include "twoToOneMux.v"
module mux32b2to1(out, low, high, sel);
	
	output [31:0] out;
	input [31:0] low, high;
	input sel;

	twoToOneMux t0(out[0] , low[0], high[0], sel);
	twoToOneMux t1(out[1] , low[1], high[1], sel);
	twoToOneMux t2(out[2] , low[2], high[2], sel);
	twoToOneMux t3(out[3] , low[3], high[3], sel);
	twoToOneMux t4(out[4] , low[4], high[4], sel);
	twoToOneMux t5(out[5] , low[5], high[5], sel);
	twoToOneMux t6(out[6] , low[6], high[6], sel);
	twoToOneMux t7(out[7] , low[7], high[7], sel);
	twoToOneMux t8(out[8] , low[8], high[8], sel);
	twoToOneMux t9(out[9] , low[9], high[9], sel);
	twoToOneMux t10(out[10] , low[10], high[10], sel);
	twoToOneMux t11(out[11] , low[11], high[11], sel);
	twoToOneMux t12(out[12] , low[12], high[12], sel);
	twoToOneMux t13(out[13] , low[13], high[13], sel);
	twoToOneMux t14(out[14] , low[14], high[14], sel);
	twoToOneMux t15(out[15] , low[15], high[15], sel);
	twoToOneMux t16(out[16] , low[16], high[16], sel);
	twoToOneMux t17(out[17] , low[17], high[17], sel);
	twoToOneMux t18(out[18] , low[18], high[18], sel);
	twoToOneMux t19(out[19] , low[19], high[19], sel);
	twoToOneMux t20(out[20] , low[20], high[20], sel);
	twoToOneMux t21(out[21] , low[21], high[21], sel);
	twoToOneMux t22(out[22] , low[22], high[22], sel);
	twoToOneMux t23(out[23] , low[23], high[23], sel);
	twoToOneMux t24(out[24] , low[24], high[24], sel);
	twoToOneMux t25(out[25] , low[25], high[25], sel);
	twoToOneMux t26(out[26] , low[26], high[26], sel);
	twoToOneMux t27(out[27] , low[27], high[27], sel);
	twoToOneMux t28(out[28] , low[28], high[28], sel);
	twoToOneMux t29(out[29] , low[29], high[29], sel);
	twoToOneMux t30(out[30] , low[30], high[30], sel);
	twoToOneMux t31(out[31] , low[31], high[31], sel);
endmodule
