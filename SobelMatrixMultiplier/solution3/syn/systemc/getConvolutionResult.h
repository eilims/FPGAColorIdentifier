// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getConvolutionResult_HH_
#define _getConvolutionResult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "getConvolutionResbkb.h"

namespace ap_rtl {

struct getConvolutionResult : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > array_r_address0;
    sc_out< sc_logic > array_r_ce0;
    sc_in< sc_lv<96> > array_r_q0;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_lv<96> > ap_var_for_const0;
    sc_signal< sc_lv<96> > ap_var_for_const1;
    sc_signal< sc_lv<96> > ap_var_for_const2;
    sc_signal< sc_lv<96> > ap_var_for_const3;
    sc_signal< sc_lv<96> > ap_var_for_const4;


    // Module declarations
    getConvolutionResult(sc_module_name name);
    SC_HAS_PROCESS(getConvolutionResult);

    ~getConvolutionResult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    getConvolutionResbkb<1,1,96,96,96,2,96>* getConvolutionResbkb_U1;
    getConvolutionResbkb<1,1,96,96,96,2,96>* getConvolutionResbkb_U2;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > indvar_flatten_reg_90;
    sc_signal< sc_lv<2> > row_i_reg_101;
    sc_signal< sc_lv<32> > summation_1_i_reg_112;
    sc_signal< sc_lv<2> > col_i_reg_124;
    sc_signal< sc_lv<4> > indvar_flatten1_reg_135;
    sc_signal< sc_lv<2> > row_i2_reg_146;
    sc_signal< sc_lv<32> > summation_1_i6_reg_157;
    sc_signal< sc_lv<2> > col_i7_reg_169;
    sc_signal< sc_lv<1> > exitcond_flatten_fu_180_p2;
    sc_signal< sc_lv<1> > exitcond_flatten_reg_722;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_flatten_reg_722;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_flatten_reg_722;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter3_exitcond_flatten_reg_722;
    sc_signal< sc_lv<4> > indvar_flatten_next_fu_186_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<2> > col_i_mid2_fu_198_p3;
    sc_signal< sc_lv<2> > col_i_mid2_reg_731;
    sc_signal< sc_lv<2> > tmp_6_i_cast_mid2_v_s_fu_212_p3;
    sc_signal< sc_lv<2> > tmp_6_i_cast_mid2_v_s_reg_736;
    sc_signal< sc_lv<2> > col_fu_225_p2;
    sc_signal< sc_lv<7> > tmp_10_fu_302_p2;
    sc_signal< sc_lv<7> > tmp_10_reg_752;
    sc_signal< sc_lv<96> > tmp_13_fu_312_p2;
    sc_signal< sc_lv<96> > tmp_13_reg_757;
    sc_signal< sc_lv<7> > tmp_25_fu_387_p2;
    sc_signal< sc_lv<7> > tmp_25_reg_762;
    sc_signal< sc_lv<96> > tmp_28_fu_397_p2;
    sc_signal< sc_lv<96> > tmp_28_reg_767;
    sc_signal< sc_lv<32> > tmp_16_fu_417_p1;
    sc_signal< sc_lv<32> > tmp_16_reg_772;
    sc_signal< sc_lv<32> > tmp_31_fu_435_p1;
    sc_signal< sc_lv<32> > tmp_31_reg_777;
    sc_signal< sc_lv<32> > tmp_3_i_fu_439_p2;
    sc_signal< sc_lv<32> > tmp_3_i_reg_782;
    sc_signal< sc_lv<32> > summation_fu_443_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<1> > exitcond_flatten1_fu_448_p2;
    sc_signal< sc_lv<1> > exitcond_flatten1_reg_792;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state8_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state10_pp1_stage0_iter2;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter3;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter4;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > ap_reg_pp1_iter1_exitcond_flatten1_reg_792;
    sc_signal< sc_lv<1> > ap_reg_pp1_iter2_exitcond_flatten1_reg_792;
    sc_signal< sc_lv<1> > ap_reg_pp1_iter3_exitcond_flatten1_reg_792;
    sc_signal< sc_lv<4> > indvar_flatten_next1_fu_454_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<2> > col_i7_mid2_fu_466_p3;
    sc_signal< sc_lv<2> > col_i7_mid2_reg_801;
    sc_signal< sc_lv<2> > tmp_14_i_cast_mid2_v_1_fu_480_p3;
    sc_signal< sc_lv<2> > tmp_14_i_cast_mid2_v_1_reg_806;
    sc_signal< sc_lv<2> > col_1_fu_493_p2;
    sc_signal< sc_lv<7> > tmp_40_fu_570_p2;
    sc_signal< sc_lv<7> > tmp_40_reg_822;
    sc_signal< sc_lv<96> > tmp_43_fu_580_p2;
    sc_signal< sc_lv<96> > tmp_43_reg_827;
    sc_signal< sc_lv<7> > tmp_55_fu_655_p2;
    sc_signal< sc_lv<7> > tmp_55_reg_832;
    sc_signal< sc_lv<96> > tmp_58_fu_665_p2;
    sc_signal< sc_lv<96> > tmp_58_reg_837;
    sc_signal< sc_lv<32> > tmp_46_fu_685_p1;
    sc_signal< sc_lv<32> > tmp_46_reg_842;
    sc_signal< sc_lv<32> > tmp_61_fu_703_p1;
    sc_signal< sc_lv<32> > tmp_61_reg_847;
    sc_signal< sc_lv<32> > tmp_8_i1_fu_707_p2;
    sc_signal< sc_lv<32> > tmp_8_i1_reg_852;
    sc_signal< sc_lv<32> > summation_1_fu_711_p2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter4;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state8;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter3;
    sc_signal< sc_lv<2> > ap_phi_mux_row_i_phi_fu_105_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<2> > ap_phi_mux_row_i2_phi_fu_150_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<64> > tmp_2_i_fu_220_p1;
    sc_signal< sc_lv<64> > tmp_7_i9_fu_488_p1;
    sc_signal< sc_lv<1> > exitcond_i_fu_192_p2;
    sc_signal< sc_lv<2> > row_fu_206_p2;
    sc_signal< sc_lv<7> > tmp_6_i_cast_mid2_v_fu_231_p3;
    sc_signal< sc_lv<7> > tmp_7_i_cast_mid2_v_fu_238_p2;
    sc_signal< sc_lv<1> > tmp_2_fu_244_p2;
    sc_signal< sc_lv<7> > tmp_4_fu_260_p2;
    sc_signal< sc_lv<7> > tmp_6_fu_272_p2;
    sc_signal< sc_lv<96> > tmp_3_fu_250_p4;
    sc_signal< sc_lv<7> > tmp_5_fu_266_p2;
    sc_signal< sc_lv<7> > tmp_7_fu_278_p3;
    sc_signal< sc_lv<7> > tmp_9_fu_294_p3;
    sc_signal< sc_lv<96> > tmp_8_fu_286_p3;
    sc_signal< sc_lv<96> > tmp_11_fu_308_p1;
    sc_signal< sc_lv<96> > tmp_fu_318_p5;
    sc_signal< sc_lv<1> > tmp_17_fu_329_p2;
    sc_signal< sc_lv<7> > tmp_19_fu_345_p2;
    sc_signal< sc_lv<7> > tmp_21_fu_357_p2;
    sc_signal< sc_lv<96> > tmp_18_fu_335_p4;
    sc_signal< sc_lv<7> > tmp_20_fu_351_p2;
    sc_signal< sc_lv<7> > tmp_22_fu_363_p3;
    sc_signal< sc_lv<7> > tmp_24_fu_379_p3;
    sc_signal< sc_lv<96> > tmp_23_fu_371_p3;
    sc_signal< sc_lv<96> > tmp_26_fu_393_p1;
    sc_signal< sc_lv<96> > tmp_12_fu_403_p1;
    sc_signal< sc_lv<96> > tmp_14_fu_406_p2;
    sc_signal< sc_lv<96> > tmp_15_fu_412_p2;
    sc_signal< sc_lv<96> > tmp_27_fu_421_p1;
    sc_signal< sc_lv<96> > tmp_29_fu_424_p2;
    sc_signal< sc_lv<96> > tmp_30_fu_430_p2;
    sc_signal< sc_lv<1> > exitcond_i1_fu_460_p2;
    sc_signal< sc_lv<2> > row_s_fu_474_p2;
    sc_signal< sc_lv<7> > tmp_14_i_cast_mid2_v_fu_499_p3;
    sc_signal< sc_lv<7> > tmp_15_i_cast_mid2_v_fu_506_p2;
    sc_signal< sc_lv<1> > tmp_32_fu_512_p2;
    sc_signal< sc_lv<7> > tmp_34_fu_528_p2;
    sc_signal< sc_lv<7> > tmp_36_fu_540_p2;
    sc_signal< sc_lv<96> > tmp_33_fu_518_p4;
    sc_signal< sc_lv<7> > tmp_35_fu_534_p2;
    sc_signal< sc_lv<7> > tmp_37_fu_546_p3;
    sc_signal< sc_lv<7> > tmp_39_fu_562_p3;
    sc_signal< sc_lv<96> > tmp_38_fu_554_p3;
    sc_signal< sc_lv<96> > tmp_41_fu_576_p1;
    sc_signal< sc_lv<96> > tmp_1_fu_586_p5;
    sc_signal< sc_lv<1> > tmp_47_fu_597_p2;
    sc_signal< sc_lv<7> > tmp_49_fu_613_p2;
    sc_signal< sc_lv<7> > tmp_51_fu_625_p2;
    sc_signal< sc_lv<96> > tmp_48_fu_603_p4;
    sc_signal< sc_lv<7> > tmp_50_fu_619_p2;
    sc_signal< sc_lv<7> > tmp_52_fu_631_p3;
    sc_signal< sc_lv<7> > tmp_54_fu_647_p3;
    sc_signal< sc_lv<96> > tmp_53_fu_639_p3;
    sc_signal< sc_lv<96> > tmp_56_fu_661_p1;
    sc_signal< sc_lv<96> > tmp_42_fu_671_p1;
    sc_signal< sc_lv<96> > tmp_44_fu_674_p2;
    sc_signal< sc_lv<96> > tmp_45_fu_680_p2;
    sc_signal< sc_lv<96> > tmp_57_fu_689_p1;
    sc_signal< sc_lv<96> > tmp_59_fu_692_p2;
    sc_signal< sc_lv<96> > tmp_60_fu_698_p2;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_fsm_state1;
    static const sc_lv<5> ap_ST_fsm_pp0_stage0;
    static const sc_lv<5> ap_ST_fsm_state7;
    static const sc_lv<5> ap_ST_fsm_pp1_stage0;
    static const sc_lv<5> ap_ST_fsm_state13;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_9;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<7> ap_const_lv7_1F;
    static const sc_lv<32> ap_const_lv32_5F;
    static const sc_lv<7> ap_const_lv7_5F;
    static const sc_lv<96> ap_const_lv96_10000000200000001;
    static const sc_lv<96> ap_const_lv96_0;
    static const sc_lv<96> ap_const_lv96_FFFFFFFFFFFFFFFEFFFFFFFF;
    static const sc_lv<96> ap_const_lv96_FFFFFFFFFFFFFFFFFFFFFFFF;
    static const sc_lv<96> ap_const_lv96_FFFFFFFF0000000000000001;
    static const sc_lv<96> ap_const_lv96_FFFFFFFE0000000000000002;
    static const sc_lv<32> ap_const_lv32_4;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_state10_pp1_stage0_iter2();
    void thread_ap_block_state11_pp1_stage0_iter3();
    void thread_ap_block_state12_pp1_stage0_iter4();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state8_pp1_stage0_iter0();
    void thread_ap_block_state9_pp1_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state8();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_row_i2_phi_fu_150_p4();
    void thread_ap_phi_mux_row_i_phi_fu_105_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_array_r_address0();
    void thread_array_r_ce0();
    void thread_col_1_fu_493_p2();
    void thread_col_fu_225_p2();
    void thread_col_i7_mid2_fu_466_p3();
    void thread_col_i_mid2_fu_198_p3();
    void thread_exitcond_flatten1_fu_448_p2();
    void thread_exitcond_flatten_fu_180_p2();
    void thread_exitcond_i1_fu_460_p2();
    void thread_exitcond_i_fu_192_p2();
    void thread_indvar_flatten_next1_fu_454_p2();
    void thread_indvar_flatten_next_fu_186_p2();
    void thread_row_fu_206_p2();
    void thread_row_s_fu_474_p2();
    void thread_summation_1_fu_711_p2();
    void thread_summation_fu_443_p2();
    void thread_tmp_10_fu_302_p2();
    void thread_tmp_11_fu_308_p1();
    void thread_tmp_12_fu_403_p1();
    void thread_tmp_13_fu_312_p2();
    void thread_tmp_14_fu_406_p2();
    void thread_tmp_14_i_cast_mid2_v_1_fu_480_p3();
    void thread_tmp_14_i_cast_mid2_v_fu_499_p3();
    void thread_tmp_15_fu_412_p2();
    void thread_tmp_15_i_cast_mid2_v_fu_506_p2();
    void thread_tmp_16_fu_417_p1();
    void thread_tmp_17_fu_329_p2();
    void thread_tmp_18_fu_335_p4();
    void thread_tmp_19_fu_345_p2();
    void thread_tmp_20_fu_351_p2();
    void thread_tmp_21_fu_357_p2();
    void thread_tmp_22_fu_363_p3();
    void thread_tmp_23_fu_371_p3();
    void thread_tmp_24_fu_379_p3();
    void thread_tmp_25_fu_387_p2();
    void thread_tmp_26_fu_393_p1();
    void thread_tmp_27_fu_421_p1();
    void thread_tmp_28_fu_397_p2();
    void thread_tmp_29_fu_424_p2();
    void thread_tmp_2_fu_244_p2();
    void thread_tmp_2_i_fu_220_p1();
    void thread_tmp_30_fu_430_p2();
    void thread_tmp_31_fu_435_p1();
    void thread_tmp_32_fu_512_p2();
    void thread_tmp_33_fu_518_p4();
    void thread_tmp_34_fu_528_p2();
    void thread_tmp_35_fu_534_p2();
    void thread_tmp_36_fu_540_p2();
    void thread_tmp_37_fu_546_p3();
    void thread_tmp_38_fu_554_p3();
    void thread_tmp_39_fu_562_p3();
    void thread_tmp_3_fu_250_p4();
    void thread_tmp_3_i_fu_439_p2();
    void thread_tmp_40_fu_570_p2();
    void thread_tmp_41_fu_576_p1();
    void thread_tmp_42_fu_671_p1();
    void thread_tmp_43_fu_580_p2();
    void thread_tmp_44_fu_674_p2();
    void thread_tmp_45_fu_680_p2();
    void thread_tmp_46_fu_685_p1();
    void thread_tmp_47_fu_597_p2();
    void thread_tmp_48_fu_603_p4();
    void thread_tmp_49_fu_613_p2();
    void thread_tmp_4_fu_260_p2();
    void thread_tmp_50_fu_619_p2();
    void thread_tmp_51_fu_625_p2();
    void thread_tmp_52_fu_631_p3();
    void thread_tmp_53_fu_639_p3();
    void thread_tmp_54_fu_647_p3();
    void thread_tmp_55_fu_655_p2();
    void thread_tmp_56_fu_661_p1();
    void thread_tmp_57_fu_689_p1();
    void thread_tmp_58_fu_665_p2();
    void thread_tmp_59_fu_692_p2();
    void thread_tmp_5_fu_266_p2();
    void thread_tmp_60_fu_698_p2();
    void thread_tmp_61_fu_703_p1();
    void thread_tmp_6_fu_272_p2();
    void thread_tmp_6_i_cast_mid2_v_fu_231_p3();
    void thread_tmp_6_i_cast_mid2_v_s_fu_212_p3();
    void thread_tmp_7_fu_278_p3();
    void thread_tmp_7_i9_fu_488_p1();
    void thread_tmp_7_i_cast_mid2_v_fu_238_p2();
    void thread_tmp_8_fu_286_p3();
    void thread_tmp_8_i1_fu_707_p2();
    void thread_tmp_9_fu_294_p3();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
