// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getColorDistance_Str_HH_
#define _getColorDistance_Str_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "fxp_sqrt.h"
#include "getPixelClassificbkb.h"

namespace ap_rtl {

struct getColorDistance_Str : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_logic > pixel_V_TVALID;
    sc_in< sc_logic > ap_ce;
    sc_in< sc_lv<24> > pixel_V_TDATA;
    sc_out< sc_logic > pixel_V_TREADY;
    sc_in< sc_lv<17> > color_V;
    sc_out< sc_lv<12> > ap_return;
    sc_out< sc_logic > pixel_V_TDATA_blk_n;


    // Module declarations
    getColorDistance_Str(sc_module_name name);
    SC_HAS_PROCESS(getColorDistance_Str);

    ~getColorDistance_Str();

    sc_trace_file* mVcdFile;

    fxp_sqrt* grp_fxp_sqrt_fu_88;
    getPixelClassificbkb<1,1,14,9,23>* getPixelClassificbkb_U2;
    sc_signal< sc_lv<1> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter6;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter7;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter8;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter9;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter10;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter11;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter12;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter13;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter14;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter15;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< bool > ap_block_state1_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter5;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter6;
    sc_signal< bool > ap_block_state8_pp0_stage0_iter7;
    sc_signal< bool > ap_block_state9_pp0_stage0_iter8;
    sc_signal< bool > ap_block_state10_pp0_stage0_iter9;
    sc_signal< bool > ap_block_state11_pp0_stage0_iter10;
    sc_signal< bool > ap_block_state12_pp0_stage0_iter11;
    sc_signal< bool > ap_block_state13_pp0_stage0_iter12;
    sc_signal< bool > ap_block_state14_pp0_stage0_iter13;
    sc_signal< bool > ap_block_state15_pp0_stage0_iter14;
    sc_signal< bool > ap_block_state16_pp0_stage0_iter15;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<9> > r_V_fu_151_p2;
    sc_signal< sc_lv<9> > r_V_reg_498;
    sc_signal< sc_lv<9> > r_V_1_fu_165_p2;
    sc_signal< sc_lv<9> > r_V_1_reg_503;
    sc_signal< sc_lv<14> > tmp1_fu_175_p2;
    sc_signal< sc_lv<14> > tmp1_reg_508;
    sc_signal< sc_lv<9> > r_V_2_fu_189_p2;
    sc_signal< sc_lv<9> > r_V_2_reg_513;
    sc_signal< sc_lv<18> > result_fu_198_p2;
    sc_signal< sc_lv<18> > result_reg_518;
    sc_signal< sc_lv<17> > tmp_fu_204_p1;
    sc_signal< sc_lv<17> > tmp_reg_523;
    sc_signal< sc_lv<21> > tmp_13_fu_214_p1;
    sc_signal< sc_lv<21> > tmp_13_reg_528;
    sc_signal< sc_lv<1> > tmp_14_reg_533;
    sc_signal< sc_lv<21> > tmp_3_reg_538;
    sc_signal< sc_lv<18> > result_1_fu_236_p2;
    sc_signal< sc_lv<18> > result_1_reg_543;
    sc_signal< sc_lv<17> > tmp_18_fu_242_p1;
    sc_signal< sc_lv<17> > tmp_18_reg_548;
    sc_signal< sc_lv<20> > tmp_s_fu_314_p3;
    sc_signal< sc_lv<20> > tmp_s_reg_553;
    sc_signal< sc_lv<21> > tmp_6_fu_351_p3;
    sc_signal< sc_lv<21> > tmp_6_reg_558;
    sc_signal< sc_lv<20> > tmp_16_fu_425_p3;
    sc_signal< sc_lv<20> > tmp_16_reg_563;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_lv<32> > grp_fxp_sqrt_fu_88_in_val_V_read;
    sc_signal< sc_lv<20> > grp_fxp_sqrt_fu_88_ap_return;
    sc_signal< sc_logic > grp_fxp_sqrt_fu_88_ap_ce;
    sc_signal< sc_lv<8> > pixelRed_V_fu_93_p4;
    sc_signal< sc_lv<1> > rhs_V_fu_117_p3;
    sc_signal< sc_lv<9> > lhs_V_fu_139_p1;
    sc_signal< sc_lv<9> > rhs_V_cast_fu_143_p3;
    sc_signal< sc_lv<8> > pixelGreen_V_fu_103_p1;
    sc_signal< sc_lv<8> > colorGreen_V_fu_125_p1;
    sc_signal< sc_lv<9> > lhs_V_1_fu_157_p1;
    sc_signal< sc_lv<9> > rhs_V_1_fu_161_p1;
    sc_signal< sc_lv<9> > tmp1_fu_175_p1;
    sc_signal< sc_lv<8> > pixelBlue_V_fu_107_p4;
    sc_signal< sc_lv<8> > colorBlue_V_fu_129_p4;
    sc_signal< sc_lv<9> > lhs_V_2_fu_181_p1;
    sc_signal< sc_lv<9> > rhs_V_2_fu_185_p1;
    sc_signal< sc_lv<9> > result_fu_198_p0;
    sc_signal< sc_lv<18> > number_assign_cast_fu_195_p1;
    sc_signal< sc_lv<9> > result_fu_198_p1;
    sc_signal< sc_lv<23> > tmp_5_fu_489_p2;
    sc_signal< sc_lv<9> > result_1_fu_236_p0;
    sc_signal< sc_lv<18> > number_assign_2_cast_fu_233_p1;
    sc_signal< sc_lv<9> > result_1_fu_236_p1;
    sc_signal< sc_lv<19> > p_shl1_fu_249_p3;
    sc_signal< sc_lv<20> > result_cast6_fu_246_p1;
    sc_signal< sc_lv<20> > p_shl1_cast_fu_256_p1;
    sc_signal< sc_lv<20> > tmp_2_fu_260_p2;
    sc_signal< sc_lv<20> > p_neg1_fu_274_p2;
    sc_signal< sc_lv<19> > tmp_8_fu_280_p4;
    sc_signal< sc_lv<20> > tmp_cast_fu_290_p1;
    sc_signal< sc_lv<19> > tmp_10_fu_300_p4;
    sc_signal< sc_lv<1> > tmp_7_fu_266_p3;
    sc_signal< sc_lv<20> > tmp_1_fu_294_p2;
    sc_signal< sc_lv<20> > tmp_4_cast_fu_310_p1;
    sc_signal< sc_lv<21> > p_neg9_fu_322_p2;
    sc_signal< sc_lv<19> > tmp_15_fu_327_p4;
    sc_signal< sc_lv<20> > tmp_10_cast_fu_337_p1;
    sc_signal< sc_lv<20> > tmp_4_fu_341_p2;
    sc_signal< sc_lv<21> > tmp_11_cast_fu_347_p1;
    sc_signal< sc_lv<19> > p_shl_fu_360_p3;
    sc_signal< sc_lv<20> > p_shl_cast_fu_367_p1;
    sc_signal< sc_lv<20> > result_2_cast3_fu_357_p1;
    sc_signal< sc_lv<20> > tmp_9_fu_371_p2;
    sc_signal< sc_lv<20> > p_neg_fu_385_p2;
    sc_signal< sc_lv<19> > tmp_20_fu_391_p4;
    sc_signal< sc_lv<20> > tmp_14_cast_fu_401_p1;
    sc_signal< sc_lv<19> > tmp_21_fu_411_p4;
    sc_signal< sc_lv<1> > tmp_19_fu_377_p3;
    sc_signal< sc_lv<20> > tmp_11_fu_405_p2;
    sc_signal< sc_lv<20> > tmp_17_cast_fu_421_p1;
    sc_signal< sc_lv<28> > tmp_12_fu_433_p3;
    sc_signal< sc_lv<29> > tmp_17_fu_444_p3;
    sc_signal< sc_lv<28> > tmp_22_fu_455_p3;
    sc_signal< sc_lv<32> > p_Val2_s_fu_440_p1;
    sc_signal< sc_lv<32> > p_Val2_2_fu_462_p1;
    sc_signal< sc_lv<32> > tmp2_fu_466_p2;
    sc_signal< sc_lv<32> > p_Val2_1_fu_451_p1;
    sc_signal< sc_lv<1> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0_0to14;
    sc_signal< sc_logic > ap_reset_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<1> ap_ST_fsm_pp0_stage0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<9> ap_const_lv9_FF;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<14> ap_const_lv14_B;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<20> ap_const_lv20_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<8> ap_const_lv8_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state10_pp0_stage0_iter9();
    void thread_ap_block_state11_pp0_stage0_iter10();
    void thread_ap_block_state12_pp0_stage0_iter11();
    void thread_ap_block_state13_pp0_stage0_iter12();
    void thread_ap_block_state14_pp0_stage0_iter13();
    void thread_ap_block_state15_pp0_stage0_iter14();
    void thread_ap_block_state16_pp0_stage0_iter15();
    void thread_ap_block_state1_pp0_stage0_iter0();
    void thread_ap_block_state2_pp0_stage0_iter1();
    void thread_ap_block_state3_pp0_stage0_iter2();
    void thread_ap_block_state4_pp0_stage0_iter3();
    void thread_ap_block_state5_pp0_stage0_iter4();
    void thread_ap_block_state6_pp0_stage0_iter5();
    void thread_ap_block_state7_pp0_stage0_iter6();
    void thread_ap_block_state8_pp0_stage0_iter7();
    void thread_ap_block_state9_pp0_stage0_iter8();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_reg_pp0_iter0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp0_0to14();
    void thread_ap_ready();
    void thread_ap_reset_idle_pp0();
    void thread_ap_return();
    void thread_colorBlue_V_fu_129_p4();
    void thread_colorGreen_V_fu_125_p1();
    void thread_grp_fxp_sqrt_fu_88_ap_ce();
    void thread_grp_fxp_sqrt_fu_88_in_val_V_read();
    void thread_lhs_V_1_fu_157_p1();
    void thread_lhs_V_2_fu_181_p1();
    void thread_lhs_V_fu_139_p1();
    void thread_number_assign_2_cast_fu_233_p1();
    void thread_number_assign_cast_fu_195_p1();
    void thread_p_Val2_1_fu_451_p1();
    void thread_p_Val2_2_fu_462_p1();
    void thread_p_Val2_s_fu_440_p1();
    void thread_p_neg1_fu_274_p2();
    void thread_p_neg9_fu_322_p2();
    void thread_p_neg_fu_385_p2();
    void thread_p_shl1_cast_fu_256_p1();
    void thread_p_shl1_fu_249_p3();
    void thread_p_shl_cast_fu_367_p1();
    void thread_p_shl_fu_360_p3();
    void thread_pixelBlue_V_fu_107_p4();
    void thread_pixelGreen_V_fu_103_p1();
    void thread_pixelRed_V_fu_93_p4();
    void thread_pixel_V_TDATA_blk_n();
    void thread_pixel_V_TREADY();
    void thread_r_V_1_fu_165_p2();
    void thread_r_V_2_fu_189_p2();
    void thread_r_V_fu_151_p2();
    void thread_result_1_fu_236_p0();
    void thread_result_1_fu_236_p1();
    void thread_result_1_fu_236_p2();
    void thread_result_2_cast3_fu_357_p1();
    void thread_result_cast6_fu_246_p1();
    void thread_result_fu_198_p0();
    void thread_result_fu_198_p1();
    void thread_result_fu_198_p2();
    void thread_rhs_V_1_fu_161_p1();
    void thread_rhs_V_2_fu_185_p1();
    void thread_rhs_V_cast_fu_143_p3();
    void thread_rhs_V_fu_117_p3();
    void thread_tmp1_fu_175_p1();
    void thread_tmp1_fu_175_p2();
    void thread_tmp2_fu_466_p2();
    void thread_tmp_10_cast_fu_337_p1();
    void thread_tmp_10_fu_300_p4();
    void thread_tmp_11_cast_fu_347_p1();
    void thread_tmp_11_fu_405_p2();
    void thread_tmp_12_fu_433_p3();
    void thread_tmp_13_fu_214_p1();
    void thread_tmp_14_cast_fu_401_p1();
    void thread_tmp_15_fu_327_p4();
    void thread_tmp_16_fu_425_p3();
    void thread_tmp_17_cast_fu_421_p1();
    void thread_tmp_17_fu_444_p3();
    void thread_tmp_18_fu_242_p1();
    void thread_tmp_19_fu_377_p3();
    void thread_tmp_1_fu_294_p2();
    void thread_tmp_20_fu_391_p4();
    void thread_tmp_21_fu_411_p4();
    void thread_tmp_22_fu_455_p3();
    void thread_tmp_2_fu_260_p2();
    void thread_tmp_4_cast_fu_310_p1();
    void thread_tmp_4_fu_341_p2();
    void thread_tmp_6_fu_351_p3();
    void thread_tmp_7_fu_266_p3();
    void thread_tmp_8_fu_280_p4();
    void thread_tmp_9_fu_371_p2();
    void thread_tmp_cast_fu_290_p1();
    void thread_tmp_fu_204_p1();
    void thread_tmp_s_fu_314_p3();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
