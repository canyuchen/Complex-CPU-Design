`timescale 10ns / 1ns

`define DATA_WIDTH 32
`define ADDR_WIDTH 5

module mips_cpu(
    input               rst,
    input               clk,

    //Instruction request channel
    output reg  [31:0]  PC,
    output reg          Inst_Req_Valid,
    input               Inst_Req_Ack,

    //Instruction response channel
    input       [31:0]  Instruction,
    input               Inst_Valid,
    output reg          Inst_Ack,

    //Memory request channel
    output      [31:0]  Address,
    output reg          MemWrite,
    output reg  [31:0]  Write_data,
    output reg  [ 3:0]  Write_strb,
    output reg          MemRead,
    input               Mem_Req_Ack,

    //Memory data response channel
    input       [31:0]  Read_data,
    input               Read_data_Valid,
    output reg          Read_data_Ack,


    output [31:0]   mips_perf_cnt_0,
    output [31:0]   mips_perf_cnt_1,
    output [31:0]   mips_perf_cnt_2,
    output [31:0]   mips_perf_cnt_3,
    output [31:0]   mips_perf_cnt_4,
    output [31:0]   mips_perf_cnt_5,
    output [31:0]   mips_perf_cnt_6,
    output [31:0]   mips_perf_cnt_7,
    output [31:0]   mips_perf_cnt_8,
    output [31:0]   mips_perf_cnt_9,
    output [31:0]   mips_perf_cnt_10,
    output [31:0]   mips_perf_cnt_11,
    output [31:0]   mips_perf_cnt_12,
    output [31:0]   mips_perf_cnt_13,
    output [31:0]   mips_perf_cnt_14,
    output [31:0]   mips_perf_cnt_15

);
    reg     [31:0]  cycle_cnt; //counter of total cycles


    always @(posedge clk) begin
        if (rst) begin
            cycle_cnt <= 32'd0;
        end
        else begin
            cycle_cnt <= cycle_cnt + 32'd1;
        end
    end

    assign mips_perf_cnt_0 = cycle_cnt;
    assign mips_perf_cnt_1 = 32'd0;
    assign mips_perf_cnt_2 = 32'd0;
    assign mips_perf_cnt_3 = 32'd0;
    assign mips_perf_cnt_4 = 32'd0;
    assign mips_perf_cnt_5 = 32'd0;
    assign mips_perf_cnt_6 = 32'd0;
    assign mips_perf_cnt_7 = 32'd0;
    assign mips_perf_cnt_8 = 32'd0;
    assign mips_perf_cnt_9 = 32'd0;
    assign mips_perf_cnt_10 = 32'd0;
    assign mips_perf_cnt_11 = 32'd0;
    assign mips_perf_cnt_12 = 32'd0;
    assign mips_perf_cnt_13 = 32'd0;
    assign mips_perf_cnt_14 = 32'd0;
    assign mips_perf_cnt_15 = 32'd0;



    //Branch Instructions
    parameter BGTZ      = 6'b000_111; //branch on greater than zero
    parameter BLEZ      = 6'b000_110; //branch on less than or equal to zero
    parameter BLTZ      = 6'b000_001; //branch on less than zero
    parameter REGIMM    = 6'b000_001; //BGEZ:00001   
    parameter BNE       = 6'b000_101; //branch on not equal
    parameter BEQ       = 6'b000_100; //branch on equal

    //Jump Instructions
    parameter J         = 6'b000_010; //jump
    parameter JAL       = 6'b000_011; //jump and link
    parameter JALR_FUNC = 6'b001_001; //jump and link register FUNC
    parameter JR_FUNC   = 6'b001_000; //jump register FUNC

    //Arithmetic Instructions
    parameter ADDIU     = 6'b001_001; //add immdiate unsigned word 
    parameter SLTI      = 6'b001_010; //set on less than immediate
    parameter SLTIU     = 6'b001_011; //set on less than immediate unsigned
    parameter ANDI      = 6'b001_100; //and immdiate
    parameter SPECIAL   = 6'b000_000; //R-type
    parameter ORI       = 6'b001_101; //or immediate
    parameter XORI      = 6'b001_110; //exclusive or immediate
    parameter NOR_FUNC  = 6'b100_111; //not or FUNC
    parameter SLTU_FUNC = 6'b101_011; //set on less than unsigned FUNC
    parameter XOR_FUNC  = 6'b100_110; //exclusive or FUNC
    parameter SLTU      = 6'b101_011; //set on less than unsigned

    //Load Instructions
    parameter LW        = 6'b100_011; //load word
    parameter LUI       = 6'b001_111; //load upper immediate
    parameter LB        = 6'b100_000; //load byte
    parameter LBU       = 6'b100_100; //load byte unsigned
    parameter LH        = 6'b100_001; //load halfword
    parameter LHU       = 6'b100_101; //load halfword unsigned
    parameter LWL       = 6'b100_010; //load word left
    parameter LWR       = 6'b100_110; //load word right

    //Store Instructions
    parameter SW        = 6'b101_011; //store word
    parameter SB        = 6'b101_000; //store byte
    parameter SH        = 6'b101_001; //store halfword
    parameter SWL       = 6'b101_010; //store word left
    parameter SWR       = 6'b101_110; //store word right

    //Move Instructions
    parameter MOVN      = 6'b001_011; //move conditional on not zero FUNC
    parameter MOVZ      = 6'b001_010; //move conditional on zero FUNC

    //Shift Instructions
    parameter SRA_FUNC  = 6'b000_011; //shift word right arithmetic FUNC
    parameter SRAV_FUNC = 6'b000_111; //shift word right variable FUNC
    parameter SRL_FUNC  = 6'b000_010; //shift word right logical FUNC
    parameter SRLV_FUNC = 6'b000_110; //shift word right logical variable FUNC
    parameter SLL_FUNC  = 6'b000_000; //shift word left logical FUNC
    parameter SLLV_FUNC = 6'b000_100; //shift word left logical variable FUNC


    //state use one-hot formation
    parameter IF        = 8'b0000_0001;
    parameter IW        = 8'b0000_0010;
    parameter ID        = 8'b0000_0100;
    parameter EX        = 8'b0000_1000;
    parameter ST        = 8'b0001_0000;
    parameter LD        = 8'b0010_0000;
    parameter RDW       = 8'b0100_0000;
    parameter WB        = 8'b1000_0000;



    reg         [31:0]  Instruction_i;
    reg         [31:0]  Read_data_i;
    // reg         [ 6:0]  state;
    // reg         [ 6:0]  state_next;
    reg         [ 7:0]  state;
    reg         [ 7:0]  state_next;

    //alu input and output
    wire        [31:0]  mips_alu_in_a;
    wire        [31:0]  mips_alu_in_b;
    wire                mips_alu_out_Overflow;
    wire                mips_alu_out_CarryOut;
    wire                mips_alu_out_Zero;
    wire        [31:0]  mips_alu_out_Result;

    //register file input and output
    reg         [ 4:0]  mips_rf_in_waddr; 
    wire                mips_rf_in_wen;
    reg         [31:0]  mips_rf_in_wdata;
    wire        [31:0]  mips_rf_out_rdata_1;
    wire        [31:0]  mips_rf_out_rdata_2;
    wire        [ 4:0]  mips_rf_in_addr_1;
    wire        [ 4:0]  mips_rf_in_addr_2;

    //control unit input and output
    wire                mips_cu_out_RegDst;
    wire                mips_cu_out_ALUSrc;
    wire                mips_cu_out_Mem2Reg;
    wire                mips_cu_out_RegWrite;
    wire                mips_cu_out_Branch;
    wire                mips_cu_out_Jump;
    wire                mips_cu_out_ALUop_1;
    wire                mips_cu_out_ALUop_0;

    wire                PCWrite;
    wire        [2:0]   ALUctr;
    wire        [3:0]   LoadSign;

    //PC
    wire        [31:0]  mips_PC_4;
    reg         [31:0]  mips_PC_next;

    //sign_extend
    wire        [31:0]  mips_sign_extend;

    //barrel_shifter
    wire        [ 4:0]  mips_shifter_width;
    wire        [ 1:0]  mips_shifter_control;
    wire        [31:0]  mips_shifter_output;


    alu mips_alu(
        //input
        .A(mips_alu_in_a),
        .B(mips_alu_in_b),
        .ALUop(ALUctr),
        //output
        .Overflow(mips_alu_out_Overflow),
        .CarryOut(mips_alu_out_CarryOut),
        .Zero(mips_alu_out_Zero),
        .Result(mips_alu_out_Result)
        );

    reg_file mips_rf(
        //input
        .rst(rst),
        .clk(clk),
        .waddr(mips_rf_in_waddr),
        .raddr1(mips_rf_in_addr_1),
        .raddr2(mips_rf_in_addr_2),
        .wen(mips_rf_in_wen),
        .wdata(mips_rf_in_wdata),
        //output
        .rdata1(mips_rf_out_rdata_1),
        .rdata2(mips_rf_out_rdata_2)
        );

    control_unit mips_cu(
        //input
        .OpCode(Instruction[31:26]),
        .Func(Instruction[5:0]),
        .cu_rdata_1(mips_rf_out_rdata_1),
        .cu_rdata_2(mips_rf_out_rdata_2),
        .cu_state_next(state_next),
        .clk(clk),
        //output            
        .RegDst(mips_cu_out_RegDst),
        .ALUSrc(mips_cu_out_ALUSrc),
        .Mem2Reg(mips_cu_out_Mem2Reg),
        .RegWrite(mips_cu_out_RegWrite),
        .Branch(mips_cu_out_Branch),
        .Jump(mips_cu_out_Jump),
        .ALUop1(mips_cu_out_ALUop_1),
        .ALUop0(mips_cu_out_ALUop_0),

        .PCWrite(PCWrite),
        .LoadSign(LoadSign),
        .ALUctr(ALUctr)
        );


    barrel_shifter mips_shifter(
        //input
        .shifter_input(mips_rf_out_rdata_2),
        .shifter_width(mips_shifter_width),
        .shifter_contrl(mips_shifter_control),
        //output
        .shifter_output(mips_shifter_output)
        );

    always@(posedge clk) begin
        if(rst)
            state <= IF;
            //PC <= 32'd0;
        else
            state <= state_next;
    end

    always@(*) begin
        if(rst)
            state_next = IF;
        else begin
            case(state)
                IF: state_next = (Inst_Req_Ack)? IW:IF;
                IW: state_next = (Inst_Valid)?   ID:IW;
                ST: state_next = (Mem_Req_Ack)?  IF:ST;
                LD: state_next = (Mem_Req_Ack)?  RDW:LD;
                RDW: state_next = (Read_data_Valid)? WB:RDW;
                WB: state_next = IF;
                ID: state_next = EX;
                EX:  begin
                    if((Instruction_i[31:26] == JAL) 
                    || (Instruction_i[31:26] == J) 
                    || (Instruction_i[31:26] == SPECIAL && Instruction_i[5:0] == JR_FUNC) 
                    || (Instruction_i[31:26] == SPECIAL && Instruction_i[5:0] == JALR_FUNC) 
                    || (Instruction_i[31:26] == BEQ) 
                    || (Instruction_i[31:26] == BNE) 
                    || (Instruction_i[31:26] == BLEZ) 
                    || (Instruction_i[31:26] == BLTZ) 
                    || (Instruction_i[31:26] == BGTZ)
                    || (Instruction_i[31:26] == SPECIAL && Instruction_i[5:0]== MOVN)
                    || (Instruction_i[31:26] == SPECIAL && Instruction_i[5:0]== MOVZ))
                        state_next = IF;
                    else if(Instruction_i[31:26] == LBU 
                         || Instruction_i[31:26] == LB 
                         || Instruction_i[31:26] == LW 
                         || Instruction_i[31:26] == LWL
                         || Instruction_i[31:26] == LWR 
                         || Instruction_i[31:26] == LH 
                         || Instruction_i[31:26] == LHU)
                        state_next = LD;
                    else if(Instruction_i[31:26] == SW 
                         || Instruction_i[31:26] == SH
                         || Instruction_i[31:26] == SWL
                         || Instruction_i[31:26] == SWR
                         || Instruction_i[31:26] == SB)
                        state_next = ST;
                    else
                        state_next = WB;
                end
                default: state_next = IF;
            endcase            
        end
    end

    //when (Inst_Valid & Inst_Ack) => (next state == ID_EX)
    //then store Instruction in register Instruction_i
    //when (Read_data_Valid & Read_data_Ack) => (next state == WB)
    //then store Read_data in register Read_data_i
    always@(posedge clk)
    begin
        if(state_next == ID) begin
            Instruction_i <= Instruction;            
        end
    end

    always @(posedge clk) begin
        if(state_next == WB) begin
            Read_data_i <= Read_data;
        end
    end

    //PC calculation
    always @(posedge clk) begin
        if (rst) begin
            PC <= 32'd0;
        end
        else if(state == EX) 
        begin
            PC <= mips_PC_next;
        end
    end

    always @(*) begin
        if (state == EX) begin
            if (PCWrite) 
            begin
                casez({Instruction_i[31:26],Instruction_i[5:0]})
                    12'b000010??????://J
                        mips_PC_next <= {mips_PC_4[31:28],Instruction_i[25:0],2'b00};
                    12'b000011??????://JAL
                        mips_PC_next <= {mips_PC_4[31:28],Instruction_i[25:0],2'b00};
                    12'b000000001001://JALR
                        mips_PC_next <= mips_rf_out_rdata_1;
                    12'b000000001000://JR
                        mips_PC_next <= mips_rf_out_rdata_1;
                    default: 
                    begin
                        if ((Instruction_i[31:26] == 6'b000_100 && mips_rf_out_rdata_1 == mips_rf_out_rdata_2) //beq
                         || (Instruction_i[31:26] == 6'b000_101 && mips_rf_out_rdata_1 != mips_rf_out_rdata_2) //bne                         
                         || ({Instruction_i[31:26],Instruction_i[20:16]} == {6'b000_001, 5'b000_01} && mips_rf_out_rdata_1[31] == 1'b0) //bgez
                         || (Instruction_i[31:26] == 6'b000_110 && (mips_rf_out_rdata_1[31] == 1'b1 || mips_rf_out_rdata_1 == 32'd0)) //blez
                         || ({Instruction_i[31:26],Instruction_i[20:16]} == {6'b000_001, 5'b000_00} && mips_rf_out_rdata_1[31] == 1'b1) //bltz
                         || (Instruction_i[31:26] == 6'b000_111 && (mips_rf_out_rdata_1[31] == 1'b0 && mips_rf_out_rdata_1 != 32'd0)) ) //bgtz
                        begin
                            mips_PC_next <= {mips_sign_extend[31], mips_sign_extend[28:0], 2'b00} + mips_PC_4;
                        end
                        else begin
                            mips_PC_next <= mips_PC_4;
                        end
                    end
                endcase
            end
            else begin
                mips_PC_next <= mips_PC_4;
            end              
        end
        else begin
            mips_PC_next <= mips_PC_4;
        end
    end

    assign   mips_PC_4 = PC + 32'd4;

    //load register
    always @(*) begin
        if ((state == EX) || (state == WB)) begin
            case(LoadSign)
                4'b0000://alu result, addiu, BNE, BEQ
                        //slti
                    mips_rf_in_wdata <= mips_alu_out_Result;
                4'b0001://sltiu, sltu
                    mips_rf_in_wdata <= (mips_alu_out_CarryOut == 1'b1) ? {31'd0,1'b1} : {32'd0};
                4'b0010://jal, jalr
                    mips_rf_in_wdata <= mips_PC_4 + 32'd4;
                4'b0100://lui
                    mips_rf_in_wdata <= {Instruction_i[15:0],16'd0};
                4'b0101://movn, movz
                    mips_rf_in_wdata <= mips_rf_out_rdata_1;
                4'b0011://lw, lb, lbu, lh, lhu, lwl, lwr
                begin
                    case(Instruction_i[31:26])
                        LW :mips_rf_in_wdata <= Read_data_i;
                        LB :mips_rf_in_wdata <= (mips_alu_out_Result[1:0] == 2'b00) ? {{24{Read_data_i[ 7]}},Read_data_i[ 7: 0]}
                                              :((mips_alu_out_Result[1:0] == 2'b01) ? {{24{Read_data_i[15]}},Read_data_i[15: 8]}
                                              :((mips_alu_out_Result[1:0] == 2'b10) ? {{24{Read_data_i[23]}},Read_data_i[23:16]}
                                              :((mips_alu_out_Result[1:0] == 2'b11) ? {{24{Read_data_i[31]}},Read_data_i[31:24]}
                                              :  Read_data_i)));
                        LBU:mips_rf_in_wdata <= (mips_alu_out_Result[1:0] == 2'b00) ? {{24'd0},Read_data_i[ 7: 0]}
                                              :((mips_alu_out_Result[1:0] == 2'b01) ? {{24'd0},Read_data_i[15: 8]}
                                              :((mips_alu_out_Result[1:0] == 2'b10) ? {{24'd0},Read_data_i[23:16]}
                                              :((mips_alu_out_Result[1:0] == 2'b11) ? {{24'd0},Read_data_i[31:24]}
                                              :  Read_data_i)));
                        LH :mips_rf_in_wdata <= (mips_alu_out_Result[1] == 1'b0) ? {{16{Read_data_i[15]}},Read_data_i[15: 0]}
                                              :((mips_alu_out_Result[1] == 1'b1) ? {{16{Read_data_i[31]}},Read_data_i[31:16]}
                                              :  Read_data_i);
                        LHU:mips_rf_in_wdata <= (mips_alu_out_Result[1] == 1'b0) ? {{16'd0},Read_data_i[15: 0]}
                                              :((mips_alu_out_Result[1] == 1'b1) ? {{16'd0},Read_data_i[31:16]}
                                              :  Read_data_i);
                        LWL:mips_rf_in_wdata <= (mips_alu_out_Result[1:0] == 2'b00) ? {Read_data_i[ 7: 0],mips_rf_out_rdata_2[23:0]}
                                              :((mips_alu_out_Result[1:0] == 2'b01) ? {Read_data_i[15: 0],mips_rf_out_rdata_2[15:0]}
                                              :((mips_alu_out_Result[1:0] == 2'b10) ? {Read_data_i[23: 0],mips_rf_out_rdata_2[ 7:0]}
                                              :((mips_alu_out_Result[1:0] == 2'b11) ?  Read_data_i
                                              :  Read_data_i)));
                        LWR:mips_rf_in_wdata <= (mips_alu_out_Result[1:0] == 2'b00) ? Read_data_i
                                              :((mips_alu_out_Result[1:0] == 2'b01) ? {mips_rf_out_rdata_2[31:24],Read_data_i[31: 8]}
                                              :((mips_alu_out_Result[1:0] == 2'b10) ? {mips_rf_out_rdata_2[31:16],Read_data_i[31:16]}
                                              :((mips_alu_out_Result[1:0] == 2'b11) ? {mips_rf_out_rdata_2[31: 8],Read_data_i[31:24]}
                                              :  Read_data_i)));
                        // default: ;//mips_rf_in_wdata <= mips_rf_in_wdata;
                        default:mips_rf_in_wdata <= 32'd0;
                    endcase
                end
                4'b1000://sltu
                    mips_rf_in_wdata <= (mips_alu_out_CarryOut == 1'b1) ? {31'd0,1'b1} : {32'd0};
                4'b1001://sll,sllv,sra,srav,srl,srlv
                    mips_rf_in_wdata <= mips_shifter_output;
                4'b1010://nor
                    mips_rf_in_wdata <= ~(mips_rf_out_rdata_1 | mips_rf_out_rdata_2);
                4'b1011://xor
                    mips_rf_in_wdata <= mips_rf_out_rdata_1 ^ mips_rf_out_rdata_2;
                4'b1100://andi
                    mips_rf_in_wdata <= mips_rf_out_rdata_1 & {16'd0,Instruction_i[15:0]};
                4'b1101://ori
                    mips_rf_in_wdata <= mips_rf_out_rdata_1 | {16'd0,Instruction_i[15:0]};
                4'b1110://xori
                    mips_rf_in_wdata <= mips_rf_out_rdata_1 ^ {16'd0,Instruction_i[15:0]};
                default: 
                    mips_rf_in_wdata <= 32'd0;
            endcase            
        end
        else begin
            mips_rf_in_wdata <= 32'd0;
        end
    end


    assign mips_rf_in_wen = mips_cu_out_RegWrite;

    assign mips_rf_in_addr_1 = (({Instruction[31:26],Instruction[5:0]} == {SPECIAL,MOVZ}) || ({Instruction[31:26],Instruction[5:0]} == {SPECIAL,MOVN})) ? Instruction[25:21] : Instruction_i[25:21];
    assign mips_rf_in_addr_2 = (({Instruction[31:26],Instruction[5:0]} == {SPECIAL,MOVZ}) || ({Instruction[31:26],Instruction[5:0]} == {SPECIAL,MOVN})) ? Instruction[20:16] : Instruction_i[20:16];
    // assign mips_rf_in_addr_1 = Instruction_i[25:21];
    // assign mips_rf_in_addr_2 = Instruction_i[20:16];


    always @(*) begin
        if ((state == EX) || (state == WB)) begin
            mips_rf_in_waddr <= (Instruction_i[31:26] == JAL) ? 5'd31 : (mips_cu_out_RegDst ? Instruction_i[15:11] : Instruction_i[20:16]);
        end        
        else begin
            mips_rf_in_waddr <= 5'd0; 
        end
    end


    //memory

    always @(posedge clk) begin
        if ((state == EX) && (LoadSign ==4'b0100)) begin
            case(Instruction_i[31:26])
                SWL: Write_data <=  (mips_alu_out_Result[1:0] == 2'b00) ? {24'd0,mips_rf_out_rdata_2[31:24]}
                                 : ((mips_alu_out_Result[1:0] == 2'b01) ? {16'd0,mips_rf_out_rdata_2[31:16]}
                                 : ((mips_alu_out_Result[1:0] == 2'b10) ? {8'd0,mips_rf_out_rdata_2[31:8]}
                                 : ((mips_alu_out_Result[1:0] == 2'b11) ? mips_rf_out_rdata_2
                                 :   mips_rf_out_rdata_2)));
                SWR: Write_data <=  (mips_alu_out_Result[1:0] == 2'b00) ? mips_rf_out_rdata_2
                                 : ((mips_alu_out_Result[1:0] == 2'b01) ? {mips_rf_out_rdata_2[23: 0],8'd0}
                                 : ((mips_alu_out_Result[1:0] == 2'b10) ? {mips_rf_out_rdata_2[15: 0],16'd0}
                                 : ((mips_alu_out_Result[1:0] == 2'b11) ? {mips_rf_out_rdata_2[ 7: 0],24'd0}
                                 :   mips_rf_out_rdata_2)));
                SB: Write_data  <=  {4{mips_rf_out_rdata_2[7:0]}};
                SH: Write_data  <=  {2{mips_rf_out_rdata_2[15:0]}};
                default: Write_data =   mips_rf_out_rdata_2;
            endcase                   
        end
        else begin
            Write_data = mips_rf_out_rdata_2;
        end
    end



    //Address calculation
    assign      Address              = {mips_alu_out_Result[31:2],2'b00};

    //SLL
    assign      mips_shifter_width   =  (Instruction_i[5:0] == SLL_FUNC) ? Instruction_i[10:6] 
                                     : ((Instruction_i[5:0] == SLLV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                     : ((Instruction_i[5:0] == SRA_FUNC) ? Instruction_i[10:6]
                                     : ((Instruction_i[5:0] == SRAV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                     : ((Instruction_i[5:0] == SRL_FUNC) ? Instruction_i[10:6]
                                     : ((Instruction_i[5:0] == SRLV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                     : 5'd0)))));
    


    assign      mips_shifter_control =  (({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SLL_FUNC}) || 
                                         ({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SLLV_FUNC})) ? 2'b10 
                                     : ((({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SRA_FUNC}) || 
                                         ({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SRAV_FUNC})) ? 2'b00
                                     : ((({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SRL_FUNC}) || 
                                         ({Instruction_i[31:26],Instruction_i[5:0]} == {SPECIAL,SRLV_FUNC})) ? 2'b01
                                     : 2'b00)) ;


    assign      mips_shifter_width  =  (Instruction_i[5:0] == SLL_FUNC) ? Instruction_i[10:6] 
                                    : ((Instruction_i[5:0] == SLLV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                    : ((Instruction_i[5:0] == SRA_FUNC) ? Instruction_i[10:6]
                                    : ((Instruction_i[5:0] == SRAV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                    : ((Instruction_i[5:0] == SRL_FUNC) ? Instruction_i[10:6]
                                    : ((Instruction_i[5:0] == SRLV_FUNC) ? mips_rf_out_rdata_1[4:0]
                                    : 5'd0)))));

    //write control

    always @(posedge clk) begin
       if ((state == EX) && (LoadSign == 4'b0100)) begin
            case(Instruction_i[31:26])
                SWL:Write_strb <=     (mips_alu_out_Result[1:0] == 2'b00) ? 4'b0001
                                    :((mips_alu_out_Result[1:0] == 2'b01) ? 4'b0011
                                    :((mips_alu_out_Result[1:0] == 2'b10) ? 4'b0111
                                    :((mips_alu_out_Result[1:0] == 2'b11) ? 4'b1111
                                    :4'b1111)));
                SWR:Write_strb <=     (mips_alu_out_Result[1:0] == 2'b00) ? 4'b1111
                                    :((mips_alu_out_Result[1:0] == 2'b01) ? 4'b1110
                                    :((mips_alu_out_Result[1:0] == 2'b10) ? 4'b1100
                                    :((mips_alu_out_Result[1:0] == 2'b11) ? 4'b1000
                                    :4'b1111)));
                SB:Write_strb  <=     (mips_alu_out_Result[1:0] == 2'b00) ? 4'b0001
                                    :((mips_alu_out_Result[1:0] == 2'b01) ? 4'b0010
                                    :((mips_alu_out_Result[1:0] == 2'b10) ? 4'b0100
                                    :((mips_alu_out_Result[1:0] == 2'b11) ? 4'b1000
                                    :4'b1111)));
                SH:Write_strb  <=     (mips_alu_out_Result[1] == 1'b0) ? 4'b0011
                                    :((mips_alu_out_Result[1] == 1'b1) ? 4'b1100
                                    :4'b1111);
                default:Write_strb <= 4'b1111;
            endcase 
        end
        else begin
            Write_strb <= 4'b1111;
        end
    end


    //alu
    assign    mips_alu_in_a        = mips_rf_out_rdata_1;

    assign    mips_alu_in_b        = mips_cu_out_ALUSrc ? mips_sign_extend : mips_rf_out_rdata_2;



    //sign extend
    assign    mips_sign_extend    = {{16{Instruction_i[15]}}, Instruction_i[15:0]};


    always @(posedge clk) begin
        //case(state)
        case(state_next)
            IF:begin
                if (rst) begin
                    {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b1,1'b0,2'b00}; 
                end
                else begin
                    {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b1,1'b0,1'b0,2'b00};
                end
            end
            IW: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b1,1'b0,2'b00};
            end
            ID: begin 
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b0,2'b00};         
            end
            EX: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b0,2'b00};
            end
            ST: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b0,2'b01};
            end
            LD: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b0,2'b10};
            end
            RDW: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b1,2'b00};
            end
            WB: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b0,1'b0,2'b00};
            end
            default: begin
                {Inst_Req_Valid,Inst_Ack,Read_data_Ack,MemRead,MemWrite} <= {1'b0,1'b1,1'b0,2'b00}; 
            end
        endcase            
    end


endmodule

module control_unit(
    // input           rst,
    input           clk,
    input   [ 5:0]  OpCode,
    input   [ 5:0]  Func,
    input   [31:0]  cu_rdata_1,
    input   [31:0]  cu_rdata_2,
    input   [ 7:0]  cu_state_next,

    output reg      RegDst,
    output reg      ALUSrc,
    output reg      Mem2Reg,
    output reg      RegWrite,
    output reg      Branch,
    output reg      Jump,
    output reg      ALUop1,
    output reg      ALUop0,

    output reg    [3:0]  LoadSign,
    output reg           PCWrite,
    output reg    [2:0]  ALUctr
);

    //Branch Instructions
    parameter BGTZ      = 6'b000_111; //branch on greater than zero
    parameter BLEZ      = 6'b000_110; //branch on less than or equal to zero
    parameter BLTZ      = 6'b000_001; //branch on less than zero
    parameter REGIMM    = 6'b000_001; //BGEZ:00001   
    parameter BNE       = 6'b000_101; //branch on not equal
    parameter BEQ       = 6'b000_100; //branch on equal

    //Jump Instructions
    parameter J         = 6'b000_010; //jump
    parameter JAL       = 6'b000_011; //jump and link
    parameter JALR_FUNC = 6'b001_001; //jump and link register FUNC
    parameter JR_FUNC   = 6'b001_000; //jump register FUNC

    //Arithmetic Instructions
    parameter ADDIU     = 6'b001_001; //add immdiate unsigned word 
    parameter SLTI      = 6'b001_010; //set on less than immediate
    parameter SLTIU     = 6'b001_011; //set on less than immediate unsigned
    parameter ANDI      = 6'b001_100; //and immdiate
    parameter SPECIAL   = 6'b000_000; //R-type
    parameter ORI       = 6'b001_101; //or immediate
    parameter XORI      = 6'b001_110; //exclusive or immediate
    parameter NOR_FUNC  = 6'b100_111; //not or FUNC
    parameter SLTU_FUNC = 6'b101_011; //set on less than unsigned FUNC
    parameter XOR_FUNC  = 6'b100_110; //exclusive or FUNC
    parameter SLTU      = 6'b101_011; //set on less than unsigned
    
    //Load Instructions
    parameter LW        = 6'b100_011; //load word
    parameter LUI       = 6'b001_111; //load upper immediate
    parameter LB        = 6'b100_000; //load byte
    parameter LBU       = 6'b100_100; //load byte unsigned
    parameter LH        = 6'b100_001; //load halfword
    parameter LHU       = 6'b100_101; //load halfword unsigned
    parameter LWL       = 6'b100_010; //load word left
    parameter LWR       = 6'b100_110; //load word right

    //Store Instructions
    parameter SW        = 6'b101_011; //store word
    parameter SB        = 6'b101_000; //store byte
    parameter SH        = 6'b101_001; //store halfword
    parameter SWL       = 6'b101_010; //store word left
    parameter SWR       = 6'b101_110; //store word right

    //Move Instructions
    parameter MOVN      = 6'b001_011; //move conditional on not zero FUNC
    parameter MOVZ      = 6'b001_010; //move conditional on zero FUNC

    //Shift Instructions
    parameter SRA_FUNC  = 6'b000_011; //shift word right arithmetic FUNC
    parameter SRAV_FUNC = 6'b000_111; //shift word right variable FUNC
    parameter SRL_FUNC  = 6'b000_010; //shift word right logical FUNC
    parameter SRLV_FUNC = 6'b000_110; //shift word right logical variable FUNC
    parameter SLL_FUNC  = 6'b000_000; //shift word left logical FUNC
    parameter SLLV_FUNC = 6'b000_100; //shift word left logical variable FUNC


    //state
    parameter IF        = 8'b0000_0001;
    parameter IW        = 8'b0000_0010;
    parameter ID        = 8'b0000_0100;
    parameter EX        = 8'b0000_1000;
    parameter ST        = 8'b0001_0000;
    parameter LD        = 8'b0010_0000;
    parameter RDW       = 8'b0100_0000;
    parameter WB        = 8'b1000_0000;

    //always @(posedge clk) begin
    //control signs calculation
    //in order to calculate mips_rf_in_wdata in state ID_EX(posedge clk of ID_EX)
    //in the clock before ID_EX(when next state == ID_EX), have to calculate the control signs
    //when Instruction comes, calculate control sign 

    always @(posedge clk) begin
        case(cu_state_next)
            IF:begin
                {RegWrite, PCWrite} = {1'b0,1'b0};
            end
            IW: begin
                {RegWrite, PCWrite} = {1'b0,1'b0};
            end
            ID: begin
                case(OpCode)
                    ADDIU:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0000, 1'b0, 3'b010};//addiu
                    SPECIAL: begin
                        case(Func)
                            6'b001_011:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = (cu_rdata_2 != 32'd0) ? {8'b0_1001_0_00,4'b0101, 1'b0, 3'b000} : {8'b0_1000_0_00,4'b0101, 1'b0, 3'b000};//movn
                            6'b001_010:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = (cu_rdata_2 == 32'd0) ? {8'b0_1001_0_00,4'b0101, 1'b0, 3'b000} : {8'b0_1000_0_00,4'b0101, 1'b0, 3'b000};//movz

                            6'b001_001:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b1_1001_0_00,4'b0010, 1'b1, 3'b000}; //JALR
                            6'b001_000:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b1_0000_0_00,4'b1111, 1'b1, 3'b000}; //JR
                            6'b100_110:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1011, 1'b0, 3'b000}; //xor
                            6'b100_111:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1010, 1'b0, 3'b000}; //nor

                            6'b000_011:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //sra
                            6'b000_111:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //srav
                            6'b000_010:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //srl
                            6'b000_110:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //srlv
                            6'b000_000:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //sll
                            6'b000_100: 
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1001, 1'b0, 3'b000}; //sllv

                            6'b101_011:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b1000, 1'b0, 3'b110}; //sltu

                            6'b100_011:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b110}; //subu
                            6'b100_001:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b010}; //addu

                            6'b100_101:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b001}; //move(or)
                            6'b101_010:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b111}; //slt
                            6'b100_000:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b010}; //add
                            6'b100_100:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b000}; //and
                            6'b100_101:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b001}; //or

                            default:
                                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} =   {8'b0_1000_0_00,4'b0000, 1'b0, 3'b000}; //alu result
                        endcase
                    end
                    BEQ:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_1_01,4'b0000, 1'b1, 3'b110}; //beq
                    BNE:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_1_01,4'b0000, 1'b1, 3'b110}; //bne
                    REGIMM:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_1_00,4'b1111, 1'b1, 3'b000}; //bgez, bltz 
                    BLEZ:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_1_00,4'b1111, 1'b1, 3'b000}; //blez
                    BGTZ:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_1_00,4'b1111, 1'b1, 3'b000}; //bgtz

                    SLTI:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0000, 1'b0, 3'b111}; //slti
                    SLTIU:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0001, 1'b0, 3'b110}; //sltiu

                    J:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b1_0000_0_00,4'b1111, 1'b1, 3'b000}; //j
                    JAL:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b1_0001_0_00,4'b0010, 1'b1, 3'b000}; //jal

                    LUI:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b0100, 1'b0, 3'b000}; //lui

                    ANDI:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b1100, 1'b0, 3'b000}; //andi 
                    ORI:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b1101, 1'b0, 3'b000}; //ori
                    XORI:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b1110, 1'b0, 3'b000}; //xori

                    LW:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lw
                    LB:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lb 
                    LBU:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lbu 
                    LH:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lh 
                    LHU:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lhu 
                    LWL:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lwl 
                    LWR:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0110_0_00,4'b0011, 1'b0, 3'b010}; //lwr 

                    SW:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0100, 1'b0, 3'b010}; //sw
                    SB:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0100, 1'b0, 3'b010}; //sb 
                    SH:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0100, 1'b0, 3'b010}; //sh 
                    SWL:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0100, 1'b0, 3'b010}; //swl 
                    SWR:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0100_0_00,4'b0100, 1'b0, 3'b010}; //swr 

                    default:
                        {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b1111, 1'b0, 3'b000}; //swr 

                endcase
            end
            EX: begin
                ;
            end
            ST: begin
                {RegWrite, PCWrite} = {1'b0,1'b0};
            end
            LD: begin
                {RegWrite, PCWrite} = {1'b0,1'b0};
            end
            RDW: begin
                {RegWrite, PCWrite} = {1'b0,1'b0};
            end
            WB: begin
                {RegWrite, PCWrite} = {1'b1,1'b0};
            end
            default: begin
                {Jump, RegDst,ALUSrc,Mem2Reg,RegWrite, Branch, ALUop1,ALUop0, LoadSign, PCWrite, ALUctr} = {8'b0_0000_0_00,4'b1111, 1'b0, 3'b000};
                //{RegWrite} = {1'b0};
            end
        endcase


    end



endmodule


module barrel_shifter(
    input       [31:0] shifter_input,
    input       [ 4:0] shifter_width,
    input       [ 1:0] shifter_contrl,
    output reg  [31:0] shifter_output
    );

    reg         [31:0] temp;

    always @(*) begin
        case (shifter_contrl)
            2'b00 : begin //shift word right arithmetic
                temp = shifter_width[0] ? {{shifter_input[31]}, shifter_input[31:1]} : shifter_input;
                temp = shifter_width[1] ? {{2{temp[31]}}, temp[31:2]} : temp;
                temp = shifter_width[2] ? {{4{temp[31]}}, temp[31:4]} : temp;
                temp = shifter_width[3] ? {{8{temp[31]}}, temp[31:8]} : temp;
                temp = shifter_width[4] ? {{16{temp[31]}}, temp[31:16]} : temp;
            end
            2'b01 : begin //shift word right logical
                temp = shifter_width[0] ? {1'b0, shifter_input[31:1]} : shifter_input;
                temp = shifter_width[1] ? {2'b0, temp[31:2]} : temp;
                temp = shifter_width[2] ? {4'b0, temp[31:4]} : temp;
                temp = shifter_width[3] ? {8'b0, temp[31:8]} : temp;
                temp = shifter_width[4] ? {16'b0, temp[31:16]} : temp;
            end
            2'b10 : begin //shift word left arithmetic
                temp = shifter_width[0] ? {shifter_input[30:0], 1'b0} : shifter_input;
                temp = shifter_width[1] ? {temp[29:0], 2'b0} : temp;
                temp = shifter_width[2] ? {temp[27:0], 4'b0} : temp;
                temp = shifter_width[3] ? {temp[23:0], 8'b0} : temp;
                temp = shifter_width[4] ? {temp[15:0], 16'b0} : temp;                
            end
            2'b11 : begin //shift word left logical
                temp = shifter_width[0] ? {shifter_input[30:0], 1'b0} : shifter_input;
                temp = shifter_width[1] ? {temp[29:0], 2'b0} : temp;
                temp = shifter_width[2] ? {temp[27:0], 4'b0} : temp;
                temp = shifter_width[3] ? {temp[23:0], 8'b0} : temp;
                temp = shifter_width[4] ? {temp[15:0], 16'b0} : temp;             
            end
            default : begin
                temp = 32'd0;
            end
        endcase

        shifter_output = temp;

    end

endmodule


module reg_file(
    input clk,
    input rst,
    input [`ADDR_WIDTH - 1:0] waddr,
    input [`ADDR_WIDTH - 1:0] raddr1,
    input [`ADDR_WIDTH - 1:0] raddr2,
    input wen,
    input [`DATA_WIDTH - 1:0] wdata,
    output [`DATA_WIDTH - 1:0] rdata1,
    output [`DATA_WIDTH - 1:0] rdata2
);

    // TODO: Please add your logic code here
    reg [31:0] r[31:0];


    assign rdata1 = r[raddr1];
    assign rdata2 = r[raddr2];


    always @(posedge clk) begin
        if (rst) begin
            r[0] <= `DATA_WIDTH'b0;
        end
        else if(wen && waddr) begin
            //r[waddr] <= (wen && waddr) ? wdata : r[waddr];
            r[waddr] <= wdata;

        end

    end
endmodule

module alu(
    input [`DATA_WIDTH - 1:0] A,
    input [`DATA_WIDTH - 1:0] B,
    input [2:0] ALUop,
    output Overflow,
    output CarryOut,
    output Zero,
    output [`DATA_WIDTH - 1:0] Result
);

    parameter   AND      = 3'b000,   // bitwise and
                OR       = 3'b001,   // bitwise or
                ADD      = 3'b010,   // arithmetic addition
                SUBTRACT = 3'b110,   // arithmetic subtraction
                SLT      = 3'b111;   // set-on-less-than
    
    
    reg LastCout;                    // stores the last carry
    reg SecondLastCout;              // stores the second last carry
    reg [`DATA_WIDTH - 1:0] Result;  // stores the result of the operation
    reg [`DATA_WIDTH - 1:0] Sum;     // used in slt operation to attain the result

    //always @(A, B, ALUop) begin
    always @(*) begin
    SecondLastCout = 1'bx;
    LastCout = 1'bx;
        case (ALUop)
            AND: begin
                Result = A & B; 
            end
             OR: begin
                Result = A | B; 
             end
            ADD: begin
                {LastCout, Result} = {1'b0,A} + {1'b0,B};
            end
            SUBTRACT: begin
        //calculate SecondLastCout
                {SecondLastCout,Result[`DATA_WIDTH - 2:0]} 
            = {1'b0,A[`DATA_WIDTH - 2:0]} + {1'b0,~B[`DATA_WIDTH - 2:0]} + 32'b1;
            //calculate LastCout
                {LastCout,Result[`DATA_WIDTH - 1]} 
            = {1'b0,A[`DATA_WIDTH - 1]} + {1'b0,~B[`DATA_WIDTH - 1]} 
            + {1'b0,SecondLastCout};
            end
            //notes: the operands of SLT as signed
        //discuss whether the sign of A and that of B are the same
            SLT: begin
                Sum = A + (~B + 32'b1);
                Result = (A[`DATA_WIDTH - 1] == B[`DATA_WIDTH - 1]) 
            ? ((Sum[`DATA_WIDTH - 1] == 1'b1) ? 32'b1 : 32'b0) 
                        : ((A[`DATA_WIDTH - 1] == 1'b1) ? 32'b1 : 32'b0);
        
            end
            // catches exceptions, should not occur
            default: begin
                Result = 32'b0; 
        LastCout = 1'b0;
        SecondLastCout = 1'b0;
        Result = 32'b0;
        Sum = 32'b0;
            end
        endcase
    end
    
    /*
        CarryOut: defined for ADD and SUB, undefined otherwise (casts 0)
        discuss ADD and SUBTRACT
     - if ALUop == SUBTRACT, then CarryOut == LastCout
     - if ALUop == ADD, then CarryOut == (~LastCout)
    */
    assign CarryOut = (ALUop == ADD && LastCout == 1'b1) || (ALUop == SUBTRACT && LastCout == 1'b0);
    
    /*
        Overflow: defined for ADD and SUB, undefined otherwise (casts 0)
        2's complement overflow happens:
         - if a sum of two positive numbers results in a negative number
         - if a sum of two negative numbers results in a positive number
    we can calculate overflow
     - if ALUop == SUBTRACT, then OverFlow == LastCout XOR SecondLastCout
     - if ALUop == ADD, then OverFlow == the sign of B XOR the sign of Result
                     when the sign of A == the sign of B
    */
    assign Overflow = ((ALUop == SUBTRACT) && (LastCout ^ SecondLastCout))
                   || (
              (ALUop == ADD) 
              && (A[`DATA_WIDTH - 1] == B[`DATA_WIDTH - 1]) 
              && (B[`DATA_WIDTH - 1] != Result[`DATA_WIDTH - 1])
              );

    // Zero: defined for ADD, AND, OR, SUBTRACT
    assign Zero = (ALUop == ADD || ALUop == SUBTRACT || ALUop == AND || ALUop == OR) 
        && (Result == 32'b0);

endmodule

