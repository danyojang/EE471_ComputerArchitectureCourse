`include "fiveToThirtyTwoDecoder.v"
`include "thirtyTwoBitRegister.v"
`include "mux1024to32.v"
module regfile(ReadData1,ReadData2,WriteData, ReadRegister1,ReadRegister2,WriteRegister,RegWrite,clk);
	output [31:0] ReadData1, ReadData2;
	input [31:0] WriteData;
	input [4:0] ReadRegister1, ReadRegister2, WriteRegister;
	input RegWrite, clk;
	wire [1023:0] b;
	wire [31:0] writeEnable;

fiveToThirtyTwoDecoder decoder(writeEnable, WriteRegister, RegWrite);

thirtyTwoBitRegister r0(b[31:0], WriteData, writeEnable[0], rst, clk);
thirtyTwoBitRegister r1(b[63:32], WriteData, writeEnable[1], rst, clk);
thirtyTwoBitRegister r2(b[95:64], WriteData, writeEnable[2], rst, clk);
thirtyTwoBitRegister r3(b[127:96], WriteData, writeEnable[3], rst, clk);
thirtyTwoBitRegister r4(b[159:128], WriteData, writeEnable[4], rst, clk);
thirtyTwoBitRegister r5(b[191:160], WriteData, writeEnable[5], rst, clk);
thirtyTwoBitRegister r6(b[223:192], WriteData, writeEnable[6], rst, clk);
thirtyTwoBitRegister r7(b[255:224], WriteData, writeEnable[7], rst, clk);
thirtyTwoBitRegister r8(b[287:256], WriteData, writeEnable[8], rst, clk);
thirtyTwoBitRegister r9(b[319:288], WriteData, writeEnable[9], rst, clk);
thirtyTwoBitRegister r10(b[351:320], WriteData, writeEnable[10], rst, clk);
thirtyTwoBitRegister r11(b[383:352], WriteData, writeEnable[11], rst, clk);
thirtyTwoBitRegister r12(b[415:384], WriteData, writeEnable[12], rst, clk);
thirtyTwoBitRegister r13(b[447:416], WriteData, writeEnable[13], rst, clk);
thirtyTwoBitRegister r14(b[479:448], WriteData, writeEnable[14], rst, clk);
thirtyTwoBitRegister r15(b[511:480], WriteData, writeEnable[15], rst, clk);
thirtyTwoBitRegister r16(b[543:512], WriteData, writeEnable[16], rst, clk);
thirtyTwoBitRegister r17(b[575:544], WriteData, writeEnable[17], rst, clk);
thirtyTwoBitRegister r18(b[607:576], WriteData, writeEnable[18], rst, clk);
thirtyTwoBitRegister r19(b[639:608], WriteData, writeEnable[19], rst, clk);
thirtyTwoBitRegister r20(b[671:640], WriteData, writeEnable[20], rst, clk);
thirtyTwoBitRegister r21(b[703:672], WriteData, writeEnable[21], rst, clk);
thirtyTwoBitRegister r22(b[735:704], WriteData, writeEnable[22], rst, clk);
thirtyTwoBitRegister r23(b[767:736], WriteData, writeEnable[23], rst, clk);
thirtyTwoBitRegister r24(b[799:768], WriteData, writeEnable[24], rst, clk);
thirtyTwoBitRegister r25(b[831:800], WriteData, writeEnable[25], rst, clk);
thirtyTwoBitRegister r26(b[863:832], WriteData, writeEnable[26], rst, clk);
thirtyTwoBitRegister r27(b[895:864], WriteData, writeEnable[27], rst, clk);
thirtyTwoBitRegister r28(b[927:896], WriteData, writeEnable[28], rst, clk);
thirtyTwoBitRegister r29(b[959:928], WriteData, writeEnable[29], rst, clk);
thirtyTwoBitRegister r30(b[991:960], WriteData, writeEnable[30], rst, clk);
thirtyTwoBitRegister r31(b[1023:992], WriteData, writeEnable[31], rst, clk);

mux1024to32 mux0(ReadData1, b, ReadRegister1);
mux1024to32 mux1(ReadData2, b, ReadRegister2);

endmodule

