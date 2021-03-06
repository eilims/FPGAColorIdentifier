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

#include "combineOperatorResul.h"
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
    combineOperatorResul* grp_combineOperatorResul_fu_183;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U4;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U5;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U6;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U7;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U8;
    getConvolutionResbkb<1,1,32,32,32,2,32>* getConvolutionResbkb_U9;
    sc_signal< sc_lv<18> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<2> > i_reg_147;
    sc_signal< sc_lv<32> > horizontalResult_reg_159;
    sc_signal< sc_lv<32> > verticalResult_reg_171;
    sc_signal< sc_lv<32> > grp_fu_191_p5;
    sc_signal< sc_lv<32> > reg_203;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage1_iter1;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<1> > exitcond1_reg_372;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter2;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > exitcond1_fu_212_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond1_reg_372;
    sc_signal< sc_lv<2> > i_1_fu_218_p2;
    sc_signal< sc_lv<2> > i_1_reg_376;
    sc_signal< sc_lv<32> > tmp_3_fu_224_p5;
    sc_signal< sc_lv<32> > tmp_3_reg_381;
    sc_signal< sc_lv<32> > tmp_5_fu_236_p5;
    sc_signal< sc_lv<32> > tmp_5_reg_386;
    sc_signal< sc_lv<32> > tmp_7_fu_248_p5;
    sc_signal< sc_lv<32> > tmp_7_reg_391;
    sc_signal< sc_lv<32> > tmp_8_fu_260_p5;
    sc_signal< sc_lv<32> > tmp_8_reg_396;
    sc_signal< sc_lv<32> > tmp_4_fu_272_p2;
    sc_signal< sc_lv<32> > tmp_4_reg_401;
    sc_signal< sc_lv<32> > grp_fu_207_p2;
    sc_signal< sc_lv<32> > tmp_6_reg_406;
    sc_signal< sc_lv<32> > tmp_6_1_fu_277_p2;
    sc_signal< sc_lv<32> > tmp_6_1_reg_411;
    sc_signal< sc_lv<32> > tmp_s_fu_281_p5;
    sc_signal< sc_lv<32> > tmp_s_reg_416;
    sc_signal< sc_lv<32> > tmp_4_2_fu_293_p2;
    sc_signal< sc_lv<32> > tmp_4_2_reg_421;
    sc_signal< sc_lv<32> > tmp_6_2_reg_426;
    sc_signal< sc_lv<32> > verticalResult_2_2_fu_302_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<32> > horizontalResult_2_2_fu_317_p2;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_lv<12> > grp_combineOperatorResul_fu_183_ap_return;
    sc_signal< sc_lv<2> > ap_phi_mux_i_phi_fu_151_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<32> > tmp_10_fu_298_p2;
    sc_signal< sc_lv<32> > tmp1_fu_308_p2;
    sc_signal< sc_lv<32> > tmp_11_fu_312_p2;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<18> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<18> ap_ST_fsm_state1;
    static const sc_lv<18> ap_ST_fsm_pp0_stage0;
    static const sc_lv<18> ap_ST_fsm_pp0_stage1;
    static const sc_lv<18> ap_ST_fsm_state7;
    static const sc_lv<18> ap_ST_fsm_state8;
    static const sc_lv<18> ap_ST_fsm_state9;
    static const sc_lv<18> ap_ST_fsm_state10;
    static const sc_lv<18> ap_ST_fsm_state11;
    static const sc_lv<18> ap_ST_fsm_state12;
    static const sc_lv<18> ap_ST_fsm_state13;
    static const sc_lv<18> ap_ST_fsm_state14;
    static const sc_lv<18> ap_ST_fsm_state15;
    static const sc_lv<18> ap_ST_fsm_state16;
    static const sc_lv<18> ap_ST_fsm_state17;
    static const sc_lv<18> ap_ST_fsm_state18;
    static const sc_lv<18> ap_ST_fsm_state19;
    static const sc_lv<18> ap_ST_fsm_state20;
    static const sc_lv<18> ap_ST_fsm_state21;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<64> ap_const_lv64_1;
    static const sc_lv<64> ap_const_lv64_2;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<32> ap_const_lv32_FFFFFFFE;
    static const sc_lv<32> ap_const_lv32_11;
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
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state7();
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
    void thread_ap_phi_mux_i_phi_fu_151_p4();
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
    void thread_exitcond1_fu_212_p2();
    void thread_grp_fu_207_p2();
    void thread_horizontalResult_2_2_fu_317_p2();
    void thread_i_1_fu_218_p2();
    void thread_tmp1_fu_308_p2();
    void thread_tmp_10_fu_298_p2();
    void thread_tmp_11_fu_312_p2();
    void thread_tmp_4_2_fu_293_p2();
    void thread_tmp_4_fu_272_p2();
    void thread_tmp_6_1_fu_277_p2();
    void thread_verticalResult_2_2_fu_302_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
