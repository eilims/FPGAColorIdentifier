// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="getConvolutionResult,hls_ip_2017_4_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.679625,HLS_SYN_LAT=24,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=18,HLS_SYN_FF=928,HLS_SYN_LUT=4300}" *)

module getConvolutionResult (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        array_0_address0,
        array_0_ce0,
        array_0_q0,
        array_0_address1,
        array_0_ce1,
        array_0_q1,
        array_1_address0,
        array_1_ce0,
        array_1_q0,
        array_1_address1,
        array_1_ce1,
        array_1_q1,
        array_2_address0,
        array_2_ce0,
        array_2_q0,
        array_2_address1,
        array_2_ce1,
        array_2_q1,
        ap_return
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_pp0_stage0 = 18'd2;
parameter    ap_ST_fsm_pp0_stage1 = 18'd4;
parameter    ap_ST_fsm_state7 = 18'd8;
parameter    ap_ST_fsm_state8 = 18'd16;
parameter    ap_ST_fsm_state9 = 18'd32;
parameter    ap_ST_fsm_state10 = 18'd64;
parameter    ap_ST_fsm_state11 = 18'd128;
parameter    ap_ST_fsm_state12 = 18'd256;
parameter    ap_ST_fsm_state13 = 18'd512;
parameter    ap_ST_fsm_state14 = 18'd1024;
parameter    ap_ST_fsm_state15 = 18'd2048;
parameter    ap_ST_fsm_state16 = 18'd4096;
parameter    ap_ST_fsm_state17 = 18'd8192;
parameter    ap_ST_fsm_state18 = 18'd16384;
parameter    ap_ST_fsm_state19 = 18'd32768;
parameter    ap_ST_fsm_state20 = 18'd65536;
parameter    ap_ST_fsm_state21 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] array_0_address0;
output   array_0_ce0;
input  [31:0] array_0_q0;
output  [1:0] array_0_address1;
output   array_0_ce1;
input  [31:0] array_0_q1;
output  [1:0] array_1_address0;
output   array_1_ce0;
input  [31:0] array_1_q0;
output  [1:0] array_1_address1;
output   array_1_ce1;
input  [31:0] array_1_q1;
output  [1:0] array_2_address0;
output   array_2_ce0;
input  [31:0] array_2_q0;
output  [1:0] array_2_address1;
output   array_2_ce1;
input  [31:0] array_2_q1;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] array_0_address0;
reg array_0_ce0;
reg array_0_ce1;
reg[1:0] array_1_address0;
reg array_1_ce0;
reg array_1_ce1;
reg[1:0] array_2_address0;
reg array_2_ce0;
reg array_2_ce1;

(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [1:0] i_reg_147;
reg   [31:0] horizontalResult_reg_159;
reg   [31:0] verticalResult_reg_171;
wire  signed [31:0] grp_fu_191_p5;
reg  signed [31:0] reg_203;
wire    ap_CS_fsm_pp0_stage1;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state3_pp0_stage1_iter0;
wire    ap_block_state5_pp0_stage1_iter1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] exitcond1_reg_372;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_state6_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] exitcond1_fu_212_p2;
reg   [0:0] ap_reg_pp0_iter1_exitcond1_reg_372;
wire   [1:0] i_1_fu_218_p2;
reg   [1:0] i_1_reg_376;
wire  signed [31:0] tmp_3_fu_224_p5;
reg  signed [31:0] tmp_3_reg_381;
wire  signed [31:0] tmp_5_fu_236_p5;
reg  signed [31:0] tmp_5_reg_386;
wire  signed [31:0] tmp_7_fu_248_p5;
reg  signed [31:0] tmp_7_reg_391;
wire  signed [31:0] tmp_8_fu_260_p5;
reg  signed [31:0] tmp_8_reg_396;
wire   [31:0] tmp_4_fu_272_p2;
reg   [31:0] tmp_4_reg_401;
wire   [31:0] grp_fu_207_p2;
reg   [31:0] tmp_6_reg_406;
wire   [31:0] tmp_6_1_fu_277_p2;
reg   [31:0] tmp_6_1_reg_411;
wire  signed [31:0] tmp_s_fu_281_p5;
reg  signed [31:0] tmp_s_reg_416;
wire   [31:0] tmp_4_2_fu_293_p2;
reg   [31:0] tmp_4_2_reg_421;
reg   [31:0] tmp_6_2_reg_426;
wire   [31:0] verticalResult_2_2_fu_302_p2;
reg    ap_enable_reg_pp0_iter2;
wire   [31:0] horizontalResult_2_2_fu_317_p2;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
wire    ap_block_pp0_stage1_subdone;
wire   [11:0] grp_combineOperatorResul_fu_183_ap_return;
reg   [1:0] ap_phi_mux_i_phi_fu_151_p4;
wire    ap_block_pp0_stage0;
wire    ap_CS_fsm_state7;
wire    ap_block_pp0_stage1;
wire   [31:0] tmp_10_fu_298_p2;
wire   [31:0] tmp1_fu_308_p2;
wire   [31:0] tmp_11_fu_312_p2;
wire    ap_CS_fsm_state21;
reg   [17:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 18'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
end

combineOperatorResul grp_combineOperatorResul_fu_183(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .verticalResult(verticalResult_reg_171),
    .horizontalResult(horizontalResult_reg_159),
    .ap_return(grp_combineOperatorResul_fu_183_ap_return)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U4(
    .din0(array_0_q0),
    .din1(array_1_q0),
    .din2(array_2_q0),
    .din3(i_reg_147),
    .dout(grp_fu_191_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U5(
    .din0(32'd1),
    .din1(32'd2),
    .din2(32'd1),
    .din3(i_reg_147),
    .dout(tmp_3_fu_224_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U6(
    .din0(32'd1),
    .din1(32'd0),
    .din2(32'd4294967295),
    .din3(i_reg_147),
    .dout(tmp_5_fu_236_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U7(
    .din0(array_0_q1),
    .din1(array_1_q1),
    .din2(array_2_q1),
    .din3(i_reg_147),
    .dout(tmp_7_fu_248_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U8(
    .din0(32'd2),
    .din1(32'd0),
    .din2(32'd4294967294),
    .din3(i_reg_147),
    .dout(tmp_8_fu_260_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 32 ))
getConvolutionResbkb_U9(
    .din0(32'd4294967295),
    .din1(32'd4294967294),
    .din2(32'd4294967295),
    .din3(i_reg_147),
    .dout(tmp_s_fu_281_p5)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone))) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_subdone)))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond1_reg_372 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        horizontalResult_reg_159 <= horizontalResult_2_2_fu_317_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        horizontalResult_reg_159 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_reg_372 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_reg_147 <= i_1_reg_376;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_147 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond1_reg_372 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        verticalResult_reg_171 <= verticalResult_2_2_fu_302_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        verticalResult_reg_171 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_reg_pp0_iter1_exitcond1_reg_372 <= exitcond1_reg_372;
        exitcond1_reg_372 <= exitcond1_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        i_1_reg_376 <= i_1_fu_218_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((exitcond1_reg_372 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001)) | ((exitcond1_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_203 <= grp_fu_191_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_3_reg_381 <= tmp_3_fu_224_p5;
        tmp_5_reg_386 <= tmp_5_fu_236_p5;
        tmp_7_reg_391 <= tmp_7_fu_248_p5;
        tmp_8_reg_396 <= tmp_8_fu_260_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond1_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_4_2_reg_421 <= tmp_4_2_fu_293_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_reg_372 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_4_reg_401 <= tmp_4_fu_272_p2;
        tmp_6_1_reg_411 <= tmp_6_1_fu_277_p2;
        tmp_s_reg_416 <= tmp_s_fu_281_p5;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_reg_pp0_iter1_exitcond1_reg_372 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_6_2_reg_426 <= grp_fu_207_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_reg_372 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        tmp_6_reg_406 <= grp_fu_207_p2;
    end
end

always @ (*) begin
    if ((exitcond1_fu_212_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond1_reg_372 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_phi_fu_151_p4 = i_1_reg_376;
    end else begin
        ap_phi_mux_i_phi_fu_151_p4 = i_reg_147;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            array_0_address0 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            array_0_address0 = 64'd0;
        end else begin
            array_0_address0 = 'bx;
        end
    end else begin
        array_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        array_0_ce0 = 1'b1;
    end else begin
        array_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        array_0_ce1 = 1'b1;
    end else begin
        array_0_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            array_1_address0 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            array_1_address0 = 64'd0;
        end else begin
            array_1_address0 = 'bx;
        end
    end else begin
        array_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        array_1_ce0 = 1'b1;
    end else begin
        array_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        array_1_ce1 = 1'b1;
    end else begin
        array_1_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            array_2_address0 = 64'd2;
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
            array_2_address0 = 64'd0;
        end else begin
            array_2_address0 = 'bx;
        end
    end else begin
        array_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        array_2_ce0 = 1'b1;
    end else begin
        array_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        array_2_ce1 = 1'b1;
    end else begin
        array_2_ce1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond1_fu_212_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (exitcond1_fu_212_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd3];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_return = grp_combineOperatorResul_fu_183_ap_return;

assign array_0_address1 = 64'd1;

assign array_1_address1 = 64'd1;

assign array_2_address1 = 64'd1;

assign exitcond1_fu_212_p2 = ((ap_phi_mux_i_phi_fu_151_p4 == 2'd3) ? 1'b1 : 1'b0);

assign grp_fu_207_p2 = ($signed(tmp_5_reg_386) * $signed(reg_203));

assign horizontalResult_2_2_fu_317_p2 = (horizontalResult_reg_159 + tmp_11_fu_312_p2);

assign i_1_fu_218_p2 = (ap_phi_mux_i_phi_fu_151_p4 + 2'd1);

assign tmp1_fu_308_p2 = (tmp_6_1_reg_411 + tmp_6_2_reg_426);

assign tmp_10_fu_298_p2 = (tmp_4_2_reg_421 + tmp_4_reg_401);

assign tmp_11_fu_312_p2 = (tmp1_fu_308_p2 + tmp_6_reg_406);

assign tmp_4_2_fu_293_p2 = ($signed(tmp_s_reg_416) * $signed(reg_203));

assign tmp_4_fu_272_p2 = ($signed(tmp_3_reg_381) * $signed(reg_203));

assign tmp_6_1_fu_277_p2 = ($signed(tmp_8_reg_396) * $signed(tmp_7_reg_391));

assign verticalResult_2_2_fu_302_p2 = (verticalResult_reg_171 + tmp_10_fu_298_p2);

endmodule //getConvolutionResult
