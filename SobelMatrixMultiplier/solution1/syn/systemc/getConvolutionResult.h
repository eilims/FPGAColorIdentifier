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
#include "getConvolutionRescud.h"

namespace ap_rtl {

struct getConvolutionResult : public sc_module {
    // Port declarations 10
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<4> > array_r_address0;
    sc_out< sc_logic > array_r_ce0;
    sc_in< sc_lv<32> > array_r_q0;
    sc_out< sc_lv<32> > ap_return;


    // Module declarations
    getConvolutionResult(sc_module_name name);
    SC_HAS_PROCESS(getConvolutionResult);

    ~getConvolutionResult();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    getConvolutionResbkb* p_vertical_sobel_oper_U;
    getConvolutionRescud* p_horizontal_sobel_op_U;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > p_vertical_sobel_oper_address0;
    sc_signal< sc_logic > p_vertical_sobel_oper_ce0;
    sc_signal< sc_lv<3> > p_vertical_sobel_oper_q0;
    sc_signal< sc_lv<4> > p_horizontal_sobel_op_address0;
    sc_signal< sc_logic > p_horizontal_sobel_op_ce0;
    sc_signal< sc_lv<3> > p_horizontal_sobel_op_q0;
    sc_signal< sc_lv<32> > reg_142;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<2> > row_fu_157_p2;
    sc_signal< sc_lv<2> > row_reg_332;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<5> > tmp_1_fu_179_p2;
    sc_signal< sc_lv<5> > tmp_1_reg_337;
    sc_signal< sc_lv<1> > exitcond1_i_fu_151_p2;
    sc_signal< sc_lv<2> > col_fu_196_p2;
    sc_signal< sc_lv<2> > col_reg_352;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > exitcond_i_fu_190_p2;
    sc_signal< sc_lv<3> > p_vertical_sobel_oper_1_reg_367;
    sc_signal< sc_lv<32> > tmp_3_i_fu_220_p2;
    sc_signal< sc_lv<32> > tmp_3_i_reg_372;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<2> > row_1_fu_242_p2;
    sc_signal< sc_lv<2> > row_1_reg_380;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > tmp_3_fu_264_p2;
    sc_signal< sc_lv<5> > tmp_3_reg_385;
    sc_signal< sc_lv<1> > exitcond1_i3_fu_236_p2;
    sc_signal< sc_lv<2> > col_1_fu_282_p2;
    sc_signal< sc_lv<2> > col_1_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > exitcond_i8_fu_276_p2;
    sc_signal< sc_lv<3> > p_horizontal_sobel_op_1_reg_408;
    sc_signal< sc_lv<32> > tmp_8_i_fu_306_p2;
    sc_signal< sc_lv<32> > tmp_8_i_reg_413;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<2> > row_i_reg_92;
    sc_signal< sc_lv<2> > col_i_reg_103;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<2> > row_i1_reg_114;
    sc_signal< sc_lv<2> > col_i7_reg_125;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<64> > tmp_4_cast_fu_211_p1;
    sc_signal< sc_lv<64> > tmp_5_cast_fu_297_p1;
    sc_signal< sc_lv<32> > verticalResult_assig_fu_40;
    sc_signal< sc_lv<32> > summation_fu_226_p2;
    sc_signal< sc_lv<32> > horizontalResult_ass_fu_44;
    sc_signal< sc_lv<32> > summation_1_fu_312_p2;
    sc_signal< sc_lv<4> > tmp_fu_167_p3;
    sc_signal< sc_lv<5> > p_shl_cast_fu_175_p1;
    sc_signal< sc_lv<5> > tmp_i_cast_fu_163_p1;
    sc_signal< sc_lv<5> > tmp_2_i_cast_fu_202_p1;
    sc_signal< sc_lv<5> > tmp_4_fu_206_p2;
    sc_signal< sc_lv<3> > tmp_3_i_fu_220_p0;
    sc_signal< sc_lv<4> > tmp_2_fu_252_p3;
    sc_signal< sc_lv<5> > p_shl1_cast_fu_260_p1;
    sc_signal< sc_lv<5> > tmp_i5_cast_fu_248_p1;
    sc_signal< sc_lv<5> > tmp_7_i_cast_fu_288_p1;
    sc_signal< sc_lv<5> > tmp_5_fu_292_p2;
    sc_signal< sc_lv<3> > tmp_8_i_fu_306_p0;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_return();
    void thread_array_r_address0();
    void thread_array_r_ce0();
    void thread_col_1_fu_282_p2();
    void thread_col_fu_196_p2();
    void thread_exitcond1_i3_fu_236_p2();
    void thread_exitcond1_i_fu_151_p2();
    void thread_exitcond_i8_fu_276_p2();
    void thread_exitcond_i_fu_190_p2();
    void thread_p_horizontal_sobel_op_address0();
    void thread_p_horizontal_sobel_op_ce0();
    void thread_p_shl1_cast_fu_260_p1();
    void thread_p_shl_cast_fu_175_p1();
    void thread_p_vertical_sobel_oper_address0();
    void thread_p_vertical_sobel_oper_ce0();
    void thread_row_1_fu_242_p2();
    void thread_row_fu_157_p2();
    void thread_summation_1_fu_312_p2();
    void thread_summation_fu_226_p2();
    void thread_tmp_1_fu_179_p2();
    void thread_tmp_2_fu_252_p3();
    void thread_tmp_2_i_cast_fu_202_p1();
    void thread_tmp_3_fu_264_p2();
    void thread_tmp_3_i_fu_220_p0();
    void thread_tmp_3_i_fu_220_p2();
    void thread_tmp_4_cast_fu_211_p1();
    void thread_tmp_4_fu_206_p2();
    void thread_tmp_5_cast_fu_297_p1();
    void thread_tmp_5_fu_292_p2();
    void thread_tmp_7_i_cast_fu_288_p1();
    void thread_tmp_8_i_fu_306_p0();
    void thread_tmp_8_i_fu_306_p2();
    void thread_tmp_fu_167_p3();
    void thread_tmp_i5_cast_fu_248_p1();
    void thread_tmp_i_cast_fu_163_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
