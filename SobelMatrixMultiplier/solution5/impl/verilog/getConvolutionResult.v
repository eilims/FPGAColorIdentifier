// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="getConvolutionResult,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020iclg400-1l,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.510000,HLS_SYN_LAT=104,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=6,HLS_SYN_FF=701,HLS_SYN_LUT=4039}" *)

module getConvolutionResult (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        array_r_address0,
        array_r_ce0,
        array_r_q0,
        ap_return
);

parameter    ap_ST_fsm_state1 = 13'd1;
parameter    ap_ST_fsm_state2 = 13'd2;
parameter    ap_ST_fsm_state3 = 13'd4;
parameter    ap_ST_fsm_state4 = 13'd8;
parameter    ap_ST_fsm_state5 = 13'd16;
parameter    ap_ST_fsm_state6 = 13'd32;
parameter    ap_ST_fsm_state7 = 13'd64;
parameter    ap_ST_fsm_state8 = 13'd128;
parameter    ap_ST_fsm_state9 = 13'd256;
parameter    ap_ST_fsm_state10 = 13'd512;
parameter    ap_ST_fsm_state11 = 13'd1024;
parameter    ap_ST_fsm_state12 = 13'd2048;
parameter    ap_ST_fsm_state13 = 13'd4096;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] array_r_address0;
output   array_r_ce0;
input  [95:0] array_r_q0;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[1:0] array_r_address0;
reg array_r_ce0;

(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [1:0] row_fu_155_p2;
reg   [1:0] row_reg_644;
wire    ap_CS_fsm_state2;
wire   [6:0] tmp_5_i_fu_161_p3;
reg   [6:0] tmp_5_i_reg_649;
wire   [0:0] exitcond1_i_fu_149_p2;
wire   [6:0] tmp_6_i_fu_169_p2;
reg   [6:0] tmp_6_i_reg_663;
wire   [1:0] col_fu_186_p2;
reg   [1:0] col_reg_683;
wire    ap_CS_fsm_state3;
wire   [0:0] exitcond_i_fu_180_p2;
wire   [6:0] tmp_10_fu_247_p2;
reg   [6:0] tmp_10_reg_693;
wire    ap_CS_fsm_state4;
wire   [95:0] tmp_13_fu_257_p2;
reg   [95:0] tmp_13_reg_698;
wire   [6:0] tmp_25_fu_325_p2;
reg   [6:0] tmp_25_reg_703;
wire   [95:0] tmp_28_fu_335_p2;
reg   [95:0] tmp_28_reg_708;
wire  signed [31:0] tmp_16_fu_355_p1;
reg  signed [31:0] tmp_16_reg_713;
wire    ap_CS_fsm_state5;
wire  signed [31:0] tmp_31_fu_373_p1;
reg  signed [31:0] tmp_31_reg_718;
wire   [31:0] tmp_3_i_fu_377_p2;
reg   [31:0] tmp_3_i_reg_723;
wire    ap_CS_fsm_state6;
wire   [1:0] row_1_fu_397_p2;
reg   [1:0] row_1_reg_731;
wire    ap_CS_fsm_state8;
wire   [6:0] tmp_12_i_fu_403_p3;
reg   [6:0] tmp_12_i_reg_736;
wire   [0:0] exitcond1_i4_fu_391_p2;
wire   [6:0] tmp_13_i_fu_411_p2;
reg   [6:0] tmp_13_i_reg_750;
wire   [1:0] col_1_fu_429_p2;
reg   [1:0] col_1_reg_763;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond_i8_fu_423_p2;
wire   [6:0] tmp_40_fu_490_p2;
reg   [6:0] tmp_40_reg_773;
wire    ap_CS_fsm_state10;
wire   [95:0] tmp_43_fu_500_p2;
reg   [95:0] tmp_43_reg_778;
wire   [6:0] tmp_55_fu_568_p2;
reg   [6:0] tmp_55_reg_783;
wire   [95:0] tmp_58_fu_578_p2;
reg   [95:0] tmp_58_reg_788;
wire  signed [31:0] tmp_46_fu_598_p1;
reg  signed [31:0] tmp_46_reg_793;
wire    ap_CS_fsm_state11;
wire  signed [31:0] tmp_61_fu_616_p1;
reg  signed [31:0] tmp_61_reg_798;
wire   [31:0] tmp_8_i1_fu_620_p2;
reg   [31:0] tmp_8_i1_reg_803;
wire    ap_CS_fsm_state12;
reg   [1:0] row_i_reg_92;
reg   [1:0] col_i_reg_103;
wire    ap_CS_fsm_state7;
reg   [1:0] row_i2_reg_115;
reg   [1:0] col_i7_reg_126;
wire    ap_CS_fsm_state13;
wire   [63:0] tmp_2_i_fu_192_p1;
wire   [63:0] tmp_7_i9_fu_435_p1;
reg   [31:0] verticalResult_assig_fu_64;
wire   [31:0] summation_fu_381_p2;
reg   [31:0] horizontalResult_ass_fu_68;
wire   [31:0] summation_1_fu_624_p2;
wire   [0:0] tmp_2_fu_197_p2;
wire   [6:0] tmp_4_fu_211_p2;
wire   [6:0] tmp_6_fu_220_p2;
reg   [95:0] tmp_3_fu_201_p4;
wire   [6:0] tmp_5_fu_215_p2;
wire   [6:0] tmp_7_fu_224_p3;
wire   [6:0] tmp_9_fu_240_p3;
wire   [95:0] tmp_8_fu_232_p3;
wire   [95:0] tmp_11_fu_253_p1;
wire   [95:0] tmp_fu_263_p5;
wire   [0:0] tmp_17_fu_275_p2;
wire   [6:0] tmp_19_fu_289_p2;
wire   [6:0] tmp_21_fu_298_p2;
reg   [95:0] tmp_18_fu_279_p4;
wire   [6:0] tmp_20_fu_293_p2;
wire   [6:0] tmp_22_fu_302_p3;
wire   [6:0] tmp_24_fu_318_p3;
wire   [95:0] tmp_23_fu_310_p3;
wire   [95:0] tmp_26_fu_331_p1;
wire   [95:0] tmp_12_fu_341_p1;
wire   [95:0] tmp_14_fu_344_p2;
wire   [95:0] tmp_15_fu_350_p2;
wire   [95:0] tmp_27_fu_359_p1;
wire   [95:0] tmp_29_fu_362_p2;
wire   [95:0] tmp_30_fu_368_p2;
wire   [0:0] tmp_32_fu_440_p2;
wire   [6:0] tmp_34_fu_454_p2;
wire   [6:0] tmp_36_fu_463_p2;
reg   [95:0] tmp_33_fu_444_p4;
wire   [6:0] tmp_35_fu_458_p2;
wire   [6:0] tmp_37_fu_467_p3;
wire   [6:0] tmp_39_fu_483_p3;
wire   [95:0] tmp_38_fu_475_p3;
wire   [95:0] tmp_41_fu_496_p1;
wire   [95:0] tmp_1_fu_506_p5;
wire   [0:0] tmp_47_fu_518_p2;
wire   [6:0] tmp_49_fu_532_p2;
wire   [6:0] tmp_51_fu_541_p2;
reg   [95:0] tmp_48_fu_522_p4;
wire   [6:0] tmp_50_fu_536_p2;
wire   [6:0] tmp_52_fu_545_p3;
wire   [6:0] tmp_54_fu_561_p3;
wire   [95:0] tmp_53_fu_553_p3;
wire   [95:0] tmp_56_fu_574_p1;
wire   [95:0] tmp_42_fu_584_p1;
wire   [95:0] tmp_44_fu_587_p2;
wire   [95:0] tmp_45_fu_593_p2;
wire   [95:0] tmp_57_fu_602_p1;
wire   [95:0] tmp_59_fu_605_p2;
wire   [95:0] tmp_60_fu_611_p2;
reg   [12:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 13'd1;
end

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 96 ),
    .din1_WIDTH( 96 ),
    .din2_WIDTH( 96 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 96 ))
getConvolutionResbkb_U1(
    .din0(96'd18446744082299486209),
    .din1(96'd0),
    .din2(96'd79228162514264337589248983039),
    .din3(col_i_reg_103),
    .dout(tmp_fu_263_p5)
);

getConvolutionResbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 96 ),
    .din1_WIDTH( 96 ),
    .din2_WIDTH( 96 ),
    .din3_WIDTH( 2 ),
    .dout_WIDTH( 96 ))
getConvolutionResbkb_U2(
    .din0(96'd79228162495817593519834398721),
    .din1(96'd79228162477370849446124847106),
    .din2(96'd79228162495817593519834398721),
    .din3(col_i7_reg_126),
    .dout(tmp_1_fu_506_p5)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        col_i7_reg_126 <= col_1_reg_763;
    end else if (((exitcond1_i4_fu_391_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        col_i7_reg_126 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        col_i_reg_103 <= col_reg_683;
    end else if (((exitcond1_i_fu_149_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        col_i_reg_103 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        horizontalResult_ass_fu_68 <= summation_1_fu_624_p2;
    end else if (((exitcond1_i_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        horizontalResult_ass_fu_68 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        row_i2_reg_115 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (exitcond_i8_fu_423_p2 == 1'd1))) begin
        row_i2_reg_115 <= row_1_reg_731;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond_i_fu_180_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        row_i_reg_92 <= row_reg_644;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        row_i_reg_92 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        verticalResult_assig_fu_64 <= summation_fu_381_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        verticalResult_assig_fu_64 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        col_1_reg_763 <= col_1_fu_429_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        col_reg_683 <= col_fu_186_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        row_1_reg_731 <= row_1_fu_397_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        row_reg_644 <= row_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_10_reg_693[6 : 1] <= tmp_10_fu_247_p2[6 : 1];
        tmp_13_reg_698 <= tmp_13_fu_257_p2;
        tmp_25_reg_703[6 : 1] <= tmp_25_fu_325_p2[6 : 1];
        tmp_28_reg_708 <= tmp_28_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i4_fu_391_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        tmp_12_i_reg_736[6 : 5] <= tmp_12_i_fu_403_p3[6 : 5];
        tmp_13_i_reg_750[6 : 5] <= tmp_13_i_fu_411_p2[6 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_16_reg_713 <= tmp_16_fu_355_p1;
        tmp_31_reg_718 <= tmp_31_fu_373_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_i_reg_723 <= tmp_3_i_fu_377_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_40_reg_773[6 : 1] <= tmp_40_fu_490_p2[6 : 1];
        tmp_43_reg_778 <= tmp_43_fu_500_p2;
        tmp_55_reg_783[6 : 1] <= tmp_55_fu_568_p2[6 : 1];
        tmp_58_reg_788 <= tmp_58_fu_578_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_46_reg_793 <= tmp_46_fu_598_p1;
        tmp_61_reg_798 <= tmp_61_fu_616_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_i_fu_149_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        tmp_5_i_reg_649[6 : 5] <= tmp_5_i_fu_161_p3[6 : 5];
        tmp_6_i_reg_663[6 : 5] <= tmp_6_i_fu_169_p2[6 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        tmp_8_i1_reg_803 <= tmp_8_i1_fu_620_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) & (exitcond1_i4_fu_391_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state8) & (exitcond1_i4_fu_391_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        array_r_address0 = tmp_7_i9_fu_435_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        array_r_address0 = tmp_2_i_fu_192_p1;
    end else begin
        array_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state9))) begin
        array_r_ce0 = 1'b1;
    end else begin
        array_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond1_i_fu_149_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((exitcond_i_fu_180_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (exitcond1_i4_fu_391_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (exitcond_i8_fu_423_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
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
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = (horizontalResult_ass_fu_68 + verticalResult_assig_fu_64);

assign col_1_fu_429_p2 = (col_i7_reg_126 + 2'd1);

assign col_fu_186_p2 = (col_i_reg_103 + 2'd1);

assign exitcond1_i4_fu_391_p2 = ((row_i2_reg_115 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond1_i_fu_149_p2 = ((row_i_reg_92 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_i8_fu_423_p2 = ((col_i7_reg_126 == 2'd3) ? 1'b1 : 1'b0);

assign exitcond_i_fu_180_p2 = ((col_i_reg_103 == 2'd3) ? 1'b1 : 1'b0);

assign row_1_fu_397_p2 = (row_i2_reg_115 + 2'd1);

assign row_fu_155_p2 = (row_i_reg_92 + 2'd1);

assign summation_1_fu_624_p2 = (horizontalResult_ass_fu_68 + tmp_8_i1_reg_803);

assign summation_fu_381_p2 = (verticalResult_assig_fu_64 + tmp_3_i_reg_723);

assign tmp_10_fu_247_p2 = ($signed(7'd95) - $signed(tmp_7_fu_224_p3));

assign tmp_11_fu_253_p1 = tmp_9_fu_240_p3;

assign tmp_12_fu_341_p1 = tmp_10_reg_693;

assign tmp_12_i_fu_403_p3 = {{row_i2_reg_115}, {5'd0}};

assign tmp_13_fu_257_p2 = tmp_8_fu_232_p3 >> tmp_11_fu_253_p1;

assign tmp_13_i_fu_411_p2 = (tmp_12_i_fu_403_p3 | 7'd31);

assign tmp_14_fu_344_p2 = 96'd79228162514264337593543950335 >> tmp_12_fu_341_p1;

assign tmp_15_fu_350_p2 = (tmp_14_fu_344_p2 & tmp_13_reg_698);

assign tmp_16_fu_355_p1 = tmp_15_fu_350_p2[31:0];

assign tmp_17_fu_275_p2 = ((tmp_5_i_reg_649 > tmp_6_i_reg_663) ? 1'b1 : 1'b0);

integer ap_tvar_int_0;

always @ (tmp_fu_263_p5) begin
    for (ap_tvar_int_0 = 96 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 95 - 0) begin
            tmp_18_fu_279_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_18_fu_279_p4[ap_tvar_int_0] = tmp_fu_263_p5[95 - ap_tvar_int_0];
        end
    end
end

assign tmp_19_fu_289_p2 = (tmp_5_i_reg_649 - tmp_6_i_reg_663);

assign tmp_20_fu_293_p2 = ($signed(7'd95) - $signed(tmp_5_i_reg_649));

assign tmp_21_fu_298_p2 = (tmp_6_i_reg_663 - tmp_5_i_reg_649);

assign tmp_22_fu_302_p3 = ((tmp_17_fu_275_p2[0:0] === 1'b1) ? tmp_19_fu_289_p2 : tmp_21_fu_298_p2);

assign tmp_23_fu_310_p3 = ((tmp_17_fu_275_p2[0:0] === 1'b1) ? tmp_18_fu_279_p4 : tmp_fu_263_p5);

assign tmp_24_fu_318_p3 = ((tmp_17_fu_275_p2[0:0] === 1'b1) ? tmp_20_fu_293_p2 : tmp_5_i_reg_649);

assign tmp_25_fu_325_p2 = ($signed(7'd95) - $signed(tmp_22_fu_302_p3));

assign tmp_26_fu_331_p1 = tmp_24_fu_318_p3;

assign tmp_27_fu_359_p1 = tmp_25_reg_703;

assign tmp_28_fu_335_p2 = tmp_23_fu_310_p3 >> tmp_26_fu_331_p1;

assign tmp_29_fu_362_p2 = 96'd79228162514264337593543950335 >> tmp_27_fu_359_p1;

assign tmp_2_fu_197_p2 = ((tmp_5_i_reg_649 > tmp_6_i_reg_663) ? 1'b1 : 1'b0);

assign tmp_2_i_fu_192_p1 = col_i_reg_103;

assign tmp_30_fu_368_p2 = (tmp_29_fu_362_p2 & tmp_28_reg_708);

assign tmp_31_fu_373_p1 = tmp_30_fu_368_p2[31:0];

assign tmp_32_fu_440_p2 = ((tmp_12_i_reg_736 > tmp_13_i_reg_750) ? 1'b1 : 1'b0);

integer ap_tvar_int_1;

always @ (array_r_q0) begin
    for (ap_tvar_int_1 = 96 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 95 - 0) begin
            tmp_33_fu_444_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_33_fu_444_p4[ap_tvar_int_1] = array_r_q0[95 - ap_tvar_int_1];
        end
    end
end

assign tmp_34_fu_454_p2 = (tmp_12_i_reg_736 - tmp_13_i_reg_750);

assign tmp_35_fu_458_p2 = ($signed(7'd95) - $signed(tmp_12_i_reg_736));

assign tmp_36_fu_463_p2 = (tmp_13_i_reg_750 - tmp_12_i_reg_736);

assign tmp_37_fu_467_p3 = ((tmp_32_fu_440_p2[0:0] === 1'b1) ? tmp_34_fu_454_p2 : tmp_36_fu_463_p2);

assign tmp_38_fu_475_p3 = ((tmp_32_fu_440_p2[0:0] === 1'b1) ? tmp_33_fu_444_p4 : array_r_q0);

assign tmp_39_fu_483_p3 = ((tmp_32_fu_440_p2[0:0] === 1'b1) ? tmp_35_fu_458_p2 : tmp_12_i_reg_736);

integer ap_tvar_int_2;

always @ (array_r_q0) begin
    for (ap_tvar_int_2 = 96 - 1; ap_tvar_int_2 >= 0; ap_tvar_int_2 = ap_tvar_int_2 - 1) begin
        if (ap_tvar_int_2 > 95 - 0) begin
            tmp_3_fu_201_p4[ap_tvar_int_2] = 1'b0;
        end else begin
            tmp_3_fu_201_p4[ap_tvar_int_2] = array_r_q0[95 - ap_tvar_int_2];
        end
    end
end

assign tmp_3_i_fu_377_p2 = ($signed(tmp_31_reg_718) * $signed(tmp_16_reg_713));

assign tmp_40_fu_490_p2 = ($signed(7'd95) - $signed(tmp_37_fu_467_p3));

assign tmp_41_fu_496_p1 = tmp_39_fu_483_p3;

assign tmp_42_fu_584_p1 = tmp_40_reg_773;

assign tmp_43_fu_500_p2 = tmp_38_fu_475_p3 >> tmp_41_fu_496_p1;

assign tmp_44_fu_587_p2 = 96'd79228162514264337593543950335 >> tmp_42_fu_584_p1;

assign tmp_45_fu_593_p2 = (tmp_44_fu_587_p2 & tmp_43_reg_778);

assign tmp_46_fu_598_p1 = tmp_45_fu_593_p2[31:0];

assign tmp_47_fu_518_p2 = ((tmp_12_i_reg_736 > tmp_13_i_reg_750) ? 1'b1 : 1'b0);

integer ap_tvar_int_3;

always @ (tmp_1_fu_506_p5) begin
    for (ap_tvar_int_3 = 96 - 1; ap_tvar_int_3 >= 0; ap_tvar_int_3 = ap_tvar_int_3 - 1) begin
        if (ap_tvar_int_3 > 95 - 0) begin
            tmp_48_fu_522_p4[ap_tvar_int_3] = 1'b0;
        end else begin
            tmp_48_fu_522_p4[ap_tvar_int_3] = tmp_1_fu_506_p5[95 - ap_tvar_int_3];
        end
    end
end

assign tmp_49_fu_532_p2 = (tmp_12_i_reg_736 - tmp_13_i_reg_750);

assign tmp_4_fu_211_p2 = (tmp_5_i_reg_649 - tmp_6_i_reg_663);

assign tmp_50_fu_536_p2 = ($signed(7'd95) - $signed(tmp_12_i_reg_736));

assign tmp_51_fu_541_p2 = (tmp_13_i_reg_750 - tmp_12_i_reg_736);

assign tmp_52_fu_545_p3 = ((tmp_47_fu_518_p2[0:0] === 1'b1) ? tmp_49_fu_532_p2 : tmp_51_fu_541_p2);

assign tmp_53_fu_553_p3 = ((tmp_47_fu_518_p2[0:0] === 1'b1) ? tmp_48_fu_522_p4 : tmp_1_fu_506_p5);

assign tmp_54_fu_561_p3 = ((tmp_47_fu_518_p2[0:0] === 1'b1) ? tmp_50_fu_536_p2 : tmp_12_i_reg_736);

assign tmp_55_fu_568_p2 = ($signed(7'd95) - $signed(tmp_52_fu_545_p3));

assign tmp_56_fu_574_p1 = tmp_54_fu_561_p3;

assign tmp_57_fu_602_p1 = tmp_55_reg_783;

assign tmp_58_fu_578_p2 = tmp_53_fu_553_p3 >> tmp_56_fu_574_p1;

assign tmp_59_fu_605_p2 = 96'd79228162514264337593543950335 >> tmp_57_fu_602_p1;

assign tmp_5_fu_215_p2 = ($signed(7'd95) - $signed(tmp_5_i_reg_649));

assign tmp_5_i_fu_161_p3 = {{row_i_reg_92}, {5'd0}};

assign tmp_60_fu_611_p2 = (tmp_59_fu_605_p2 & tmp_58_reg_788);

assign tmp_61_fu_616_p1 = tmp_60_fu_611_p2[31:0];

assign tmp_6_fu_220_p2 = (tmp_6_i_reg_663 - tmp_5_i_reg_649);

assign tmp_6_i_fu_169_p2 = (tmp_5_i_fu_161_p3 | 7'd31);

assign tmp_7_fu_224_p3 = ((tmp_2_fu_197_p2[0:0] === 1'b1) ? tmp_4_fu_211_p2 : tmp_6_fu_220_p2);

assign tmp_7_i9_fu_435_p1 = col_i7_reg_126;

assign tmp_8_fu_232_p3 = ((tmp_2_fu_197_p2[0:0] === 1'b1) ? tmp_3_fu_201_p4 : array_r_q0);

assign tmp_8_i1_fu_620_p2 = ($signed(tmp_61_reg_798) * $signed(tmp_46_reg_793));

assign tmp_9_fu_240_p3 = ((tmp_2_fu_197_p2[0:0] === 1'b1) ? tmp_5_fu_215_p2 : tmp_5_i_reg_649);

always @ (posedge ap_clk) begin
    tmp_5_i_reg_649[4:0] <= 5'b00000;
    tmp_6_i_reg_663[4:0] <= 5'b11111;
    tmp_10_reg_693[0] <= 1'b0;
    tmp_25_reg_703[0] <= 1'b0;
    tmp_12_i_reg_736[4:0] <= 5'b00000;
    tmp_13_i_reg_750[4:0] <= 5'b11111;
    tmp_40_reg_773[0] <= 1'b0;
    tmp_55_reg_783[0] <= 1'b0;
end

endmodule //getConvolutionResult
