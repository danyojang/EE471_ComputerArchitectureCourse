`include "mux32b2to1.v"
`include "signExtend.v"
`include "full32bAdder.v"
`include "concatenate.v"
`include "pc.v"
`include "instrmem.v"

module instrFetch(instr, imm16, zero, branch, jump, rst, clk);
	output [31:0] instr;
	input [15:0] imm16;
	input zero, branch, jump, rst, clk;
	wire [31:0] signEx, branchAddress;
	wire bCo;
	wire [29:0] PC;
	
	signExtend s0(signEx, imm16);
	mux32b2to1 m0(branchConstant, 1'b0, signEx, branchSel);
	and a0(branchSel, branch, zero);
	full32bAdder f0(branchAddress, bCo, {2'b00, PC}, branchConstant, 1'b1);
	mux32b2to1 m1(nextAddress, branchAddress, jumpAddress, jump);
	concatenate c0(jumpAddress, PC[29:26], instr[25:0]);
	pc p0(PC, nextAddress, rst, clk);
	InstructionMem i0(instr, {PC, 2'b00});
	
endmodule
