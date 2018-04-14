; ModuleID = 'C:/Users/db217620/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@p_str7 = private unnamed_addr constant [9 x i8] c"Row_Conv\00", align 1
@p_str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getConvolutionResult([3 x i32]* %array_0, [3 x i32]* %array_1, [3 x i32]* %array_2) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_2), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_1), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_0), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !138
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  %array_0_addr = getelementptr [3 x i32]* %array_0, i64 0, i64 0
  %array_1_addr = getelementptr [3 x i32]* %array_1, i64 0, i64 0
  %array_2_addr = getelementptr [3 x i32]* %array_2, i64 0, i64 0
  %array_0_addr_1 = getelementptr [3 x i32]* %array_0, i64 0, i64 1
  %array_1_addr_1 = getelementptr [3 x i32]* %array_1, i64 0, i64 1
  %array_2_addr_1 = getelementptr [3 x i32]* %array_2, i64 0, i64 1
  %array_0_addr_2 = getelementptr [3 x i32]* %array_0, i64 0, i64 2
  %array_1_addr_2 = getelementptr [3 x i32]* %array_1, i64 0, i64 2
  %array_2_addr_2 = getelementptr [3 x i32]* %array_2, i64 0, i64 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]
  %horizontalResult = phi i32 [ 0, %0 ], [ %horizontalResult_2_2, %2 ]
  %verticalResult = phi i32 [ 0, %0 ], [ %verticalResult_2_2, %2 ]
  %exitcond1 = icmp eq i2 %i, -1
  %i_1 = add i2 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str7) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind
  %array_0_load = load i32* %array_0_addr, align 4
  %array_1_load = load i32* %array_1_addr, align 4
  %array_2_load = load i32* %array_2_addr, align 4
  %tmp_2 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load, i32 %array_1_load, i32 %array_2_load, i2 %i)
  %tmp_3 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 2, i32 1, i2 %i)
  %tmp_4 = mul nsw i32 %tmp_3, %tmp_2
  %tmp_5 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 0, i32 -1, i2 %i)
  %tmp_6 = mul nsw i32 %tmp_5, %tmp_2
  %array_0_load_1 = load i32* %array_0_addr_1, align 4
  %array_1_load_1 = load i32* %array_1_addr_1, align 4
  %array_2_load_1 = load i32* %array_2_addr_1, align 4
  %tmp_7 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load_1, i32 %array_1_load_1, i32 %array_2_load_1, i2 %i)
  %tmp_8 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 2, i32 0, i32 -2, i2 %i)
  %tmp_6_1 = mul nsw i32 %tmp_8, %tmp_7
  %array_0_load_2 = load i32* %array_0_addr_2, align 4
  %array_1_load_2 = load i32* %array_1_addr_2, align 4
  %array_2_load_2 = load i32* %array_2_addr_2, align 4
  %tmp_9 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load_2, i32 %array_1_load_2, i32 %array_2_load_2, i2 %i)
  %tmp_s = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 -1, i32 -2, i32 -1, i2 %i)
  %tmp_4_2 = mul nsw i32 %tmp_s, %tmp_9
  %tmp_10 = add nsw i32 %tmp_4_2, %tmp_4
  %verticalResult_2_2 = add nsw i32 %verticalResult, %tmp_10
  %tmp_6_2 = mul nsw i32 %tmp_5, %tmp_9
  %tmp1 = add i32 %tmp_6_1, %tmp_6_2
  %tmp_11 = add nsw i32 %tmp1, %tmp_6
  %horizontalResult_2_2 = add nsw i32 %horizontalResult, %tmp_11
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str7, i32 %tmp_1) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  %tmp = call fastcc i12 @combineOperatorResul(i32 %verticalResult, i32 %horizontalResult)
  %p_trunc_ext = zext i12 %tmp to i32
  ret i32 %p_trunc_ext
}

define internal fastcc i20 @fxp_sqrt(i32 %in_val_V_read) readnone {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_val_V_read)
  %tmp = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %in_val_V_read_1, i32 11, i32 31)
  %tmp_cast = zext i21 %tmp to i22
  %tmp_s = add i22 %tmp_cast, 1
  %tmp_5 = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_s, i32 1, i32 21)
  %tmp_3 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_5, i1 false)
  %p_0353_1 = xor i22 %tmp_3, -2097152
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_s, i32 21)
  %tmp_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_6, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_3_1, 3145728
  %q_V_1_1 = select i1 %tmp_6, i3 -2, i3 2
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_8 = shl i23 %p_0353_1_1, 1
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_2 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_10, i22 0)
  %tmp_4 = add i23 %tmp_2, -1572864
  %s_V_1_2 = sub i23 %tmp_8, %tmp_4
  %tmp1 = add i23 %tmp_8, -2621440
  %s_V_2_2 = add i23 %tmp_2, %tmp1
  %p_0305_1_in_in_2 = select i1 %tmp_7, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_7, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_12 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_14 = shl i23 %p_0353_1_2, 1
  %r_V_2_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_10_3 = or i23 %r_V_2_3, 262144
  %s_V_1_3 = sub i23 %tmp_14, %tmp_10_3
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_13_3 = or i23 %r_V_4_3, 786432
  %s_V_2_3 = add i23 %tmp_14, %tmp_13_3
  %p_0353_1_3 = select i1 %tmp_12, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_9 = select i1 %tmp_12, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_9, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_18 = shl i23 %p_0353_1_3, 1
  %r_V_2_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_10_4 = or i23 %r_V_2_4, 131072
  %s_V_1_4 = sub i23 %tmp_18, %tmp_10_4
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_9, i20 0)
  %tmp_13_4 = or i23 %r_V_4_4, 393216
  %s_V_2_4 = add i23 %tmp_18, %tmp_13_4
  %p_0353_1_4 = select i1 %tmp_16, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_11 = select i1 %tmp_16, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_11, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_22 = shl i23 %p_0353_1_4, 1
  %r_V_2_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_10_5 = or i23 %r_V_2_5, 65536
  %s_V_1_5 = sub i23 %tmp_22, %tmp_10_5
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_11, i19 0)
  %tmp_13_5 = or i23 %r_V_4_5, 196608
  %s_V_2_5 = add i23 %tmp_22, %tmp_13_5
  %p_0353_1_5 = select i1 %tmp_20, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_13 = select i1 %tmp_20, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_13, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_26 = shl i23 %p_0353_1_5, 1
  %r_V_2_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_10_6 = or i23 %r_V_2_6, 32768
  %s_V_1_6 = sub i23 %tmp_26, %tmp_10_6
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_13, i18 0)
  %tmp_13_6 = or i23 %r_V_4_6, 98304
  %s_V_2_6 = add i23 %tmp_26, %tmp_13_6
  %p_0353_1_6 = select i1 %tmp_24, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_15 = select i1 %tmp_24, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_15, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_30 = shl i23 %p_0353_1_6, 1
  %r_V_2_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_10_7 = or i23 %r_V_2_7, 16384
  %s_V_1_7 = sub i23 %tmp_30, %tmp_10_7
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_15, i17 0)
  %tmp_13_7 = or i23 %r_V_4_7, 49152
  %s_V_2_7 = add i23 %tmp_30, %tmp_13_7
  %p_0353_1_7 = select i1 %tmp_28, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_17 = select i1 %tmp_28, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_17, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_34 = shl i23 %p_0353_1_7, 1
  %r_V_2_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_10_8 = or i23 %r_V_2_8, 8192
  %s_V_1_8 = sub i23 %tmp_34, %tmp_10_8
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_17, i16 0)
  %tmp_13_8 = or i23 %r_V_4_8, 24576
  %s_V_2_8 = add i23 %tmp_34, %tmp_13_8
  %p_0353_1_8 = select i1 %tmp_32, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_19 = select i1 %tmp_32, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_19, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_38 = shl i23 %p_0353_1_8, 1
  %r_V_2_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_10_9 = or i23 %r_V_2_9, 4096
  %s_V_1_9 = sub i23 %tmp_38, %tmp_10_9
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_19, i15 0)
  %tmp_13_9 = or i23 %r_V_4_9, 12288
  %s_V_2_9 = add i23 %tmp_38, %tmp_13_9
  %p_0353_1_9 = select i1 %tmp_36, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_21 = select i1 %tmp_36, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_21, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_40 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_42 = shl i23 %p_0353_1_9, 1
  %r_V_2_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_10_s = or i23 %r_V_2_s, 2048
  %s_V_1_s = sub i23 %tmp_42, %tmp_10_s
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_21, i14 0)
  %tmp_13_s = or i23 %r_V_4_s, 6144
  %s_V_2_s = add i23 %tmp_42, %tmp_13_s
  %p_0353_1_s = select i1 %tmp_40, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_23 = select i1 %tmp_40, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_23, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_44 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_45 = shl i23 %p_0353_1_s, 1
  %r_V_2_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_10_1 = or i23 %r_V_2_1, 1024
  %s_V_1_1 = sub i23 %tmp_45, %tmp_10_1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_23, i13 0)
  %tmp_13_1 = or i23 %r_V_4_1, 3072
  %s_V_2_1 = add i23 %tmp_45, %tmp_13_1
  %p_0353_1_10 = select i1 %tmp_44, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_25 = select i1 %tmp_44, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_25, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_46 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_47 = shl i23 %p_0353_1_10, 1
  %r_V_2_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_10_2 = or i23 %r_V_2_2, 512
  %s_V_1_10 = sub i23 %tmp_47, %tmp_10_2
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_25, i12 0)
  %tmp_13_2 = or i23 %r_V_4_2, 1536
  %s_V_2_10 = add i23 %tmp_47, %tmp_13_2
  %p_0353_1_11 = select i1 %tmp_46, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_27 = select i1 %tmp_46, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_27, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_51 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_52 = shl i23 %p_0353_1_11, 1
  %r_V_1_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_10_10 = or i23 %r_V_1_s, 256
  %s_V_1_11 = sub i23 %tmp_52, %tmp_10_10
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_27, i11 0)
  %tmp_13_10 = or i23 %r_V_3_s, 768
  %s_V_2_11 = add i23 %tmp_52, %tmp_13_10
  %p_0353_1_12 = select i1 %tmp_51, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_29 = select i1 %tmp_51, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_29, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_53 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_54 = shl i23 %p_0353_1_12, 1
  %r_V_1_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_10_11 = or i23 %r_V_1_1, 128
  %s_V_1_12 = sub i23 %tmp_54, %tmp_10_11
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_29, i10 0)
  %tmp_13_11 = or i23 %r_V_3_1, 384
  %s_V_2_12 = add i23 %tmp_54, %tmp_13_11
  %p_0353_1_13 = select i1 %tmp_53, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_31 = select i1 %tmp_53, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_31, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_55 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_56 = shl i23 %p_0353_1_13, 1
  %r_V_1_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_10_12 = or i23 %r_V_1_2, 64
  %s_V_1_13 = sub i23 %tmp_56, %tmp_10_12
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_31, i9 0)
  %tmp_13_12 = or i23 %r_V_3_2, 192
  %s_V_2_13 = add i23 %tmp_56, %tmp_13_12
  %p_0353_1_14 = select i1 %tmp_55, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_33 = select i1 %tmp_55, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_33, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_58 = shl i23 %p_0353_1_14, 1
  %r_V_1_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_10_13 = or i23 %r_V_1_3, 32
  %s_V_1_14 = sub i23 %tmp_58, %tmp_10_13
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_33, i8 0)
  %tmp_13_13 = or i23 %r_V_3_3, 96
  %s_V_2_14 = add i23 %tmp_58, %tmp_13_13
  %p_0353_1_15 = select i1 %tmp_57, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_35 = select i1 %tmp_57, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_35, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_59 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_60 = shl i23 %p_0353_1_15, 1
  %r_V_1_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_10_14 = or i23 %r_V_1_4, 16
  %s_V_1_15 = sub i23 %tmp_60, %tmp_10_14
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_35, i7 0)
  %tmp_13_14 = or i23 %r_V_3_4, 48
  %s_V_2_15 = add i23 %tmp_60, %tmp_13_14
  %p_0353_1_16 = select i1 %tmp_59, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_37 = select i1 %tmp_59, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_37, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_62 = shl i23 %p_0353_1_16, 1
  %r_V_1_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_10_15 = or i23 %r_V_1_5, 8
  %s_V_1_16 = sub i23 %tmp_62, %tmp_10_15
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_37, i6 0)
  %tmp_13_15 = or i23 %r_V_3_5, 24
  %s_V_2_16 = add i23 %tmp_62, %tmp_13_15
  %p_0353_1_17 = select i1 %tmp_61, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_39 = select i1 %tmp_61, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_39, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_64 = shl i23 %p_0353_1_17, 1
  %r_V_1_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_10_16 = or i23 %r_V_1_6, 4
  %s_V_1_17 = sub i23 %tmp_64, %tmp_10_16
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_39, i5 0)
  %tmp_13_16 = or i23 %r_V_3_6, 12
  %s_V_2_17 = add i23 %tmp_64, %tmp_13_16
  %p_0353_1_18 = select i1 %tmp_63, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_41 = select i1 %tmp_63, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_41, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_66 = shl i23 %p_0353_1_18, 1
  %r_V_1_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_10_17 = or i23 %r_V_1_7, 2
  %s_V_1_18 = sub i23 %tmp_66, %tmp_10_17
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_41, i4 0)
  %tmp_13_17 = or i23 %r_V_3_7, 6
  %s_V_2_18 = add i23 %tmp_66, %tmp_13_17
  %p_0353_1_19 = select i1 %tmp_65, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_43 = select i1 %tmp_65, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_43, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_67 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_68 = shl i23 %p_0353_1_19, 1
  %r_V_1_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_2_10 = or i23 %r_V_1_8, 1
  %s_V_1_19 = sub i23 %tmp_68, %r_V_2_10
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_43, i3 0)
  %r_V_4_10 = or i23 %r_V_3_8, 3
  %s_V_2_19 = add i23 %tmp_68, %r_V_4_10
  %p_0353_1_20 = select i1 %tmp_67, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_69 = trunc i21 %q_V_1_19 to i20
  %tmp_70 = shl i20 %tmp_43, 1
  %tmp_48 = select i1 %tmp_67, i20 %tmp_70, i20 %tmp_69
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_48, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_1 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_49 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_50 = select i1 %tmp_1, i20 %tmp_49, i20 %tmp_48
  ret i20 %tmp_50
}

define internal fastcc i12 @combineOperatorResul(i32 %verticalResult, i32 %horizontalResult) {
_ZNK13ap_fixed_baseILi32ELi24ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv.exit:
  %horizontalResult_rea = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %horizontalResult)
  %verticalResult_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %verticalResult)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind
  %result = mul i32 %verticalResult_read, %verticalResult_read
  %p_Val2_2 = shl i32 %result, 8
  %result_1 = mul i32 %horizontalResult_rea, %horizontalResult_rea
  %p_Val2_3 = shl i32 %result_1, 8
  %input_V = add i32 %p_Val2_3, %p_Val2_2
  %result_V = call fastcc i20 @fxp_sqrt(i32 %input_V) nounwind
  %tmp = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V, i32 8, i32 19)
  ret i12 %tmp
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_11 = trunc i32 %empty to i21
  ret i21 %empty_11
}

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_12 = trunc i22 %empty to i21
  ret i21 %empty_12
}

define weak i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_13 = trunc i21 %empty to i20
  ret i20 %empty_13
}

declare i19 @_ssdm_op_PartSelect.i19.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_14 = trunc i20 %empty to i12
  ret i12 %empty_14
}

define weak i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32, i32, i32, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_15 = shl i23 1, %empty
  %empty_16 = and i23 %0, %empty_15
  %empty_17 = icmp ne i23 %empty_16, 0
  ret i1 %empty_17
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_18 = shl i22 1, %empty
  %empty_19 = and i22 %0, %empty_18
  %empty_20 = icmp ne i22 %empty_19, 0
  ret i1 %empty_20
}

declare i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_21 = zext i1 %1 to i9
  %empty_22 = shl i9 %empty, 1
  %empty_23 = or i9 %empty_22, %empty_21
  ret i9 %empty_23
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_24 = zext i1 %1 to i8
  %empty_25 = shl i8 %empty, 1
  %empty_26 = or i8 %empty_25, %empty_24
  ret i8 %empty_26
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_27 = zext i1 %1 to i7
  %empty_28 = shl i7 %empty, 1
  %empty_29 = or i7 %empty_28, %empty_27
  ret i7 %empty_29
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_30 = zext i1 %1 to i6
  %empty_31 = shl i6 %empty, 1
  %empty_32 = or i6 %empty_31, %empty_30
  ret i6 %empty_32
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_33 = zext i1 %1 to i5
  %empty_34 = shl i5 %empty, 1
  %empty_35 = or i5 %empty_34, %empty_33
  ret i5 %empty_35
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_36 = zext i1 %1 to i4
  %empty_37 = shl i4 %empty, 1
  %empty_38 = or i4 %empty_37, %empty_36
  ret i4 %empty_38
}

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_39 = zext i14 %1 to i23
  %empty_40 = shl i23 %empty, 14
  %empty_41 = or i23 %empty_40, %empty_39
  ret i23 %empty_41
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8, i15) nounwind readnone {
entry:
  %empty = zext i8 %0 to i23
  %empty_42 = zext i15 %1 to i23
  %empty_43 = shl i23 %empty, 15
  %empty_44 = or i23 %empty_43, %empty_42
  ret i23 %empty_44
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7, i16) nounwind readnone {
entry:
  %empty = zext i7 %0 to i23
  %empty_45 = zext i16 %1 to i23
  %empty_46 = shl i23 %empty, 16
  %empty_47 = or i23 %empty_46, %empty_45
  ret i23 %empty_47
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6, i17) nounwind readnone {
entry:
  %empty = zext i6 %0 to i23
  %empty_48 = zext i17 %1 to i23
  %empty_49 = shl i23 %empty, 17
  %empty_50 = or i23 %empty_49, %empty_48
  ret i23 %empty_50
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5, i18) nounwind readnone {
entry:
  %empty = zext i5 %0 to i23
  %empty_51 = zext i18 %1 to i23
  %empty_52 = shl i23 %empty, 18
  %empty_53 = or i23 %empty_52, %empty_51
  ret i23 %empty_53
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4, i19) nounwind readnone {
entry:
  %empty = zext i4 %0 to i23
  %empty_54 = zext i19 %1 to i23
  %empty_55 = shl i23 %empty, 19
  %empty_56 = or i23 %empty_55, %empty_54
  ret i23 %empty_56
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3, i20) nounwind readnone {
entry:
  %empty = zext i3 %0 to i23
  %empty_57 = zext i20 %1 to i23
  %empty_58 = shl i23 %empty, 20
  %empty_59 = or i23 %empty_58, %empty_57
  ret i23 %empty_59
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23
  %empty_60 = zext i1 %1 to i23
  %empty_61 = shl i23 %empty, 1
  %empty_62 = or i23 %empty_61, %empty_60
  ret i23 %empty_62
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_63 = zext i2 %1 to i23
  %empty_64 = shl i23 %empty, 2
  %empty_65 = or i23 %empty_64, %empty_63
  ret i23 %empty_65
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20, i3) nounwind readnone {
entry:
  %empty = zext i20 %0 to i23
  %empty_66 = zext i3 %1 to i23
  %empty_67 = shl i23 %empty, 3
  %empty_68 = or i23 %empty_67, %empty_66
  ret i23 %empty_68
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19, i4) nounwind readnone {
entry:
  %empty = zext i19 %0 to i23
  %empty_69 = zext i4 %1 to i23
  %empty_70 = shl i23 %empty, 4
  %empty_71 = or i23 %empty_70, %empty_69
  ret i23 %empty_71
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18, i5) nounwind readnone {
entry:
  %empty = zext i18 %0 to i23
  %empty_72 = zext i5 %1 to i23
  %empty_73 = shl i23 %empty, 5
  %empty_74 = or i23 %empty_73, %empty_72
  ret i23 %empty_74
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17, i6) nounwind readnone {
entry:
  %empty = zext i17 %0 to i23
  %empty_75 = zext i6 %1 to i23
  %empty_76 = shl i23 %empty, 6
  %empty_77 = or i23 %empty_76, %empty_75
  ret i23 %empty_77
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16, i7) nounwind readnone {
entry:
  %empty = zext i16 %0 to i23
  %empty_78 = zext i7 %1 to i23
  %empty_79 = shl i23 %empty, 7
  %empty_80 = or i23 %empty_79, %empty_78
  ret i23 %empty_80
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_81 = zext i8 %1 to i23
  %empty_82 = shl i23 %empty, 8
  %empty_83 = or i23 %empty_82, %empty_81
  ret i23 %empty_83
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14, i9) nounwind readnone {
entry:
  %empty = zext i14 %0 to i23
  %empty_84 = zext i9 %1 to i23
  %empty_85 = shl i23 %empty, 9
  %empty_86 = or i23 %empty_85, %empty_84
  ret i23 %empty_86
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_87 = zext i10 %1 to i23
  %empty_88 = shl i23 %empty, 10
  %empty_89 = or i23 %empty_88, %empty_87
  ret i23 %empty_89
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12, i11) nounwind readnone {
entry:
  %empty = zext i12 %0 to i23
  %empty_90 = zext i11 %1 to i23
  %empty_91 = shl i23 %empty, 11
  %empty_92 = or i23 %empty_91, %empty_90
  ret i23 %empty_92
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11, i12) nounwind readnone {
entry:
  %empty = zext i11 %0 to i23
  %empty_93 = zext i12 %1 to i23
  %empty_94 = shl i23 %empty, 12
  %empty_95 = or i23 %empty_94, %empty_93
  ret i23 %empty_95
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10, i13) nounwind readnone {
entry:
  %empty = zext i10 %0 to i23
  %empty_96 = zext i13 %1 to i23
  %empty_97 = shl i23 %empty, 13
  %empty_98 = or i23 %empty_97, %empty_96
  ret i23 %empty_98
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1, i22) nounwind readnone {
entry:
  %empty = zext i1 %0 to i23
  %empty_99 = zext i22 %1 to i23
  %empty_100 = shl i23 %empty, 22
  %empty_101 = or i23 %empty_100, %empty_99
  ret i23 %empty_101
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_102 = zext i1 %1 to i22
  %empty_103 = shl i22 %empty, 1
  %empty_104 = or i22 %empty_103, %empty_102
  ret i22 %empty_104
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_105 = zext i1 %1 to i21
  %empty_106 = shl i21 %empty, 1
  %empty_107 = or i21 %empty_106, %empty_105
  ret i21 %empty_107
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_108 = zext i1 %1 to i20
  %empty_109 = shl i20 %empty, 1
  %empty_110 = or i20 %empty_109, %empty_108
  ret i20 %empty_110
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18, i1) nounwind readnone {
entry:
  %empty = zext i18 %0 to i19
  %empty_111 = zext i1 %1 to i19
  %empty_112 = shl i19 %empty, 1
  %empty_113 = or i19 %empty_112, %empty_111
  ret i19 %empty_113
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_114 = zext i1 %1 to i18
  %empty_115 = shl i18 %empty, 1
  %empty_116 = or i18 %empty_115, %empty_114
  ret i18 %empty_116
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_117 = zext i1 %1 to i17
  %empty_118 = shl i17 %empty, 1
  %empty_119 = or i17 %empty_118, %empty_117
  ret i17 %empty_119
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_120 = zext i1 %1 to i16
  %empty_121 = shl i16 %empty, 1
  %empty_122 = or i16 %empty_121, %empty_120
  ret i16 %empty_122
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_123 = zext i1 %1 to i15
  %empty_124 = shl i15 %empty, 1
  %empty_125 = or i15 %empty_124, %empty_123
  ret i15 %empty_125
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13, i1) nounwind readnone {
entry:
  %empty = zext i13 %0 to i14
  %empty_126 = zext i1 %1 to i14
  %empty_127 = shl i14 %empty, 1
  %empty_128 = or i14 %empty_127, %empty_126
  ret i14 %empty_128
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_129 = zext i1 %1 to i13
  %empty_130 = shl i13 %empty, 1
  %empty_131 = or i13 %empty_130, %empty_129
  ret i13 %empty_131
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_132 = zext i1 %1 to i12
  %empty_133 = shl i12 %empty, 1
  %empty_134 = or i12 %empty_133, %empty_132
  ret i12 %empty_134
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_135 = zext i1 %1 to i11
  %empty_136 = shl i11 %empty, 1
  %empty_137 = or i11 %empty_136, %empty_135
  ret i11 %empty_137
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_138 = zext i1 %1 to i10
  %empty_139 = shl i10 %empty, 1
  %empty_140 = or i10 %empty_139, %empty_138
  ret i10 %empty_140
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !13, !0, !15, !15, !21, !25, !25, !15, !28, !31, !15, !15, !15, !34, !34, !15, !15, !36, !39, !25, !25, !15, !41, !15, !15, !15, !43, !43, !34, !34, !45, !45, !47, !49, !51, !49, !53, !15, !53, !15, !25, !25, !15, !54, !56, !56, !58, !43, !43, !59, !15, !61, !61, !65, !15, !15, !15, !43, !43, !67, !67, !39, !41, !15, !15, !34, !34, !43, !43, !31, !34, !34, !69, !71, !71, !15, !15, !47, !15, !72, !73, !75, !75, !77, !79, !82, !15, !15, !15, !75, !75, !43, !43, !65, !84, !84, !47, !49, !15, !15, !15, !86, !88, !88, !94, !94, !96, !15, !15, !98, !98, !15, !15, !15, !99, !99, !99, !101, !103, !103, !15, !15, !15, !104, !104, !106, !108, !108, !110, !110, !103, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!112}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !22, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!25 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!34 = metadata !{null, metadata !22, metadata !2, metadata !35, metadata !4, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!36 = metadata !{null, metadata !22, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !42, metadata !11, metadata !33, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!43 = metadata !{null, metadata !22, metadata !2, metadata !44, metadata !4, metadata !27, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!45 = metadata !{null, metadata !22, metadata !2, metadata !46, metadata !4, metadata !27, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !33, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!49 = metadata !{null, metadata !22, metadata !2, metadata !44, metadata !4, metadata !50, metadata !6}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !33, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!53 = metadata !{null, metadata !22, metadata !2, metadata !37, metadata !4, metadata !50, metadata !6}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !33, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{null, metadata !22, metadata !2, metadata !57, metadata !4, metadata !27, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!58 = metadata !{null, metadata !22, metadata !2, metadata !46, metadata !4, metadata !50, metadata !6}
!59 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!61 = metadata !{null, metadata !62, metadata !9, metadata !63, metadata !11, metadata !64, metadata !6}
!62 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !33, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!67 = metadata !{null, metadata !22, metadata !2, metadata !68, metadata !4, metadata !27, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!69 = metadata !{null, metadata !22, metadata !2, metadata !70, metadata !4, metadata !50, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!71 = metadata !{null, metadata !22, metadata !2, metadata !70, metadata !4, metadata !27, metadata !6}
!72 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !40, metadata !6}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !33, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!75 = metadata !{null, metadata !22, metadata !2, metadata !76, metadata !4, metadata !27, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !33, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !33, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!84 = metadata !{null, metadata !22, metadata !2, metadata !85, metadata !4, metadata !27, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !87, metadata !6}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!88 = metadata !{null, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!94 = metadata !{null, metadata !22, metadata !2, metadata !95, metadata !4, metadata !38, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!96 = metadata !{null, metadata !22, metadata !2, metadata !97, metadata !4, metadata !50, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!98 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !38, metadata !6}
!99 = metadata !{null, metadata !22, metadata !2, metadata !100, metadata !4, metadata !27, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!101 = metadata !{null, metadata !22, metadata !2, metadata !102, metadata !4, metadata !50, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!103 = metadata !{null, metadata !22, metadata !2, metadata !102, metadata !4, metadata !27, metadata !6}
!104 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !105, metadata !6}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!106 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !107, metadata !6}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!108 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !109, metadata !6}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!110 = metadata !{null, metadata !22, metadata !2, metadata !111, metadata !4, metadata !27, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!112 = metadata !{metadata !113, [1 x i32]* @llvm_global_ctors_0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"llvm.global_ctors.0", metadata !117, metadata !"", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"array", metadata !123, metadata !"int", i32 0, i32 31}
!123 = metadata !{metadata !124, metadata !125}
!124 = metadata !{i32 2, i32 2, i32 2}
!125 = metadata !{i32 0, i32 2, i32 1}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 31, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"array", metadata !130, metadata !"int", i32 0, i32 31}
!130 = metadata !{metadata !131, metadata !125}
!131 = metadata !{i32 1, i32 1, i32 2}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"array", metadata !136, metadata !"int", i32 0, i32 31}
!136 = metadata !{metadata !137, metadata !125}
!137 = metadata !{i32 0, i32 0, i32 2}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 31, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"return", metadata !142, metadata !"int", i32 0, i32 31}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 1, i32 0}
