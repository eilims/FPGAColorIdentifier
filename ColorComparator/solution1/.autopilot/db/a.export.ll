; ModuleID = 'D:/Repositories/FPGAColorIdentifier/ColorComparator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getPixelClassificati = internal unnamed_addr constant [30 x i8] c"getPixelClassification_Stream\00"
@p_color_array_stream_s = internal unnamed_addr constant [6 x i17] [i17 -65536, i17 255, i17 65280, i17 -256, i17 -65281, i17 65535]
@p_str6 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str5 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [17 x i8] c"PIXEL_COLOR_LOOP\00", align 1

declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @getPixelClassification_Stream(i24 %in_pixel_V, i24* %out_pixel_V) {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24 %in_pixel_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %out_pixel_V, [5 x i8]* @p_str5, i32 1, i32 1, [5 x i8]* @p_str6, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %rewind_header

_ifconv:                                          ; preds = %rewind_header, %rewind_init
  %in_pixel_V9_phi = phi i24 [ %in_pixel_V_read, %rewind_init ], [ %in_pixel_V9_rewind, %rewind_header ]
  %minimumDistanceIndex = zext i2 %minimumDistanceIndex_6 to i3
  %minimumDistanceIndex_3 = zext i2 %minimumDistanceIndex_6 to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str1) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp1 = zext i2 %minimumDistanceIndex_6 to i64
  %p_color_array_stream_s = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp1
  %p_color_array_stream_1 = load i17* %p_color_array_stream_s, align 4
  %pixelRed_V = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %in_pixel_V9_phi, i32 16, i32 23)
  %pixelGreen_V = trunc i24 %in_pixel_V9_phi to i8
  %pixelBlue_V = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %in_pixel_V9_phi, i32 8, i32 15)
  %rhs_V = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_1, i32 16)
  %colorGreen_V = trunc i17 %p_color_array_stream_1 to i8
  %colorBlue_V = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_1, i32 8, i32 15)
  %lhs_V = zext i8 %pixelRed_V to i9
  %rhs_V_cast = select i1 %rhs_V, i9 255, i9 0
  %r_V = sub i9 %lhs_V, %rhs_V_cast
  %p_cast1 = sext i9 %r_V to i18
  %result3 = mul i18 %p_cast1, %p_cast1
  %tmp_4 = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result3, i9 0)
  %p_Val2_cast = sext i27 %tmp_4 to i30
  %lhs_V_1 = zext i8 %pixelGreen_V to i9
  %rhs_V_1 = zext i8 %colorGreen_V to i9
  %r_V_1 = sub i9 %lhs_V_1, %rhs_V_1
  %p_cast2 = sext i9 %r_V_1 to i18
  %result_s = mul i18 %p_cast2, %p_cast2
  %tmp_6 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_s, i10 0)
  %p_Val2_1_cast = sext i28 %tmp_6 to i29
  %lhs_V_2 = zext i8 %pixelBlue_V to i9
  %rhs_V_2 = zext i8 %colorBlue_V to i9
  %r_V_2 = sub i9 %lhs_V_2, %rhs_V_2
  %tmp_10 = sext i9 %r_V_2 to i17
  %tmp_13 = sext i9 %r_V_2 to i17
  %tmp_16 = mul i17 %tmp_13, %tmp_10
  %p_shl_i1 = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_16, i10 0)
  %p_shl_i1_cast = sext i27 %p_shl_i1 to i28
  %p_shl3_i1 = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_16, i8 0)
  %p_shl3_i1_cast = sext i25 %p_shl3_i1 to i28
  %p_Val2_s = sub i28 %p_shl_i1_cast, %p_shl3_i1_cast
  %p_Val2_2_cast_cast = sext i28 %p_Val2_s to i29
  %tmp6 = add i29 %p_Val2_2_cast_cast, %p_Val2_1_cast
  %tmp6_cast = sext i29 %tmp6 to i30
  %powerSummation_V = add i30 %p_Val2_cast, %tmp6_cast
  %result_V_1 = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V)
  %tmp_7 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_1, i32 8, i32 19)
  %tmp_5_i1 = zext i12 %tmp_7 to i32
  %tmp_1 = icmp slt i32 %tmp_5_i1, %minimumDistance4
  %tmp_2 = icmp ult i12 %tmp_7, 250
  %i_0_minimumDistanceI = select i1 %tmp_2, i32 %minimumDistanceIndex_3, i32 %minimumDistanceIndex_1
  %distance_0_minimumDi = select i1 %tmp_2, i32 %tmp_5_i1, i32 %minimumDistance4
  %minimumDistanceIndex_2 = select i1 %tmp_1, i32 %i_0_minimumDistanceI, i32 %minimumDistanceIndex_1
  %minimumDistance_2 = select i1 %tmp_1, i32 %distance_0_minimumDi, i32 %minimumDistance4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str1, i32 %tmp)
  %i = add i3 1, %minimumDistanceIndex
  %i_cast = zext i3 %i to i32
  %tmp_s = zext i3 %i to i64
  %p_color_array_stream_2 = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_s
  %p_color_array_stream_3 = load i17* %p_color_array_stream_2, align 4
  %rhs_V_3 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_3, i32 16)
  %colorGreen_V_1 = trunc i17 %p_color_array_stream_3 to i8
  %colorBlue_V_1 = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_3, i32 8, i32 15)
  %rhs_V_3_cast = select i1 %rhs_V_3, i9 255, i9 0
  %r_V_3 = sub i9 %lhs_V, %rhs_V_3_cast
  %p_cast3 = sext i9 %r_V_3 to i18
  %result_2 = mul i18 %p_cast3, %p_cast3
  %tmp_5 = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result_2, i9 0)
  %p_Val2_3_cast = sext i27 %tmp_5 to i30
  %rhs_V_4 = zext i8 %colorGreen_V_1 to i9
  %r_V_4 = sub i9 %lhs_V_1, %rhs_V_4
  %p_cast4 = sext i9 %r_V_4 to i18
  %result_4 = mul i18 %p_cast4, %p_cast4
  %tmp_8 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_4, i10 0)
  %p_Val2_4_cast = sext i28 %tmp_8 to i29
  %rhs_V_5 = zext i8 %colorBlue_V_1 to i9
  %r_V_5 = sub i9 %lhs_V_2, %rhs_V_5
  %tmp_21 = sext i9 %r_V_5 to i17
  %tmp_22 = sext i9 %r_V_5 to i17
  %tmp_23 = mul i17 %tmp_22, %tmp_21
  %p_shl_i = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_23, i10 0)
  %p_shl_i_cast = sext i27 %p_shl_i to i28
  %p_shl3_i = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_23, i8 0)
  %p_shl3_i_cast = sext i25 %p_shl3_i to i28
  %p_Val2_1 = sub i28 %p_shl_i_cast, %p_shl3_i_cast
  %p_Val2_6_cast_cast = sext i28 %p_Val2_1 to i29
  %tmp10 = add i29 %p_Val2_6_cast_cast, %p_Val2_4_cast
  %tmp10_cast = sext i29 %tmp10 to i30
  %powerSummation_V_1 = add i30 %p_Val2_3_cast, %tmp10_cast
  %result_V = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V_1)
  %tmp_9 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V, i32 8, i32 19)
  %tmp_5_i = zext i12 %tmp_9 to i32
  %tmp_1_1 = icmp slt i32 %tmp_5_i, %minimumDistance_2
  %tmp_2_1 = icmp ult i12 %tmp_9, 250
  %i_0_minimumDistanceI_1 = select i1 %tmp_2_1, i32 %i_cast, i32 %minimumDistanceIndex_2
  %distance_0_minimumDi_1 = select i1 %tmp_2_1, i32 %tmp_5_i, i32 %minimumDistance_2
  %minimumDistanceIndex_4 = select i1 %tmp_1_1, i32 %i_0_minimumDistanceI_1, i32 %minimumDistanceIndex_2
  %minimumDistance_2_1 = select i1 %tmp_1_1, i32 %distance_0_minimumDi_1, i32 %minimumDistance_2
  %i_1 = add i3 2, %minimumDistanceIndex
  %i_1_cast = zext i3 %i_1 to i32
  %tmp_3 = zext i3 %i_1 to i64
  %p_color_array_stream_4 = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_3
  %p_color_array_stream_5 = load i17* %p_color_array_stream_4, align 4
  %rhs_V_6 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_5, i32 16)
  %colorGreen_V_2 = trunc i17 %p_color_array_stream_5 to i8
  %colorBlue_V_2 = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_5, i32 8, i32 15)
  %rhs_V_6_cast = select i1 %rhs_V_6, i9 255, i9 0
  %r_V_6 = sub i9 %lhs_V, %rhs_V_6_cast
  %p_cast5 = sext i9 %r_V_6 to i18
  %result_7 = mul i18 %p_cast5, %p_cast5
  %tmp_11 = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result_7, i9 0)
  %p_Val2_6_cast5 = sext i27 %tmp_11 to i30
  %rhs_V_7 = zext i8 %colorGreen_V_2 to i9
  %r_V_7 = sub i9 %lhs_V_1, %rhs_V_7
  %p_cast = sext i9 %r_V_7 to i18
  %result_3 = mul i18 %p_cast, %p_cast
  %tmp_12 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_3, i10 0)
  %p_Val2_7_cast = sext i28 %tmp_12 to i29
  %rhs_V_8 = zext i8 %colorBlue_V_2 to i9
  %r_V_8 = sub i9 %lhs_V_2, %rhs_V_8
  %tmp_26 = sext i9 %r_V_8 to i17
  %tmp_27 = sext i9 %r_V_8 to i17
  %tmp_28 = mul i17 %tmp_27, %tmp_26
  %p_shl_i2 = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_28, i10 0)
  %p_shl_i2_cast = sext i27 %p_shl_i2 to i28
  %p_shl3_i2 = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_28, i8 0)
  %p_shl3_i2_cast = sext i25 %p_shl3_i2 to i28
  %p_Val2_2 = sub i28 %p_shl_i2_cast, %p_shl3_i2_cast
  %p_Val2_10_cast_cas = sext i28 %p_Val2_2 to i29
  %tmp14 = add i29 %p_Val2_10_cast_cas, %p_Val2_7_cast
  %tmp14_cast = sext i29 %tmp14 to i30
  %powerSummation_V_2 = add i30 %p_Val2_6_cast5, %tmp14_cast
  %result_V_2 = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V_2)
  %tmp_14 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_2, i32 8, i32 19)
  %tmp_5_i2 = zext i12 %tmp_14 to i32
  %tmp_1_2 = icmp slt i32 %tmp_5_i2, %minimumDistance_2_1
  %tmp_2_2 = icmp ult i12 %tmp_14, 250
  %i_0_minimumDistanceI_2 = select i1 %tmp_2_2, i32 %i_1_cast, i32 %minimumDistanceIndex_4
  %distance_0_minimumDi_2 = select i1 %tmp_2_2, i32 %tmp_5_i2, i32 %minimumDistance_2_1
  %minimumDistanceIndex_5 = select i1 %tmp_1_2, i32 %i_0_minimumDistanceI_2, i32 %minimumDistanceIndex_4
  %minimumDistance_2_2 = select i1 %tmp_1_2, i32 %distance_0_minimumDi_2, i32 %minimumDistance_2_1
  %i_2 = add i3 3, %minimumDistanceIndex
  %tmp_29 = trunc i3 %i_2 to i2
  %exitcond = icmp eq i3 %i_2, -2
  br i1 %exitcond, label %1, label %rewind_header

; <label>:1                                       ; preds = %_ifconv
  switch i32 %minimumDistanceIndex_5, label %8 [
    i32 0, label %2
    i32 1, label %3
    i32 2, label %4
    i32 3, label %5
    i32 4, label %6
    i32 5, label %7
  ]

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 -65536)
  br label %9

; <label>:3                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 255)
  br label %9

; <label>:4                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 65280)
  br label %9

; <label>:5                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 -256)
  br label %9

; <label>:6                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 -65281)
  br label %9

; <label>:7                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 65535)
  br label %9

; <label>:8                                       ; preds = %1
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 %in_pixel_V9_phi)
  br label %9

; <label>:9                                       ; preds = %8, %7, %6, %5, %4, %3, %2
  call void (...)* @_ssdm_op_Return()
  br label %rewind_header

rewind_init:                                      ; preds = %rewind_header
  call void (...)* @_ssdm_op_SpecBitsMap(i24 %in_pixel_V), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %out_pixel_V), !map !147
  call void (...)* @_ssdm_op_SpecTopModule([30 x i8]* @getPixelClassificati) nounwind
  %in_pixel_V_read = call i24 @_ssdm_op_Read.axis.i24(i24 %in_pixel_V)
  br label %_ifconv

rewind_header:                                    ; preds = %9, %_ifconv, %0
  %do_init = phi i1 [ true, %0 ], [ false, %_ifconv ], [ true, %9 ]
  %in_pixel_V9_rewind = phi i24 [ undef, %0 ], [ %in_pixel_V9_phi, %_ifconv ], [ undef, %9 ]
  %minimumDistance4 = phi i32 [ 2147483647, %0 ], [ %minimumDistance_2_2, %_ifconv ], [ 2147483647, %9 ]
  %minimumDistanceIndex_1 = phi i32 [ -1, %0 ], [ %minimumDistanceIndex_5, %_ifconv ], [ -1, %9 ]
  %minimumDistanceIndex_6 = phi i2 [ 0, %0 ], [ %tmp_29, %_ifconv ], [ 0, %9 ]
  br i1 %do_init, label %rewind_init, label %_ifconv
}

define internal fastcc i20 @fxp_sqrt(i30 %in_val_V_read) {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i30 @_ssdm_op_Read.ap_auto.i30(i30 %in_val_V_read)
  %tmp_31 = call i19 @_ssdm_op_PartSelect.i19.i30.i32.i32(i30 %in_val_V_read_1, i32 11, i32 29)
  %tmp = sext i19 %tmp_31 to i21
  %tmp_cast = zext i21 %tmp to i22
  %tmp_2 = add i22 %tmp_cast, 1
  %tmp_s = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_2, i32 1, i32 21)
  %tmp_1 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_s, i1 false)
  %p_0353_1 = xor i22 %tmp_1, -2097152
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_2, i32 21)
  %tmp_16_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_33, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_16_1, 3145728
  %q_V_1_1 = select i1 %tmp_33, i3 -2, i3 2
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_37 = shl i23 %p_0353_1_1, 1
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_3 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_39, i22 0)
  %tmp_4 = add i23 %tmp_3, -1572864
  %s_V_1_2 = sub i23 %tmp_37, %tmp_4
  %tmp1 = add i23 %tmp_37, -2621440
  %s_V_2_2 = add i23 %tmp1, %tmp_3
  %p_0305_1_in_in_2 = select i1 %tmp_35, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_35, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_43 = shl i23 %p_0353_1_2, 1
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_22_3 = or i23 %r_V_4_3, 262144
  %s_V_1_3 = sub i23 %tmp_43, %tmp_22_3
  %r_V_6_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_25_3 = or i23 %r_V_6_3, 786432
  %s_V_2_3 = add i23 %tmp_25_3, %tmp_43
  %p_0353_1_3 = select i1 %tmp_41, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_15 = select i1 %tmp_41, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_15, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_47 = shl i23 %p_0353_1_3, 1
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_22_4 = or i23 %r_V_4_4, 131072
  %s_V_1_4 = sub i23 %tmp_47, %tmp_22_4
  %r_V_6_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_15, i20 0)
  %tmp_25_4 = or i23 %r_V_6_4, 393216
  %s_V_2_4 = add i23 %tmp_25_4, %tmp_47
  %p_0353_1_4 = select i1 %tmp_45, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_16 = select i1 %tmp_45, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_16, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_51 = shl i23 %p_0353_1_4, 1
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_22_5 = or i23 %r_V_4_5, 65536
  %s_V_1_5 = sub i23 %tmp_51, %tmp_22_5
  %r_V_6_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_16, i19 0)
  %tmp_25_5 = or i23 %r_V_6_5, 196608
  %s_V_2_5 = add i23 %tmp_25_5, %tmp_51
  %p_0353_1_5 = select i1 %tmp_49, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_17 = select i1 %tmp_49, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_17, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_53 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_55 = shl i23 %p_0353_1_5, 1
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_22_6 = or i23 %r_V_4_6, 32768
  %s_V_1_6 = sub i23 %tmp_55, %tmp_22_6
  %r_V_6_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_17, i18 0)
  %tmp_25_6 = or i23 %r_V_6_6, 98304
  %s_V_2_6 = add i23 %tmp_25_6, %tmp_55
  %p_0353_1_6 = select i1 %tmp_53, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_18 = select i1 %tmp_53, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_18, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_57 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_59 = shl i23 %p_0353_1_6, 1
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_22_7 = or i23 %r_V_4_7, 16384
  %s_V_1_7 = sub i23 %tmp_59, %tmp_22_7
  %r_V_6_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_18, i17 0)
  %tmp_25_7 = or i23 %r_V_6_7, 49152
  %s_V_2_7 = add i23 %tmp_25_7, %tmp_59
  %p_0353_1_7 = select i1 %tmp_57, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_19 = select i1 %tmp_57, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_19, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_62 = shl i23 %p_0353_1_7, 1
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_22_8 = or i23 %r_V_4_8, 8192
  %s_V_1_8 = sub i23 %tmp_62, %tmp_22_8
  %r_V_6_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_19, i16 0)
  %tmp_25_8 = or i23 %r_V_6_8, 24576
  %s_V_2_8 = add i23 %tmp_25_8, %tmp_62
  %p_0353_1_8 = select i1 %tmp_61, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_20 = select i1 %tmp_61, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_20, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_63 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_64 = shl i23 %p_0353_1_8, 1
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_22_9 = or i23 %r_V_4_9, 4096
  %s_V_1_9 = sub i23 %tmp_64, %tmp_22_9
  %r_V_6_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_20, i15 0)
  %tmp_25_9 = or i23 %r_V_6_9, 12288
  %s_V_2_9 = add i23 %tmp_25_9, %tmp_64
  %p_0353_1_9 = select i1 %tmp_63, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_21 = select i1 %tmp_63, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_21, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_69 = shl i23 %p_0353_1_9, 1
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_22_s = or i23 %r_V_4_s, 2048
  %s_V_1_s = sub i23 %tmp_69, %tmp_22_s
  %r_V_6_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_21, i14 0)
  %tmp_25_s = or i23 %r_V_6_s, 6144
  %s_V_2_s = add i23 %tmp_25_s, %tmp_69
  %p_0353_1_s = select i1 %tmp_68, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_22 = select i1 %tmp_68, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_22, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_71 = shl i23 %p_0353_1_s, 1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_22_1 = or i23 %r_V_4_1, 1024
  %s_V_1_1 = sub i23 %tmp_71, %tmp_22_1
  %r_V_6_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_22, i13 0)
  %tmp_25_1 = or i23 %r_V_6_1, 3072
  %s_V_2_1 = add i23 %tmp_25_1, %tmp_71
  %p_0353_1_10 = select i1 %tmp_70, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_23 = select i1 %tmp_70, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_23, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_73 = shl i23 %p_0353_1_10, 1
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_22_2 = or i23 %r_V_4_2, 512
  %s_V_1_10 = sub i23 %tmp_73, %tmp_22_2
  %r_V_6_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_23, i12 0)
  %tmp_25_2 = or i23 %r_V_6_2, 1536
  %s_V_2_10 = add i23 %tmp_25_2, %tmp_73
  %p_0353_1_11 = select i1 %tmp_72, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_24 = select i1 %tmp_72, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_24, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_75 = shl i23 %p_0353_1_11, 1
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_22_10 = or i23 %r_V_3_s, 256
  %s_V_1_11 = sub i23 %tmp_75, %tmp_22_10
  %r_V_5_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_24, i11 0)
  %tmp_25_10 = or i23 %r_V_5_s, 768
  %s_V_2_11 = add i23 %tmp_25_10, %tmp_75
  %p_0353_1_12 = select i1 %tmp_74, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_25 = select i1 %tmp_74, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_25, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_76 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_77 = shl i23 %p_0353_1_12, 1
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_22_11 = or i23 %r_V_3_1, 128
  %s_V_1_12 = sub i23 %tmp_77, %tmp_22_11
  %r_V_5_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_25, i10 0)
  %tmp_25_11 = or i23 %r_V_5_1, 384
  %s_V_2_12 = add i23 %tmp_25_11, %tmp_77
  %p_0353_1_13 = select i1 %tmp_76, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_26 = select i1 %tmp_76, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_26, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_78 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_79 = shl i23 %p_0353_1_13, 1
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_22_12 = or i23 %r_V_3_2, 64
  %s_V_1_13 = sub i23 %tmp_79, %tmp_22_12
  %r_V_5_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_26, i9 0)
  %tmp_25_12 = or i23 %r_V_5_2, 192
  %s_V_2_13 = add i23 %tmp_25_12, %tmp_79
  %p_0353_1_14 = select i1 %tmp_78, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_27 = select i1 %tmp_78, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_27, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_80 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_81 = shl i23 %p_0353_1_14, 1
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_22_13 = or i23 %r_V_3_3, 32
  %s_V_1_14 = sub i23 %tmp_81, %tmp_22_13
  %r_V_5_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_27, i8 0)
  %tmp_25_13 = or i23 %r_V_5_3, 96
  %s_V_2_14 = add i23 %tmp_25_13, %tmp_81
  %p_0353_1_15 = select i1 %tmp_80, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_28 = select i1 %tmp_80, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_28, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_82 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_83 = shl i23 %p_0353_1_15, 1
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_22_14 = or i23 %r_V_3_4, 16
  %s_V_1_15 = sub i23 %tmp_83, %tmp_22_14
  %r_V_5_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_28, i7 0)
  %tmp_25_14 = or i23 %r_V_5_4, 48
  %s_V_2_15 = add i23 %tmp_25_14, %tmp_83
  %p_0353_1_16 = select i1 %tmp_82, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_29 = select i1 %tmp_82, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_29, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_84 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_85 = shl i23 %p_0353_1_16, 1
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_22_15 = or i23 %r_V_3_5, 8
  %s_V_1_16 = sub i23 %tmp_85, %tmp_22_15
  %r_V_5_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_29, i6 0)
  %tmp_25_15 = or i23 %r_V_5_5, 24
  %s_V_2_16 = add i23 %tmp_25_15, %tmp_85
  %p_0353_1_17 = select i1 %tmp_84, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_30 = select i1 %tmp_84, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_30, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_86 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_87 = shl i23 %p_0353_1_17, 1
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_22_16 = or i23 %r_V_3_6, 4
  %s_V_1_17 = sub i23 %tmp_87, %tmp_22_16
  %r_V_5_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_30, i5 0)
  %tmp_25_16 = or i23 %r_V_5_6, 12
  %s_V_2_17 = add i23 %tmp_25_16, %tmp_87
  %p_0353_1_18 = select i1 %tmp_86, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_32 = select i1 %tmp_86, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_32, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_88 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_89 = shl i23 %p_0353_1_18, 1
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_22_17 = or i23 %r_V_3_7, 2
  %s_V_1_18 = sub i23 %tmp_89, %tmp_22_17
  %r_V_5_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_32, i4 0)
  %tmp_25_17 = or i23 %r_V_5_7, 6
  %s_V_2_18 = add i23 %tmp_25_17, %tmp_89
  %p_0353_1_19 = select i1 %tmp_88, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_34 = select i1 %tmp_88, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_34, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_90 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_91 = shl i23 %p_0353_1_19, 1
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_4_10 = or i23 %r_V_3_8, 1
  %s_V_1_19 = sub i23 %tmp_91, %r_V_4_10
  %r_V_5_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_34, i3 0)
  %r_V_6_10 = or i23 %r_V_5_8, 3
  %s_V_2_19 = add i23 %r_V_6_10, %tmp_91
  %p_0353_1_20 = select i1 %tmp_90, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_92 = trunc i21 %q_V_1_19 to i20
  %tmp_93 = shl i20 %tmp_34, 1
  %tmp_36 = select i1 %tmp_90, i20 %tmp_93, i20 %tmp_92
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_36, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_7 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_38 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_40 = select i1 %tmp_7, i20 %tmp_38, i20 %tmp_36
  ret i20 %tmp_40
}

define weak void @_ssdm_op_Write.axis.i24P(i24*, i24) {
entry:
  store i24 %1, i24* %0
  ret void
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

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_ssdm_op_Return(...)

define weak i24 @_ssdm_op_Read.axis.i24(i24) {
entry:
  ret i24 %0
}

define weak i30 @_ssdm_op_Read.ap_auto.i30(i30) {
entry:
  ret i30 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_15 = trunc i24 %empty to i8
  ret i8 %empty_15
}

define weak i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_16 = trunc i17 %empty to i8
  ret i8 %empty_16
}

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_17 = trunc i22 %empty to i21
  ret i21 %empty_17
}

define weak i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_18 = trunc i21 %empty to i20
  ret i20 %empty_18
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i30.i32.i32(i30, i32, i32) nounwind readnone {
entry:
  %empty = call i30 @llvm.part.select.i30(i30 %0, i32 %1, i32 %2)
  %empty_19 = trunc i30 %empty to i19
  ret i19 %empty_19
}

declare i19 @_ssdm_op_PartSelect.i19.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_20 = trunc i20 %empty to i12
  ret i12 %empty_20
}

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_21 = shl i23 1, %empty
  %empty_22 = and i23 %0, %empty_21
  %empty_23 = icmp ne i23 %empty_22, 0
  ret i1 %empty_23
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_24 = shl i22 1, %empty
  %empty_25 = and i22 %0, %empty_24
  %empty_26 = icmp ne i22 %empty_25, 0
  ret i1 %empty_26
}

declare i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_27 = shl i17 1, %empty
  %empty_28 = and i17 %0, %empty_27
  %empty_29 = icmp ne i17 %empty_28, 0
  ret i1 %empty_29
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_30 = zext i1 %1 to i9
  %empty_31 = shl i9 %empty, 1
  %empty_32 = or i9 %empty_31, %empty_30
  ret i9 %empty_32
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_33 = zext i1 %1 to i8
  %empty_34 = shl i8 %empty, 1
  %empty_35 = or i8 %empty_34, %empty_33
  ret i8 %empty_35
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_36 = zext i1 %1 to i7
  %empty_37 = shl i7 %empty, 1
  %empty_38 = or i7 %empty_37, %empty_36
  ret i7 %empty_38
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_39 = zext i1 %1 to i6
  %empty_40 = shl i6 %empty, 1
  %empty_41 = or i6 %empty_40, %empty_39
  ret i6 %empty_41
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_42 = zext i1 %1 to i5
  %empty_43 = shl i5 %empty, 1
  %empty_44 = or i5 %empty_43, %empty_42
  ret i5 %empty_44
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_45 = zext i1 %1 to i4
  %empty_46 = shl i4 %empty, 1
  %empty_47 = or i4 %empty_46, %empty_45
  ret i4 %empty_47
}

define weak i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18, i10) nounwind readnone {
entry:
  %empty = zext i18 %0 to i28
  %empty_48 = zext i10 %1 to i28
  %empty_49 = shl i28 %empty, 10
  %empty_50 = or i28 %empty_49, %empty_48
  ret i28 %empty_50
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18, i9) nounwind readnone {
entry:
  %empty = zext i18 %0 to i27
  %empty_51 = zext i9 %1 to i27
  %empty_52 = shl i27 %empty, 9
  %empty_53 = or i27 %empty_52, %empty_51
  ret i27 %empty_53
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17, i10) nounwind readnone {
entry:
  %empty = zext i17 %0 to i27
  %empty_54 = zext i10 %1 to i27
  %empty_55 = shl i27 %empty, 10
  %empty_56 = or i27 %empty_55, %empty_54
  ret i27 %empty_56
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17, i8) nounwind readnone {
entry:
  %empty = zext i17 %0 to i25
  %empty_57 = zext i8 %1 to i25
  %empty_58 = shl i25 %empty, 8
  %empty_59 = or i25 %empty_58, %empty_57
  ret i25 %empty_59
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_60 = zext i14 %1 to i23
  %empty_61 = shl i23 %empty, 14
  %empty_62 = or i23 %empty_61, %empty_60
  ret i23 %empty_62
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8, i15) nounwind readnone {
entry:
  %empty = zext i8 %0 to i23
  %empty_63 = zext i15 %1 to i23
  %empty_64 = shl i23 %empty, 15
  %empty_65 = or i23 %empty_64, %empty_63
  ret i23 %empty_65
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7, i16) nounwind readnone {
entry:
  %empty = zext i7 %0 to i23
  %empty_66 = zext i16 %1 to i23
  %empty_67 = shl i23 %empty, 16
  %empty_68 = or i23 %empty_67, %empty_66
  ret i23 %empty_68
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6, i17) nounwind readnone {
entry:
  %empty = zext i6 %0 to i23
  %empty_69 = zext i17 %1 to i23
  %empty_70 = shl i23 %empty, 17
  %empty_71 = or i23 %empty_70, %empty_69
  ret i23 %empty_71
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5, i18) nounwind readnone {
entry:
  %empty = zext i5 %0 to i23
  %empty_72 = zext i18 %1 to i23
  %empty_73 = shl i23 %empty, 18
  %empty_74 = or i23 %empty_73, %empty_72
  ret i23 %empty_74
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4, i19) nounwind readnone {
entry:
  %empty = zext i4 %0 to i23
  %empty_75 = zext i19 %1 to i23
  %empty_76 = shl i23 %empty, 19
  %empty_77 = or i23 %empty_76, %empty_75
  ret i23 %empty_77
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3, i20) nounwind readnone {
entry:
  %empty = zext i3 %0 to i23
  %empty_78 = zext i20 %1 to i23
  %empty_79 = shl i23 %empty, 20
  %empty_80 = or i23 %empty_79, %empty_78
  ret i23 %empty_80
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23
  %empty_81 = zext i1 %1 to i23
  %empty_82 = shl i23 %empty, 1
  %empty_83 = or i23 %empty_82, %empty_81
  ret i23 %empty_83
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_84 = zext i2 %1 to i23
  %empty_85 = shl i23 %empty, 2
  %empty_86 = or i23 %empty_85, %empty_84
  ret i23 %empty_86
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20, i3) nounwind readnone {
entry:
  %empty = zext i20 %0 to i23
  %empty_87 = zext i3 %1 to i23
  %empty_88 = shl i23 %empty, 3
  %empty_89 = or i23 %empty_88, %empty_87
  ret i23 %empty_89
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19, i4) nounwind readnone {
entry:
  %empty = zext i19 %0 to i23
  %empty_90 = zext i4 %1 to i23
  %empty_91 = shl i23 %empty, 4
  %empty_92 = or i23 %empty_91, %empty_90
  ret i23 %empty_92
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18, i5) nounwind readnone {
entry:
  %empty = zext i18 %0 to i23
  %empty_93 = zext i5 %1 to i23
  %empty_94 = shl i23 %empty, 5
  %empty_95 = or i23 %empty_94, %empty_93
  ret i23 %empty_95
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17, i6) nounwind readnone {
entry:
  %empty = zext i17 %0 to i23
  %empty_96 = zext i6 %1 to i23
  %empty_97 = shl i23 %empty, 6
  %empty_98 = or i23 %empty_97, %empty_96
  ret i23 %empty_98
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16, i7) nounwind readnone {
entry:
  %empty = zext i16 %0 to i23
  %empty_99 = zext i7 %1 to i23
  %empty_100 = shl i23 %empty, 7
  %empty_101 = or i23 %empty_100, %empty_99
  ret i23 %empty_101
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_102 = zext i8 %1 to i23
  %empty_103 = shl i23 %empty, 8
  %empty_104 = or i23 %empty_103, %empty_102
  ret i23 %empty_104
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14, i9) nounwind readnone {
entry:
  %empty = zext i14 %0 to i23
  %empty_105 = zext i9 %1 to i23
  %empty_106 = shl i23 %empty, 9
  %empty_107 = or i23 %empty_106, %empty_105
  ret i23 %empty_107
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_108 = zext i10 %1 to i23
  %empty_109 = shl i23 %empty, 10
  %empty_110 = or i23 %empty_109, %empty_108
  ret i23 %empty_110
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12, i11) nounwind readnone {
entry:
  %empty = zext i12 %0 to i23
  %empty_111 = zext i11 %1 to i23
  %empty_112 = shl i23 %empty, 11
  %empty_113 = or i23 %empty_112, %empty_111
  ret i23 %empty_113
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11, i12) nounwind readnone {
entry:
  %empty = zext i11 %0 to i23
  %empty_114 = zext i12 %1 to i23
  %empty_115 = shl i23 %empty, 12
  %empty_116 = or i23 %empty_115, %empty_114
  ret i23 %empty_116
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10, i13) nounwind readnone {
entry:
  %empty = zext i10 %0 to i23
  %empty_117 = zext i13 %1 to i23
  %empty_118 = shl i23 %empty, 13
  %empty_119 = or i23 %empty_118, %empty_117
  ret i23 %empty_119
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1, i22) nounwind readnone {
entry:
  %empty = zext i1 %0 to i23
  %empty_120 = zext i22 %1 to i23
  %empty_121 = shl i23 %empty, 22
  %empty_122 = or i23 %empty_121, %empty_120
  ret i23 %empty_122
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_123 = zext i1 %1 to i22
  %empty_124 = shl i22 %empty, 1
  %empty_125 = or i22 %empty_124, %empty_123
  ret i22 %empty_125
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_126 = zext i1 %1 to i21
  %empty_127 = shl i21 %empty, 1
  %empty_128 = or i21 %empty_127, %empty_126
  ret i21 %empty_128
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_129 = zext i1 %1 to i20
  %empty_130 = shl i20 %empty, 1
  %empty_131 = or i20 %empty_130, %empty_129
  ret i20 %empty_131
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18, i1) nounwind readnone {
entry:
  %empty = zext i18 %0 to i19
  %empty_132 = zext i1 %1 to i19
  %empty_133 = shl i19 %empty, 1
  %empty_134 = or i19 %empty_133, %empty_132
  ret i19 %empty_134
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_135 = zext i1 %1 to i18
  %empty_136 = shl i18 %empty, 1
  %empty_137 = or i18 %empty_136, %empty_135
  ret i18 %empty_137
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_138 = zext i1 %1 to i17
  %empty_139 = shl i17 %empty, 1
  %empty_140 = or i17 %empty_139, %empty_138
  ret i17 %empty_140
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_141 = zext i1 %1 to i16
  %empty_142 = shl i16 %empty, 1
  %empty_143 = or i16 %empty_142, %empty_141
  ret i16 %empty_143
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_144 = zext i1 %1 to i15
  %empty_145 = shl i15 %empty, 1
  %empty_146 = or i15 %empty_145, %empty_144
  ret i15 %empty_146
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13, i1) nounwind readnone {
entry:
  %empty = zext i13 %0 to i14
  %empty_147 = zext i1 %1 to i14
  %empty_148 = shl i14 %empty, 1
  %empty_149 = or i14 %empty_148, %empty_147
  ret i14 %empty_149
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_150 = zext i1 %1 to i13
  %empty_151 = shl i13 %empty, 1
  %empty_152 = or i13 %empty_151, %empty_150
  ret i13 %empty_152
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_153 = zext i1 %1 to i12
  %empty_154 = shl i12 %empty, 1
  %empty_155 = or i12 %empty_154, %empty_153
  ret i12 %empty_155
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_156 = zext i1 %1 to i11
  %empty_157 = shl i11 %empty, 1
  %empty_158 = or i11 %empty_157, %empty_156
  ret i11 %empty_158
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_159 = zext i1 %1 to i10
  %empty_160 = shl i10 %empty, 1
  %empty_161 = or i10 %empty_160, %empty_159
  ret i10 %empty_161
}

declare void @_ssdm_SpecLoopRewind(...) nounwind

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !9, !11, !17, !21, !25, !28, !34, !28, !28, !28, !37, !37, !40, !40, !28, !28, !42, !28, !28, !28, !44, !47, !47, !48, !50, !50, !28, !28, !52, !47, !47, !28, !55, !58, !28, !28, !28, !60, !60, !28, !28, !62, !65, !66, !28, !28, !28, !40, !40, !60, !60, !68, !68, !70, !72, !73, !72, !75, !28, !75, !28, !47, !47, !28, !76, !78, !78, !80, !40, !40, !81, !28, !83, !83, !87, !28, !28, !28, !40, !40, !89, !89, !65, !66, !60, !60, !40, !40, !58, !60, !60, !91, !93, !93, !28, !28, !70, !28, !94, !95, !97, !97, !42, !99, !102, !28, !28, !28, !97, !97, !40, !40, !87, !104, !104, !70, !72, !28, !28, !28, !106, !108, !108, !114, !114, !116, !28, !28, !118, !118, !28, !28, !28, !119, !119, !119, !121, !123, !123, !28, !124, !124, !28, !28, !121, !123, !123, !28, !28, !28, !126, !126, !128, !130, !130, !132, !132, !123, !118, !118, !28, !28, !28}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!134}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"pixel", metadata !"color"}
!9 = metadata !{null, metadata !1, metadata !2, metadata !10, metadata !4, metadata !8, metadata !6}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"ap_uint<24>"}
!11 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !6}
!12 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!13 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!15 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel"}
!17 = metadata !{null, metadata !18, metadata !2, metadata !19, metadata !4, metadata !20, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!19 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"ap_uint<24>*"}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel", metadata !"out_pixel"}
!21 = metadata !{null, metadata !22, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int*"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"pixelArray", metadata !"selectedColorArray"}
!25 = metadata !{null, metadata !12, metadata !13, metadata !26, metadata !15, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space"}
!30 = metadata !{metadata !"kernel_arg_access_qual"}
!31 = metadata !{metadata !"kernel_arg_type"}
!32 = metadata !{metadata !"kernel_arg_type_qual"}
!33 = metadata !{metadata !"kernel_arg_name"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !35, metadata !4, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!37 = metadata !{null, metadata !12, metadata !13, metadata !38, metadata !15, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!40 = metadata !{null, metadata !12, metadata !13, metadata !41, metadata !15, metadata !39, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !36, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!47 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !39, metadata !6}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !36, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<32, true> &"}
!50 = metadata !{null, metadata !12, metadata !13, metadata !51, metadata !15, metadata !39, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!52 = metadata !{null, metadata !12, metadata !13, metadata !53, metadata !15, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!55 = metadata !{null, metadata !1, metadata !2, metadata !56, metadata !4, metadata !57, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !36, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!60 = metadata !{null, metadata !12, metadata !13, metadata !61, metadata !15, metadata !39, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!62 = metadata !{null, metadata !12, metadata !13, metadata !63, metadata !15, metadata !64, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !46, metadata !6}
!66 = metadata !{null, metadata !1, metadata !2, metadata !67, metadata !4, metadata !36, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!68 = metadata !{null, metadata !12, metadata !13, metadata !69, metadata !15, metadata !39, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !36, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!72 = metadata !{null, metadata !12, metadata !13, metadata !41, metadata !15, metadata !27, metadata !6}
!73 = metadata !{null, metadata !1, metadata !2, metadata !74, metadata !4, metadata !36, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!75 = metadata !{null, metadata !12, metadata !13, metadata !63, metadata !15, metadata !27, metadata !6}
!76 = metadata !{null, metadata !1, metadata !2, metadata !77, metadata !4, metadata !36, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!78 = metadata !{null, metadata !12, metadata !13, metadata !79, metadata !15, metadata !39, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!80 = metadata !{null, metadata !12, metadata !13, metadata !69, metadata !15, metadata !27, metadata !6}
!81 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !82, metadata !6}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!83 = metadata !{null, metadata !84, metadata !2, metadata !85, metadata !4, metadata !86, metadata !6}
!84 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !36, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!89 = metadata !{null, metadata !12, metadata !13, metadata !90, metadata !15, metadata !39, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!91 = metadata !{null, metadata !12, metadata !13, metadata !92, metadata !15, metadata !27, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!93 = metadata !{null, metadata !12, metadata !13, metadata !92, metadata !15, metadata !39, metadata !6}
!94 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !46, metadata !6}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !36, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!97 = metadata !{null, metadata !12, metadata !13, metadata !98, metadata !15, metadata !39, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!99 = metadata !{null, metadata !1, metadata !2, metadata !100, metadata !4, metadata !101, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !36, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!104 = metadata !{null, metadata !12, metadata !13, metadata !105, metadata !15, metadata !39, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!106 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !107, metadata !6}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!108 = metadata !{null, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !6}
!109 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!110 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!112 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!114 = metadata !{null, metadata !12, metadata !13, metadata !115, metadata !15, metadata !64, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!116 = metadata !{null, metadata !12, metadata !13, metadata !117, metadata !15, metadata !27, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!118 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !64, metadata !6}
!119 = metadata !{null, metadata !12, metadata !13, metadata !120, metadata !15, metadata !39, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!121 = metadata !{null, metadata !12, metadata !13, metadata !122, metadata !15, metadata !27, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!123 = metadata !{null, metadata !12, metadata !13, metadata !122, metadata !15, metadata !39, metadata !6}
!124 = metadata !{null, metadata !12, metadata !13, metadata !125, metadata !15, metadata !39, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!126 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !127, metadata !6}
!127 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!128 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !129, metadata !6}
!129 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!130 = metadata !{null, metadata !12, metadata !13, metadata !14, metadata !15, metadata !131, metadata !6}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!132 = metadata !{null, metadata !12, metadata !13, metadata !133, metadata !15, metadata !39, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!134 = metadata !{metadata !135, [1 x i32]* @llvm_global_ctors_0}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 31, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"llvm.global_ctors.0", metadata !139, metadata !"", i32 0, i32 31}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 0, i32 1}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 23, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"in_pixel.V", metadata !145, metadata !"uint24", i32 0, i32 23}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 0, i32 0}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 23, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"out_pixel.V", metadata !139, metadata !"uint24", i32 0, i32 23}
