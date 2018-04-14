// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _getConvolutionResult_HH_
#define _getConvolutionResult_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "getConvolutionResbkb.h"

namespace ap_rtl {

struct getConvolutionResult : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<2> > array_0_address0;
    sc_out< sc_logic > array_0_ce0;
    sc_in< sc_lv<32> > array_0_q0;
    sc_out< sc_lv<2> > array_0_address1;
    sc_out< sc_logic > array_0_ce1;
    sc_in< sc_lv<32> > array_0_q1;
    sc_out< sc_lv<2> > array_1_address0;
    sc_out< sc_logic > array_1_ce0;
    sc_in< sc_lv<32> > array_1_q0;
    sc_out< sc_lv<2> > array_1_address1;
    sc_out< sc_logic > array_1_ce1;
    sc_in< sc_lv<32> > array_1_q1;
    sc_out< sc_lv<2> > array_2_address0;
    sc_out< sc_logic > array_2_ce0;
    sc_in< sc_lv<32> > array_2_q0;
    sc_out< sc_lv<2> > array_2_address1;
    sc_out< sc_logic > array_2_ce1;
    sc_in< sc_lv<32> > array_2_q1;
    sc_out< sc_lv<32> > ap_return;
    sc_signal< sc_lv<32> > ap_var_for_const2;
    sc_signal< sc_lv<32> > ap_var_for_const1;
    sc_signal< sc_lv<32> > ap_var_for_const0;
    sc_signal< sc_lv<32> > ap_var_for_const3;
    sc_signal< sc_lv<32> > ap_var_for_const4;


    // Module declarations
    getConvolutionResult(sc_module_name name);
    SC_HAS_PROCESS(getConvolutionResult);

    ~getConvolutionResult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U1;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U2;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U3;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U4;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U5;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U6;
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_reg_195;
    sc_signal< sc_lv<32> > horizontalResult_ass_reg_207;
    sc_signal< sc_lv<32> > verticalResult_assig_reg_219;
    sc_signal< sc_lv<32> > grp_fu_273_p5;
    sc_signal< sc_lv<32> > reg_285;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > exitcond1_reg_698;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond1_fu_294_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond1_reg_698;
    sc_signal< sc_lv<2> > i_1_fu_300_p2;
    sc_signal< sc_lv<2> > i_1_reg_702;
    sc_signal< sc_lv<32> > tmp_3_fu_306_p5;
    sc_signal< sc_lv<32> > tmp_3_reg_707;
    sc_signal< sc_lv<32> > tmp_5_fu_318_p5;
    sc_signal< sc_lv<32> > tmp_5_reg_712;
    sc_signal< sc_lv<32> > tmp_7_fu_330_p5;
    sc_signal< sc_lv<32> > tmp_7_reg_717;
    sc_signal< sc_lv<32> > tmp_8_fu_342_p5;
    sc_signal< sc_lv<32> > tmp_8_reg_722;
    sc_signal< sc_lv<32> > tmp_4_fu_354_p2;
    sc_signal< sc_lv<32> > tmp_4_reg_727;
    sc_signal< sc_lv<32> > grp_fu_289_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_732;
    sc_signal< sc_lv<32> > tmp_6_1_fu_359_p2;
    sc_signal< sc_lv<32> > tmp_6_1_reg_737;
    sc_signal< sc_lv<32> > tmp_s_fu_363_p5;
    sc_signal< sc_lv<32> > tmp_s_reg_742;
    sc_signal< sc_lv<32> > tmp_4_2_fu_375_p2;
    sc_signal< sc_lv<32> > tmp_4_2_reg_747;
    sc_signal< sc_lv<32> > tmp_6_2_reg_752;
    sc_signal< sc_lv<32> > verticalResult_2_2_fu_384_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<32> > horizontalResult_2_2_fu_399_p2;
    sc_signal< sc_lv<32> > result_fu_405_p2;
    sc_signal< sc_lv<32> > result_reg_767;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > result_1_fu_411_p2;
    sc_signal< sc_lv<32> > result_1_reg_772;
    sc_signal< sc_lv<23> > s_V_fu_463_p1;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > i_2_fu_473_p2;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<23> > p_0353_1_i_i_fu_571_p3;
    sc_signal< sc_lv<1> > exitcond_i_i_fu_467_p2;
    sc_signal< sc_lv<21> > q_star_V_fu_595_p3;
    sc_signal< sc_lv<21> > q_V_1_fu_603_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<2> > ap_phi_mux_i_phi_fu_199_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<21> > p_i_i_reg_231;
    sc_signal< sc_lv<21> > p_1_i_i_reg_242;
    sc_signal< sc_lv<23> > p_2_i_i_reg_253;
    sc_signal< sc_lv<5> > i_i_i_reg_262;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > tmp_10_fu_380_p2;
    sc_signal< sc_lv<32> > tmp_fu_390_p2;
    sc_signal< sc_lv<32> > tmp_11_fu_394_p2;
    sc_signal< sc_lv<32> > p_Val2_3_fu_422_p2;
    sc_signal< sc_lv<32> > p_Val2_2_fu_417_p2;
    sc_signal< sc_lv<32> > input_V_fu_427_p2;
    sc_signal< sc_lv<21> > tmp_14_fu_433_p4;
    sc_signal< sc_lv<22> > tmp_9_i_i_cast_fu_443_p1;
    sc_signal< sc_lv<22> > tmp_i_i_fu_447_p2;
    sc_signal< sc_lv<21> > val_assign_fu_453_p4;
    sc_signal< sc_lv<23> > r_V_fu_493_p3;
    sc_signal< sc_lv<32> > lhs_V_fu_501_p1;
    sc_signal< sc_lv<5> > op2_assign_fu_511_p2;
    sc_signal< sc_lv<32> > r_V_1_fu_505_p2;
    sc_signal< sc_lv<32> > op2_assign_i_cast_fu_517_p1;
    sc_signal< sc_lv<32> > tmp_5_i_i_fu_521_p2;
    sc_signal< sc_lv<23> > tmp_17_fu_487_p2;
    sc_signal< sc_lv<23> > tmp_18_fu_527_p1;
    sc_signal< sc_lv<23> > r_V_2_fu_537_p3;
    sc_signal< sc_lv<23> > r_V_3_fu_545_p2;
    sc_signal< sc_lv<32> > r_V_4_i_cast_fu_551_p1;
    sc_signal< sc_lv<32> > tmp_6_i_i_fu_555_p2;
    sc_signal< sc_lv<23> > tmp_19_fu_561_p1;
    sc_signal< sc_lv<1> > tmp_16_fu_479_p3;
    sc_signal< sc_lv<23> > s_V_2_fu_565_p2;
    sc_signal< sc_lv<23> > s_V_1_fu_531_p2;
    sc_signal< sc_lv<20> > tmp_20_fu_579_p1;
    sc_signal< sc_lv<20> > tmp_21_fu_583_p1;
    sc_signal< sc_lv<20> > tmp_22_fu_587_p3;
    sc_signal< sc_lv<21> > q_V_fu_615_p2;
    sc_signal< sc_lv<1> > tmp_1_i_i_fu_609_p2;
    sc_signal< sc_lv<12> > tmp_12_fu_621_p4;
    sc_signal< sc_lv<12> > tmp_13_fu_631_p4;
    sc_signal< sc_lv<12> > p_v_i_fu_641_p3;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_pp0_stage0;
    static const sc_lv<6> ap_ST_fsm_pp0_stage1;
    static const sc_lv<6> ap_ST_fsm_state7;
    static const sc_lv<6> ap_ST_fsm_state8;
    static const sc_lv<6> ap_ST_fsm_state9;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<21> ap_const_lv21_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_FFFFFFFE;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<22> ap_const_lv22_1;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<5> ap_const_lv5_16;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<23> ap_const_lv23_1;
    static const sc_lv<5> ap_const_lv5_15;
    static const sc_lv<23> ap_const_lv23_3;
    static const sc_lv<21> ap_const_lv21_1;
    static const sc_lv<23> ap_const_lv23_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_14;
    // Thread declarations
    void thread_ap_var_for_const2();
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_var_for_const3();
    void thread_ap_var_for_const4();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage1_iter1();
    void thread_ap_block_state6_pp0_stage0_iter2();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_i_phi_fu_199_p4();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_array_0_address0();
    void thread_array_0_address1();
    void thread_array_0_ce0();
    void thread_array_0_ce1();
    void thread_array_1_address0();
    void thread_array_1_address1();
    void thread_array_1_ce0();
    void thread_array_1_ce1();
    void thread_array_2_address0();
    void thread_array_2_address1();
    void thread_array_2_ce0();
    void thread_array_2_ce1();
    void thread_exitcond1_fu_294_p2();
    void thread_exitcond_i_i_fu_467_p2();
    void thread_grp_fu_289_p2();
    void thread_horizontalResult_2_2_fu_399_p2();
    void thread_i_1_fu_300_p2();
    void thread_i_2_fu_473_p2();
    void thread_input_V_fu_427_p2();
    void thread_lhs_V_fu_501_p1();
    void thread_op2_assign_fu_511_p2();
    void thread_op2_assign_i_cast_fu_517_p1();
    void thread_p_0353_1_i_i_fu_571_p3();
    void thread_p_Val2_2_fu_417_p2();
    void thread_p_Val2_3_fu_422_p2();
    void thread_p_v_i_fu_641_p3();
    void thread_q_V_1_fu_603_p2();
    void thread_q_V_fu_615_p2();
    void thread_q_star_V_fu_595_p3();
    void thread_r_V_1_fu_505_p2();
    void thread_r_V_2_fu_537_p3();
    void thread_r_V_3_fu_545_p2();
    void thread_r_V_4_i_cast_fu_551_p1();
    void thread_r_V_fu_493_p3();
    void thread_result_1_fu_411_p2();
    void thread_result_fu_405_p2();
    void thread_s_V_1_fu_531_p2();
    void thread_s_V_2_fu_565_p2();
    void thread_s_V_fu_463_p1();
    void thread_tmp_10_fu_380_p2();
    void thread_tmp_11_fu_394_p2();
    void thread_tmp_12_fu_621_p4();
    void thread_tmp_13_fu_631_p4();
    void thread_tmp_14_fu_433_p4();
    void thread_tmp_16_fu_479_p3();
    void thread_tmp_17_fu_487_p2();
    void thread_tmp_18_fu_527_p1();
    void thread_tmp_19_fu_561_p1();
    void thread_tmp_1_i_i_fu_609_p2();
    void thread_tmp_20_fu_579_p1();
    void thread_tmp_21_fu_583_p1();
    void thread_tmp_22_fu_587_p3();
    void thread_tmp_4_2_fu_375_p2();
    void thread_tmp_4_fu_354_p2();
    void thread_tmp_5_i_i_fu_521_p2();
    void thread_tmp_6_1_fu_359_p2();
    void thread_tmp_6_i_i_fu_555_p2();
    void thread_tmp_9_i_i_cast_fu_443_p1();
    void thread_tmp_fu_390_p2();
    void thread_tmp_i_i_fu_447_p2();
    void thread_val_assign_fu_453_p4();
    void thread_verticalResult_2_2_fu_384_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif