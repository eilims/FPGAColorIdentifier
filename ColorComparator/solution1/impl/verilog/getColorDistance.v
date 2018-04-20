// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module getColorDistance (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        pixel_TVALID,
        ap_ce,
        pixel_TDATA,
        pixel_TREADY,
        color,
        ap_return,
        pixel_TDATA_blk_n
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   pixel_TVALID;
input   ap_ce;
input  [31:0] pixel_TDATA;
output   pixel_TREADY;
input  [16:0] color;
output  [11:0] ap_return;
output   pixel_TDATA_blk_n;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg pixel_TREADY;
reg pixel_TDATA_blk_n;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
reg    ap_block_pp0_stage0_11001;
wire   [17:0] result_fu_155_p2;
reg   [17:0] result_reg_279;
wire   [17:0] result_1_fu_171_p2;
reg   [17:0] result_1_reg_284;
wire   [27:0] p_Val2_s_fu_221_p2;
reg   [27:0] p_Val2_s_reg_289;
reg    ap_block_pp0_stage0_subdone;
wire   [29:0] grp_fxp_sqrt_fu_66_in_val_V_read;
wire   [19:0] grp_fxp_sqrt_fu_66_ap_return;
reg    grp_fxp_sqrt_fu_66_ap_ce;
wire   [7:0] pixelRed_fu_71_p4;
wire   [7:0] pixelGreen_fu_85_p4;
wire   [7:0] pixelBlue_fu_99_p1;
wire   [0:0] tmp_5_fu_107_p3;
wire   [7:0] colorGreen_fu_123_p4;
wire   [7:0] colorBlue_fu_137_p1;
wire   [8:0] pixelRed_cast_fu_81_p1;
wire   [8:0] colorRed_cast_fu_115_p3;
wire   [8:0] number_assign_fu_145_p2;
wire  signed [8:0] result_fu_155_p0;
wire  signed [17:0] number_assign_cast_c_fu_151_p1;
wire  signed [8:0] result_fu_155_p1;
wire   [8:0] pixelGreen_cast_fu_95_p1;
wire   [8:0] colorGreen_cast_fu_133_p1;
wire   [8:0] number_assign_1_fu_161_p2;
wire  signed [8:0] result_1_fu_171_p0;
wire  signed [17:0] number_assign_1_cast_fu_167_p1;
wire  signed [8:0] result_1_fu_171_p1;
wire   [8:0] pixelBlue_cast_fu_103_p1;
wire   [8:0] colorBlue_cast_fu_141_p1;
wire   [8:0] number_assign_2_fu_177_p2;
wire  signed [8:0] tmp_9_fu_191_p0;
wire  signed [8:0] tmp_9_fu_191_p1;
wire   [16:0] tmp_9_fu_191_p2;
wire   [26:0] p_shl_fu_197_p3;
wire   [24:0] p_shl9_fu_209_p3;
wire  signed [27:0] p_shl_cast_fu_205_p1;
wire  signed [27:0] p_shl9_cast_fu_217_p1;
wire   [26:0] tmp_fu_227_p3;
wire   [27:0] tmp_2_fu_238_p3;
wire  signed [28:0] p_Val2_2_cast_cast_fu_249_p1;
wire  signed [28:0] p_Val2_1_cast_fu_245_p1;
wire   [28:0] tmp5_fu_252_p2;
wire  signed [29:0] p_Val2_cast_fu_234_p1;
wire  signed [29:0] tmp5_cast_fu_258_p1;
reg   [0:0] ap_NS_fsm;
reg    ap_idle_pp0_0to12;
reg    ap_reset_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
end

fxp_sqrt grp_fxp_sqrt_fu_66(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .in_val_V_read(grp_fxp_sqrt_fu_66_in_val_V_read),
    .ap_return(grp_fxp_sqrt_fu_66_ap_return),
    .ap_ce(grp_fxp_sqrt_fu_66_ap_ce)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= ap_start;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_Val2_s_reg_289[27 : 8] <= p_Val2_s_fu_221_p2[27 : 8];
        result_1_reg_284 <= result_1_fu_171_p2;
        result_reg_279 <= result_fu_155_p2;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1)) | ((ap_start == 1'b0) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_reset_idle_pp0 = 1'b1;
    end else begin
        ap_reset_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_ce) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fxp_sqrt_fu_66_ap_ce = 1'b1;
    end else begin
        grp_fxp_sqrt_fu_66_ap_ce = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pixel_TDATA_blk_n = pixel_TVALID;
    end else begin
        pixel_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_ce) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        pixel_TREADY = 1'b1;
    end else begin
        pixel_TREADY = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_start == 1'b1) & ((pixel_TVALID == 1'b0) | (ap_start == 1'b0)));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((1'b0 == ap_ce) | ((ap_start == 1'b1) & ((pixel_TVALID == 1'b0) | (ap_start == 1'b0))));
end

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = ((pixel_TVALID == 1'b0) | (ap_start == 1'b0));
end

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start;

assign ap_return = {{grp_fxp_sqrt_fu_66_ap_return[19:8]}};

assign colorBlue_cast_fu_141_p1 = colorBlue_fu_137_p1;

assign colorBlue_fu_137_p1 = color[7:0];

assign colorGreen_cast_fu_133_p1 = colorGreen_fu_123_p4;

assign colorGreen_fu_123_p4 = {{color[15:8]}};

assign colorRed_cast_fu_115_p3 = ((tmp_5_fu_107_p3[0:0] === 1'b1) ? 9'd255 : 9'd0);

assign grp_fxp_sqrt_fu_66_in_val_V_read = ($signed(p_Val2_cast_fu_234_p1) + $signed(tmp5_cast_fu_258_p1));

assign number_assign_1_cast_fu_167_p1 = $signed(number_assign_1_fu_161_p2);

assign number_assign_1_fu_161_p2 = (pixelGreen_cast_fu_95_p1 - colorGreen_cast_fu_133_p1);

assign number_assign_2_fu_177_p2 = (pixelBlue_cast_fu_103_p1 - colorBlue_cast_fu_141_p1);

assign number_assign_cast_c_fu_151_p1 = $signed(number_assign_fu_145_p2);

assign number_assign_fu_145_p2 = (pixelRed_cast_fu_81_p1 - colorRed_cast_fu_115_p3);

assign p_Val2_1_cast_fu_245_p1 = $signed(tmp_2_fu_238_p3);

assign p_Val2_2_cast_cast_fu_249_p1 = $signed(p_Val2_s_reg_289);

assign p_Val2_cast_fu_234_p1 = $signed(tmp_fu_227_p3);

assign p_Val2_s_fu_221_p2 = ($signed(p_shl_cast_fu_205_p1) - $signed(p_shl9_cast_fu_217_p1));

assign p_shl9_cast_fu_217_p1 = $signed(p_shl9_fu_209_p3);

assign p_shl9_fu_209_p3 = {{tmp_9_fu_191_p2}, {8'd0}};

assign p_shl_cast_fu_205_p1 = $signed(p_shl_fu_197_p3);

assign p_shl_fu_197_p3 = {{tmp_9_fu_191_p2}, {10'd0}};

assign pixelBlue_cast_fu_103_p1 = pixelBlue_fu_99_p1;

assign pixelBlue_fu_99_p1 = pixel_TDATA[7:0];

assign pixelGreen_cast_fu_95_p1 = pixelGreen_fu_85_p4;

assign pixelGreen_fu_85_p4 = {{pixel_TDATA[15:8]}};

assign pixelRed_cast_fu_81_p1 = pixelRed_fu_71_p4;

assign pixelRed_fu_71_p4 = {{pixel_TDATA[23:16]}};

assign result_1_fu_171_p0 = number_assign_1_cast_fu_167_p1;

assign result_1_fu_171_p1 = number_assign_1_cast_fu_167_p1;

assign result_1_fu_171_p2 = ($signed(result_1_fu_171_p0) * $signed(result_1_fu_171_p1));

assign result_fu_155_p0 = number_assign_cast_c_fu_151_p1;

assign result_fu_155_p1 = number_assign_cast_c_fu_151_p1;

assign result_fu_155_p2 = ($signed(result_fu_155_p0) * $signed(result_fu_155_p1));

assign tmp5_cast_fu_258_p1 = $signed(tmp5_fu_252_p2);

assign tmp5_fu_252_p2 = ($signed(p_Val2_2_cast_cast_fu_249_p1) + $signed(p_Val2_1_cast_fu_245_p1));

assign tmp_2_fu_238_p3 = {{result_1_reg_284}, {10'd0}};

assign tmp_5_fu_107_p3 = color[32'd16];

assign tmp_9_fu_191_p0 = number_assign_2_fu_177_p2;

assign tmp_9_fu_191_p1 = number_assign_2_fu_177_p2;

assign tmp_9_fu_191_p2 = ($signed(tmp_9_fu_191_p0) * $signed(tmp_9_fu_191_p1));

assign tmp_fu_227_p3 = {{result_reg_279}, {9'd0}};

always @ (posedge ap_clk) begin
    p_Val2_s_reg_289[7:0] <= 8'b00000000;
end

endmodule //getColorDistance