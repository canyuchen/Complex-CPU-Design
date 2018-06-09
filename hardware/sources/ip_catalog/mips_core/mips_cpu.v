`timescale 10ns / 1ns

module mips_cpu(
	input  rst,
	input  clk,

	//Instruction request channel
	output [31:0] PC,
	output Inst_Req_Valid,
	input Inst_Req_Ack,

	//Instruction response channel
	input  [31:0] Instruction,
	input Inst_Valid,
	output Inst_Ack,

	//Memory request channel
	output [31:0] Address,
	output MemWrite,
	output [31:0] Write_data,
	output [3:0] Write_strb,
	output MemRead,
	input Mem_Req_Ack,

	//Memory data response channel
	input  [31:0] Read_data,
	input Read_data_Valid,
	output Read_data_Ack,

    output [31:0]	mips_perf_cnt_0,
    output [31:0]	mips_perf_cnt_1,
    output [31:0]	mips_perf_cnt_2,
    output [31:0]	mips_perf_cnt_3,
    output [31:0]	mips_perf_cnt_4,
    output [31:0]	mips_perf_cnt_5,
    output [31:0]	mips_perf_cnt_6,
    output [31:0]	mips_perf_cnt_7,
    output [31:0]	mips_perf_cnt_8,
    output [31:0]	mips_perf_cnt_9,
    output [31:0]	mips_perf_cnt_10,
    output [31:0]	mips_perf_cnt_11,
    output [31:0]	mips_perf_cnt_12,
    output [31:0]	mips_perf_cnt_13,
    output [31:0]	mips_perf_cnt_14,
    output [31:0]	mips_perf_cnt_15
);

  //TODO: Please add your MIPS CPU code here

endmodule

