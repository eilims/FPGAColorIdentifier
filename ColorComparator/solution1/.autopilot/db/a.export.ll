; ModuleID = 'C:/Users/Jonathan/Desktop/FPGAColorIdentifier/ColorComparator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getPixelClassificati = internal unnamed_addr constant [30 x i8] c"getPixelClassification_Stream\00"
@p_color_array_stream_s = internal unnamed_addr constant [6 x i17] [i17 -65536, i17 255, i17 65280, i17 -256, i17 -65281, i17 65535]
@p_str7 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str6 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [17 x i8] c"PIXEL_COLOR_LOOP\00", align 1

declare i45 @llvm.part.select.i45(i45, i32, i32) nounwind readnone

declare i42 @llvm.part.select.i42(i42, i32, i32) nounwind readnone

declare i41 @llvm.part.select.i41(i41, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i24 @llvm.part.select.i24(i24, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @getPixelClassification_Stream(i24 %in_pixel_V, i24* %out_pixel_V, i4 %in_switch_V) {
  call void (...)* @_ssdm_op_SpecInterface(i4 %in_switch_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24 %in_pixel_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i24* %out_pixel_V, [5 x i8]* @p_str6, i32 1, i32 1, [5 x i8]* @p_str7, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  br label %rewind_header

_ifconv:                                          ; preds = %rewind_header, %rewind_init
  %in_pixel_V51_phi = phi i24 [ %in_pixel_V_read, %rewind_init ], [ %in_pixel_V51_rewind, %rewind_header ]
  %in_switch_V52_phi = phi i4 [ %in_switch_V_read, %rewind_init ], [ %in_switch_V52_rewind, %rewind_header ]
  %minimumDistanceIndex_3 = zext i2 %minimumDistanceIndex_9 to i3
  %minimumDistanceIndex_4 = zext i2 %minimumDistanceIndex_9 to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_s = zext i2 %minimumDistanceIndex_9 to i64
  %p_color_array_stream_s = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_s
  %p_color_array_stream_1 = load i17* %p_color_array_stream_s, align 4
  %pixelRed_V = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %in_pixel_V51_phi, i32 16, i32 23)
  %pixelGreen_V = trunc i24 %in_pixel_V51_phi to i8
  %pixelBlue_V = call i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24 %in_pixel_V51_phi, i32 8, i32 15)
  %rhs_V = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_1, i32 16)
  %colorGreen_V = trunc i17 %p_color_array_stream_1 to i8
  %colorBlue_V = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_1, i32 8, i32 15)
  %lhs_V_1 = zext i8 %pixelRed_V to i9
  %rhs_V_cast = select i1 %rhs_V, i9 255, i9 0
  %r_V = sub i9 %lhs_V_1, %rhs_V_cast
  %number_assign_cast = sext i9 %r_V to i18
  %result = mul i18 %number_assign_cast, %number_assign_cast
  %result_cast = sext i18 %result to i21
  %tmp_9 = trunc i18 %result to i17
  %p_shl_i1 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %tmp_9, i3 0)
  %p_shl_i1_cast = sext i20 %p_shl_i1 to i21
  %tmp_2_i1 = sub i21 %p_shl_i1_cast, %result_cast
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %tmp_2_i1, i32 20)
  %p_neg_i1 = sub i21 0, %tmp_2_i1
  %tmp_21 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %p_neg_i1, i32 1, i32 20)
  %tmp_10_i1_cast = sext i20 %tmp_21 to i21
  %tmp_11_i1 = sub i21 0, %tmp_10_i1_cast
  %tmp_23 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %tmp_2_i1, i32 1, i32 20)
  %tmp_12_i1_cast = sext i20 %tmp_23 to i21
  %tmp_5 = select i1 %tmp_10, i21 %tmp_11_i1, i21 %tmp_12_i1_cast
  %tmp_25 = call i29 @_ssdm_op_BitConcatenate.i29.i21.i8(i21 %tmp_5, i8 0)
  %p_Val2_s = sext i29 %tmp_25 to i32
  %lhs_V_2 = zext i8 %pixelGreen_V to i9
  %rhs_V_1 = zext i8 %colorGreen_V to i9
  %r_V_1 = sub i9 %lhs_V_2, %rhs_V_1
  %tmp_7 = sext i9 %r_V_1 to i17
  %result_s = mul i17 %tmp_7, %tmp_7
  %tmp_5_i1 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %result_s, i3 0)
  %sext2_cast = sext i20 %tmp_5_i1 to i42
  %mul1 = mul i42 1677722, %sext2_cast
  %tmp_27 = trunc i42 %mul1 to i41
  %neg_mul1 = sub i41 0, %tmp_27
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %result_s, i32 16)
  %tmp_35 = call i18 @_ssdm_op_PartSelect.i18.i41.i32.i32(i41 %neg_mul1, i32 23, i32 40)
  %tmp_8 = sext i18 %tmp_35 to i20
  %tmp_37 = call i19 @_ssdm_op_PartSelect.i19.i42.i32.i32(i42 %mul1, i32 23, i32 41)
  %tmp_11 = sext i19 %tmp_37 to i20
  %tmp_12 = select i1 %tmp_34, i20 %tmp_8, i20 %tmp_11
  %neg_ti1 = sub i20 0, %tmp_12
  %tmp_13 = select i1 %tmp_34, i20 %neg_ti1, i20 %tmp_11
  %tmp_14 = call i28 @_ssdm_op_BitConcatenate.i28.i20.i8(i20 %tmp_13, i8 0)
  %p_Val2_1_cast = sext i28 %tmp_14 to i31
  %lhs_V_3 = zext i8 %pixelBlue_V to i9
  %rhs_V_2 = zext i8 %colorBlue_V to i9
  %r_V_2 = sub i9 %lhs_V_3, %rhs_V_2
  %tmp_15 = sext i9 %r_V_2 to i22
  %p_cast = sext i9 %r_V_2 to i15
  %tmp14 = mul i15 29, %p_cast
  %tmp14_cast = sext i15 %tmp14 to i22
  %tmp_9_i1_tr = mul i22 %tmp14_cast, %tmp_15
  %sext3_cast = sext i22 %tmp_9_i1_tr to i45
  %mul3 = mul i45 6710887, %sext3_cast
  %neg_mul2 = sub i45 0, %mul3
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_9_i1_tr, i32 21)
  %tmp_41 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %neg_mul2, i32 27, i32 44)
  %tmp_16 = sext i18 %tmp_41 to i22
  %tmp_53 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %mul3, i32 27, i32 44)
  %tmp_17 = sext i18 %tmp_53 to i22
  %tmp_20 = select i1 %tmp_39, i22 %tmp_16, i22 %tmp_17
  %neg_ti2 = sub i22 0, %tmp_20
  %tmp_18 = select i1 %tmp_39, i22 %neg_ti2, i22 %tmp_17
  %tmp_22 = call i30 @_ssdm_op_BitConcatenate.i30.i22.i8(i22 %tmp_18, i8 0)
  %p_Val2_2_cast = sext i30 %tmp_22 to i31
  %tmp15 = add i31 %p_Val2_1_cast, %p_Val2_2_cast
  %tmp15_cast = sext i31 %tmp15 to i32
  %powerSummation_V = add i32 %tmp15_cast, %p_Val2_s
  %result_V_1 = call fastcc i20 @fxp_sqrt(i32 %powerSummation_V)
  %tmp_19 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_1, i32 8, i32 19)
  %tmp_14_i1 = zext i12 %tmp_19 to i32
  %tmp_2 = icmp slt i32 %tmp_14_i1, %minimumDistance
  %tmp_4 = icmp ult i12 %tmp_19, 315
  %minimumDistanceIndex_1 = select i1 %tmp_4, i32 %minimumDistanceIndex_4, i32 %minimumDistanceIndex
  %minimumDistance_1 = select i1 %tmp_4, i32 %tmp_14_i1, i32 %minimumDistance
  %minimumDistanceIndex_2 = select i1 %tmp_2, i32 %minimumDistanceIndex_1, i32 %minimumDistanceIndex
  %minimumDistance_2 = select i1 %tmp_2, i32 %minimumDistance_1, i32 %minimumDistance
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str, i32 %tmp_1)
  %i = add i3 1, %minimumDistanceIndex_3
  %i_cast = zext i3 %i to i32
  %tmp_1_1 = zext i3 %i to i64
  %p_color_array_stream_2 = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_1_1
  %p_color_array_stream_3 = load i17* %p_color_array_stream_2, align 4
  %rhs_V_4 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_3, i32 16)
  %colorGreen_V_1 = trunc i17 %p_color_array_stream_3 to i8
  %colorBlue_V_1 = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_3, i32 8, i32 15)
  %rhs_V_4_cast = select i1 %rhs_V_4, i9 255, i9 0
  %r_V_3 = sub i9 %lhs_V_1, %rhs_V_4_cast
  %number_assign_3_cast = sext i9 %r_V_3 to i18
  %result_1 = mul i18 %number_assign_3_cast, %number_assign_3_cast
  %result_3_cast = sext i18 %result_1 to i21
  %tmp_65 = trunc i18 %result_1 to i17
  %p_shl_i = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %tmp_65, i3 0)
  %p_shl_i_cast = sext i20 %p_shl_i to i21
  %tmp_2_i = sub i21 %p_shl_i_cast, %result_3_cast
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %tmp_2_i, i32 20)
  %p_neg_i = sub i21 0, %tmp_2_i
  %tmp_67 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %p_neg_i, i32 1, i32 20)
  %tmp_10_i_cast = sext i20 %tmp_67 to i21
  %tmp_11_i = sub i21 0, %tmp_10_i_cast
  %tmp_68 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %tmp_2_i, i32 1, i32 20)
  %tmp_12_i_cast = sext i20 %tmp_68 to i21
  %tmp_24 = select i1 %tmp_66, i21 %tmp_11_i, i21 %tmp_12_i_cast
  %tmp_69 = call i29 @_ssdm_op_BitConcatenate.i29.i21.i8(i21 %tmp_24, i8 0)
  %p_Val2_1 = sext i29 %tmp_69 to i32
  %rhs_V_5 = zext i8 %colorGreen_V_1 to i9
  %r_V_4 = sub i9 %lhs_V_2, %rhs_V_5
  %tmp_26 = sext i9 %r_V_4 to i17
  %result_3 = mul i17 %tmp_26, %tmp_26
  %tmp_5_i = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %result_3, i3 0)
  %sext4_cast = sext i20 %tmp_5_i to i42
  %mul4 = mul i42 1677722, %sext4_cast
  %tmp_70 = trunc i42 %mul4 to i41
  %neg_mul4 = sub i41 0, %tmp_70
  %tmp_71 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %result_3, i32 16)
  %tmp_72 = call i18 @_ssdm_op_PartSelect.i18.i41.i32.i32(i41 %neg_mul4, i32 23, i32 40)
  %tmp_28 = sext i18 %tmp_72 to i20
  %tmp_73 = call i19 @_ssdm_op_PartSelect.i19.i42.i32.i32(i42 %mul4, i32 23, i32 41)
  %tmp_29 = sext i19 %tmp_73 to i20
  %tmp_36 = select i1 %tmp_71, i20 %tmp_28, i20 %tmp_29
  %neg_ti3 = sub i20 0, %tmp_36
  %tmp_30 = select i1 %tmp_71, i20 %neg_ti3, i20 %tmp_29
  %tmp_38 = call i28 @_ssdm_op_BitConcatenate.i28.i20.i8(i20 %tmp_30, i8 0)
  %p_Val2_4_cast = sext i28 %tmp_38 to i31
  %rhs_V_6 = zext i8 %colorBlue_V_1 to i9
  %r_V_5 = sub i9 %lhs_V_3, %rhs_V_6
  %tmp_31 = sext i9 %r_V_5 to i22
  %p_cast1 = sext i9 %r_V_5 to i15
  %tmp16 = mul i15 29, %p_cast1
  %tmp16_cast = sext i15 %tmp16 to i22
  %tmp_9_i_tr = mul i22 %tmp16_cast, %tmp_31
  %sext9_cast = sext i22 %tmp_9_i_tr to i45
  %mul5 = mul i45 6710887, %sext9_cast
  %neg_mul5 = sub i45 0, %mul5
  %tmp_74 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_9_i_tr, i32 21)
  %tmp_75 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %neg_mul5, i32 27, i32 44)
  %tmp_40 = sext i18 %tmp_75 to i22
  %tmp_76 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %mul5, i32 27, i32 44)
  %tmp_43 = sext i18 %tmp_76 to i22
  %tmp_48 = select i1 %tmp_74, i22 %tmp_40, i22 %tmp_43
  %neg_ti4 = sub i22 0, %tmp_48
  %tmp_32 = select i1 %tmp_74, i22 %neg_ti4, i22 %tmp_43
  %tmp_49 = call i30 @_ssdm_op_BitConcatenate.i30.i22.i8(i22 %tmp_32, i8 0)
  %p_Val2_5_cast = sext i30 %tmp_49 to i31
  %tmp17 = add i31 %p_Val2_4_cast, %p_Val2_5_cast
  %tmp17_cast = sext i31 %tmp17 to i32
  %powerSummation_V_1 = add i32 %tmp17_cast, %p_Val2_1
  %result_V = call fastcc i20 @fxp_sqrt(i32 %powerSummation_V_1)
  %tmp_33 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V, i32 8, i32 19)
  %tmp_14_i = zext i12 %tmp_33 to i32
  %tmp_2_1 = icmp slt i32 %tmp_14_i, %minimumDistance_2
  %tmp_4_1 = icmp ult i12 %tmp_33, 315
  %minimumDistanceIndex_5 = select i1 %tmp_4_1, i32 %i_cast, i32 %minimumDistanceIndex_2
  %minimumDistance_1_1 = select i1 %tmp_4_1, i32 %tmp_14_i, i32 %minimumDistance_2
  %minimumDistanceIndex_6 = select i1 %tmp_2_1, i32 %minimumDistanceIndex_5, i32 %minimumDistanceIndex_2
  %minimumDistance_2_1 = select i1 %tmp_2_1, i32 %minimumDistance_1_1, i32 %minimumDistance_2
  %i_1 = add i3 2, %minimumDistanceIndex_3
  %i_1_cast = zext i3 %i_1 to i32
  %tmp_1_2 = zext i3 %i_1 to i64
  %p_color_array_stream_4 = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_1_2
  %p_color_array_stream_5 = load i17* %p_color_array_stream_4, align 4
  %rhs_V_7 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_stream_5, i32 16)
  %colorGreen_V_2 = trunc i17 %p_color_array_stream_5 to i8
  %colorBlue_V_2 = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_stream_5, i32 8, i32 15)
  %rhs_V_7_cast = select i1 %rhs_V_7, i9 255, i9 0
  %r_V_6 = sub i9 %lhs_V_1, %rhs_V_7_cast
  %number_assign_6_cast = sext i9 %r_V_6 to i18
  %result_2 = mul i18 %number_assign_6_cast, %number_assign_6_cast
  %result_6_cast = sext i18 %result_2 to i21
  %tmp_79 = trunc i18 %result_2 to i17
  %p_shl_i2 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %tmp_79, i3 0)
  %p_shl_i2_cast = sext i20 %p_shl_i2 to i21
  %tmp_2_i2 = sub i21 %p_shl_i2_cast, %result_6_cast
  %tmp_80 = call i1 @_ssdm_op_BitSelect.i1.i21.i32(i21 %tmp_2_i2, i32 20)
  %p_neg_i2 = sub i21 0, %tmp_2_i2
  %tmp_81 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %p_neg_i2, i32 1, i32 20)
  %tmp_10_i2_cast = sext i20 %tmp_81 to i21
  %tmp_11_i2 = sub i21 0, %tmp_10_i2_cast
  %tmp_82 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %tmp_2_i2, i32 1, i32 20)
  %tmp_12_i2_cast = sext i20 %tmp_82 to i21
  %tmp_50 = select i1 %tmp_80, i21 %tmp_11_i2, i21 %tmp_12_i2_cast
  %tmp_83 = call i29 @_ssdm_op_BitConcatenate.i29.i21.i8(i21 %tmp_50, i8 0)
  %p_Val2_2 = sext i29 %tmp_83 to i32
  %rhs_V_8 = zext i8 %colorGreen_V_2 to i9
  %r_V_7 = sub i9 %lhs_V_2, %rhs_V_8
  %tmp_42 = sext i9 %r_V_7 to i17
  %result_6 = mul i17 %tmp_42, %tmp_42
  %tmp_5_i2 = call i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17 %result_6, i3 0)
  %sext1_cast = sext i20 %tmp_5_i2 to i42
  %mul2 = mul i42 1677722, %sext1_cast
  %tmp_84 = trunc i42 %mul2 to i41
  %neg_mul3 = sub i41 0, %tmp_84
  %tmp_85 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %result_6, i32 16)
  %tmp_86 = call i18 @_ssdm_op_PartSelect.i18.i41.i32.i32(i41 %neg_mul3, i32 23, i32 40)
  %tmp_51 = sext i18 %tmp_86 to i20
  %tmp_87 = call i19 @_ssdm_op_PartSelect.i19.i42.i32.i32(i42 %mul2, i32 23, i32 41)
  %tmp_52 = sext i19 %tmp_87 to i20
  %tmp_54 = select i1 %tmp_85, i20 %tmp_51, i20 %tmp_52
  %neg_ti8 = sub i20 0, %tmp_54
  %tmp_44 = select i1 %tmp_85, i20 %neg_ti8, i20 %tmp_52
  %tmp_55 = call i28 @_ssdm_op_BitConcatenate.i28.i20.i8(i20 %tmp_44, i8 0)
  %p_Val2_6_cast = sext i28 %tmp_55 to i31
  %rhs_V_9 = zext i8 %colorBlue_V_2 to i9
  %r_V_8 = sub i9 %lhs_V_3, %rhs_V_9
  %tmp_45 = sext i9 %r_V_8 to i22
  %p_cast2 = sext i9 %r_V_8 to i15
  %tmp18 = mul i15 29, %p_cast2
  %tmp18_cast = sext i15 %tmp18 to i22
  %tmp_9_i2_tr = mul i22 %tmp18_cast, %tmp_45
  %sext_cast = sext i22 %tmp_9_i2_tr to i45
  %mul = mul i45 6710887, %sext_cast
  %neg_mul = sub i45 0, %mul
  %tmp_88 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_9_i2_tr, i32 21)
  %tmp_89 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %neg_mul, i32 27, i32 44)
  %tmp_56 = sext i18 %tmp_89 to i22
  %tmp_90 = call i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45 %mul, i32 27, i32 44)
  %tmp_57 = sext i18 %tmp_90 to i22
  %tmp_58 = select i1 %tmp_88, i22 %tmp_56, i22 %tmp_57
  %neg_ti = sub i22 0, %tmp_58
  %tmp_46 = select i1 %tmp_88, i22 %neg_ti, i22 %tmp_57
  %tmp_59 = call i30 @_ssdm_op_BitConcatenate.i30.i22.i8(i22 %tmp_46, i8 0)
  %p_Val2_7_cast = sext i30 %tmp_59 to i31
  %tmp19 = add i31 %p_Val2_6_cast, %p_Val2_7_cast
  %tmp19_cast = sext i31 %tmp19 to i32
  %powerSummation_V_2 = add i32 %tmp19_cast, %p_Val2_2
  %result_V_2 = call fastcc i20 @fxp_sqrt(i32 %powerSummation_V_2)
  %tmp_47 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_2, i32 8, i32 19)
  %tmp_14_i2 = zext i12 %tmp_47 to i32
  %tmp_2_2 = icmp slt i32 %tmp_14_i2, %minimumDistance_2_1
  %tmp_4_2 = icmp ult i12 %tmp_47, 315
  %minimumDistanceIndex_7 = select i1 %tmp_4_2, i32 %i_1_cast, i32 %minimumDistanceIndex_6
  %minimumDistance_1_2 = select i1 %tmp_4_2, i32 %tmp_14_i2, i32 %minimumDistance_2_1
  %minimumDistanceIndex_8 = select i1 %tmp_2_2, i32 %minimumDistanceIndex_7, i32 %minimumDistanceIndex_6
  %minimumDistance_2_2 = select i1 %tmp_2_2, i32 %minimumDistance_1_2, i32 %minimumDistance_2_1
  %i_2 = add i3 3, %minimumDistanceIndex_3
  %tmp_91 = trunc i3 %i_2 to i2
  %exitcond = icmp eq i3 %i_2, -2
  br i1 %exitcond, label %_ifconv10, label %rewind_header

_ifconv10:                                        ; preds = %_ifconv
  %tmp = icmp slt i32 %minimumDistanceIndex_8, 5
  %rhs_V_3 = add nsw i32 %minimumDistanceIndex_8, 1
  %lhs_V = zext i4 %in_switch_V52_phi to i32
  %tmp_3 = icmp eq i32 %lhs_V, %rhs_V_3
  %tmp_6 = sext i32 %minimumDistanceIndex_8 to i64
  %p_color_array_stream_6 = getelementptr [6 x i17]* @p_color_array_stream_s, i64 0, i64 %tmp_6
  %p_color_array_stream_7 = load i17* %p_color_array_stream_6, align 4
  %p_color_array_stream_8 = sext i17 %p_color_array_stream_7 to i24
  %sel_tmp = and i1 %tmp, %tmp_3
  %sel_tmp1 = select i1 %sel_tmp, i24 %p_color_array_stream_8, i24 %in_pixel_V51_phi
  %storemerge1 = select i1 %tmp, i24 %sel_tmp1, i24 %in_pixel_V51_phi
  call void @_ssdm_op_Write.axis.i24P(i24* %out_pixel_V, i24 %storemerge1)
  call void (...)* @_ssdm_op_Return()
  br label %rewind_header

rewind_init:                                      ; preds = %rewind_header
  call void (...)* @_ssdm_op_SpecBitsMap(i24 %in_pixel_V), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i24* %out_pixel_V), !map !153
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %in_switch_V), !map !157
  call void (...)* @_ssdm_op_SpecTopModule([30 x i8]* @getPixelClassificati) nounwind
  %in_switch_V_read = call i4 @_ssdm_op_Read.ap_none.i4(i4 %in_switch_V)
  %in_pixel_V_read = call i24 @_ssdm_op_Read.axis.i24(i24 %in_pixel_V)
  br label %_ifconv

rewind_header:                                    ; preds = %_ifconv10, %_ifconv, %0
  %do_init = phi i1 [ true, %0 ], [ false, %_ifconv ], [ true, %_ifconv10 ]
  %in_pixel_V51_rewind = phi i24 [ undef, %0 ], [ %in_pixel_V51_phi, %_ifconv ], [ undef, %_ifconv10 ]
  %in_switch_V52_rewind = phi i4 [ undef, %0 ], [ %in_switch_V52_phi, %_ifconv ], [ undef, %_ifconv10 ]
  %minimumDistance = phi i32 [ 2147483647, %0 ], [ %minimumDistance_2_2, %_ifconv ], [ 2147483647, %_ifconv10 ]
  %minimumDistanceIndex = phi i32 [ 7, %0 ], [ %minimumDistanceIndex_8, %_ifconv ], [ 7, %_ifconv10 ]
  %minimumDistanceIndex_9 = phi i2 [ 0, %0 ], [ %tmp_91, %_ifconv ], [ 0, %_ifconv10 ]
  br i1 %do_init, label %rewind_init, label %_ifconv
}

define internal fastcc i20 @fxp_sqrt(i32 %in_val_V_read) readnone {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %in_val_V_read)
  %tmp = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %in_val_V_read_1, i32 11, i32 31)
  %tmp_cast = zext i21 %tmp to i22
  %tmp_1 = add i22 %tmp_cast, 1
  %tmp_s = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_1, i32 1, i32 21)
  %tmp_2 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_s, i1 false)
  %p_0353_1 = xor i22 %tmp_2, -2097152
  %tmp_92 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_1, i32 21)
  %tmp_19_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_92, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_19_1, 3145728
  %q_V_1_1 = select i1 %tmp_92, i3 -2, i3 2
  %tmp_94 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_96 = shl i23 %p_0353_1_1, 1
  %tmp_98 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_3 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_98, i22 0)
  %tmp_4 = add i23 %tmp_3, -1572864
  %s_V_1_2 = sub i23 %tmp_96, %tmp_4
  %tmp1 = add i23 %tmp_96, -2621440
  %s_V_2_2 = add i23 %tmp_3, %tmp1
  %p_0305_1_in_in_2 = select i1 %tmp_94, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_94, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_100 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_102 = shl i23 %p_0353_1_2, 1
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_25_3 = or i23 %r_V_4_3, 262144
  %s_V_1_3 = sub i23 %tmp_102, %tmp_25_3
  %r_V_6_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_28_3 = or i23 %r_V_6_3, 786432
  %s_V_2_3 = add i23 %tmp_102, %tmp_28_3
  %p_0353_1_3 = select i1 %tmp_100, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_60 = select i1 %tmp_100, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_60, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_103 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_104 = shl i23 %p_0353_1_3, 1
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_25_4 = or i23 %r_V_4_4, 131072
  %s_V_1_4 = sub i23 %tmp_104, %tmp_25_4
  %r_V_6_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_60, i20 0)
  %tmp_28_4 = or i23 %r_V_6_4, 393216
  %s_V_2_4 = add i23 %tmp_104, %tmp_28_4
  %p_0353_1_4 = select i1 %tmp_103, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_61 = select i1 %tmp_103, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_61, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_105 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_109 = shl i23 %p_0353_1_4, 1
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_25_5 = or i23 %r_V_4_5, 65536
  %s_V_1_5 = sub i23 %tmp_109, %tmp_25_5
  %r_V_6_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_61, i19 0)
  %tmp_28_5 = or i23 %r_V_6_5, 196608
  %s_V_2_5 = add i23 %tmp_109, %tmp_28_5
  %p_0353_1_5 = select i1 %tmp_105, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_62 = select i1 %tmp_105, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_62, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_110 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_111 = shl i23 %p_0353_1_5, 1
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_25_6 = or i23 %r_V_4_6, 32768
  %s_V_1_6 = sub i23 %tmp_111, %tmp_25_6
  %r_V_6_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_62, i18 0)
  %tmp_28_6 = or i23 %r_V_6_6, 98304
  %s_V_2_6 = add i23 %tmp_111, %tmp_28_6
  %p_0353_1_6 = select i1 %tmp_110, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_63 = select i1 %tmp_110, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_63, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_112 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_113 = shl i23 %p_0353_1_6, 1
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_25_7 = or i23 %r_V_4_7, 16384
  %s_V_1_7 = sub i23 %tmp_113, %tmp_25_7
  %r_V_6_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_63, i17 0)
  %tmp_28_7 = or i23 %r_V_6_7, 49152
  %s_V_2_7 = add i23 %tmp_113, %tmp_28_7
  %p_0353_1_7 = select i1 %tmp_112, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_64 = select i1 %tmp_112, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_64, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_114 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_115 = shl i23 %p_0353_1_7, 1
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_25_8 = or i23 %r_V_4_8, 8192
  %s_V_1_8 = sub i23 %tmp_115, %tmp_25_8
  %r_V_6_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_64, i16 0)
  %tmp_28_8 = or i23 %r_V_6_8, 24576
  %s_V_2_8 = add i23 %tmp_115, %tmp_28_8
  %p_0353_1_8 = select i1 %tmp_114, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_65 = select i1 %tmp_114, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_65, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_116 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_117 = shl i23 %p_0353_1_8, 1
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_25_9 = or i23 %r_V_4_9, 4096
  %s_V_1_9 = sub i23 %tmp_117, %tmp_25_9
  %r_V_6_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_65, i15 0)
  %tmp_28_9 = or i23 %r_V_6_9, 12288
  %s_V_2_9 = add i23 %tmp_117, %tmp_28_9
  %p_0353_1_9 = select i1 %tmp_116, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_66 = select i1 %tmp_116, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_66, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_118 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_119 = shl i23 %p_0353_1_9, 1
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_25_s = or i23 %r_V_4_s, 2048
  %s_V_1_s = sub i23 %tmp_119, %tmp_25_s
  %r_V_6_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_66, i14 0)
  %tmp_28_s = or i23 %r_V_6_s, 6144
  %s_V_2_s = add i23 %tmp_119, %tmp_28_s
  %p_0353_1_s = select i1 %tmp_118, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_67 = select i1 %tmp_118, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_67, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_120 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_121 = shl i23 %p_0353_1_s, 1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_25_1 = or i23 %r_V_4_1, 1024
  %s_V_1_1 = sub i23 %tmp_121, %tmp_25_1
  %r_V_6_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_67, i13 0)
  %tmp_28_1 = or i23 %r_V_6_1, 3072
  %s_V_2_1 = add i23 %tmp_121, %tmp_28_1
  %p_0353_1_10 = select i1 %tmp_120, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_68 = select i1 %tmp_120, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_68, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_122 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_123 = shl i23 %p_0353_1_10, 1
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_25_2 = or i23 %r_V_4_2, 512
  %s_V_1_10 = sub i23 %tmp_123, %tmp_25_2
  %r_V_6_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_68, i12 0)
  %tmp_28_2 = or i23 %r_V_6_2, 1536
  %s_V_2_10 = add i23 %tmp_123, %tmp_28_2
  %p_0353_1_11 = select i1 %tmp_122, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_69 = select i1 %tmp_122, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_69, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_124 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_125 = shl i23 %p_0353_1_11, 1
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_25_10 = or i23 %r_V_3_s, 256
  %s_V_1_11 = sub i23 %tmp_125, %tmp_25_10
  %r_V_5_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_69, i11 0)
  %tmp_28_10 = or i23 %r_V_5_s, 768
  %s_V_2_11 = add i23 %tmp_125, %tmp_28_10
  %p_0353_1_12 = select i1 %tmp_124, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_70 = select i1 %tmp_124, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_70, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_126 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_127 = shl i23 %p_0353_1_12, 1
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_25_11 = or i23 %r_V_3_1, 128
  %s_V_1_12 = sub i23 %tmp_127, %tmp_25_11
  %r_V_5_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_70, i10 0)
  %tmp_28_11 = or i23 %r_V_5_1, 384
  %s_V_2_12 = add i23 %tmp_127, %tmp_28_11
  %p_0353_1_13 = select i1 %tmp_126, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_71 = select i1 %tmp_126, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_71, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_128 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_129 = shl i23 %p_0353_1_13, 1
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_25_12 = or i23 %r_V_3_2, 64
  %s_V_1_13 = sub i23 %tmp_129, %tmp_25_12
  %r_V_5_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_71, i9 0)
  %tmp_28_12 = or i23 %r_V_5_2, 192
  %s_V_2_13 = add i23 %tmp_129, %tmp_28_12
  %p_0353_1_14 = select i1 %tmp_128, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_72 = select i1 %tmp_128, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_72, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_130 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_131 = shl i23 %p_0353_1_14, 1
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_25_13 = or i23 %r_V_3_3, 32
  %s_V_1_14 = sub i23 %tmp_131, %tmp_25_13
  %r_V_5_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_72, i8 0)
  %tmp_28_13 = or i23 %r_V_5_3, 96
  %s_V_2_14 = add i23 %tmp_131, %tmp_28_13
  %p_0353_1_15 = select i1 %tmp_130, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_73 = select i1 %tmp_130, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_73, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_132 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_133 = shl i23 %p_0353_1_15, 1
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_25_14 = or i23 %r_V_3_4, 16
  %s_V_1_15 = sub i23 %tmp_133, %tmp_25_14
  %r_V_5_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_73, i7 0)
  %tmp_28_14 = or i23 %r_V_5_4, 48
  %s_V_2_15 = add i23 %tmp_133, %tmp_28_14
  %p_0353_1_16 = select i1 %tmp_132, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_74 = select i1 %tmp_132, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_74, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_134 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_135 = shl i23 %p_0353_1_16, 1
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_25_15 = or i23 %r_V_3_5, 8
  %s_V_1_16 = sub i23 %tmp_135, %tmp_25_15
  %r_V_5_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_74, i6 0)
  %tmp_28_15 = or i23 %r_V_5_5, 24
  %s_V_2_16 = add i23 %tmp_135, %tmp_28_15
  %p_0353_1_17 = select i1 %tmp_134, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_75 = select i1 %tmp_134, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_75, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_136 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_137 = shl i23 %p_0353_1_17, 1
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_25_16 = or i23 %r_V_3_6, 4
  %s_V_1_17 = sub i23 %tmp_137, %tmp_25_16
  %r_V_5_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_75, i5 0)
  %tmp_28_16 = or i23 %r_V_5_6, 12
  %s_V_2_17 = add i23 %tmp_137, %tmp_28_16
  %p_0353_1_18 = select i1 %tmp_136, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_76 = select i1 %tmp_136, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_76, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_138 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_139 = shl i23 %p_0353_1_18, 1
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_25_17 = or i23 %r_V_3_7, 2
  %s_V_1_18 = sub i23 %tmp_139, %tmp_25_17
  %r_V_5_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_76, i4 0)
  %tmp_28_17 = or i23 %r_V_5_7, 6
  %s_V_2_18 = add i23 %tmp_139, %tmp_28_17
  %p_0353_1_19 = select i1 %tmp_138, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_77 = select i1 %tmp_138, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_77, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_140 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_141 = shl i23 %p_0353_1_19, 1
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_4_10 = or i23 %r_V_3_8, 1
  %s_V_1_19 = sub i23 %tmp_141, %r_V_4_10
  %r_V_5_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_77, i3 0)
  %r_V_6_10 = or i23 %r_V_5_8, 3
  %s_V_2_19 = add i23 %tmp_141, %r_V_6_10
  %p_0353_1_20 = select i1 %tmp_140, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_142 = trunc i21 %q_V_1_19 to i20
  %tmp_143 = shl i20 %tmp_77, 1
  %tmp_78 = select i1 %tmp_140, i20 %tmp_143, i20 %tmp_142
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_78, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_7 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_79 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_80 = select i1 %tmp_7, i20 %tmp_79, i20 %tmp_78
  ret i20 %tmp_80
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

define weak i4 @_ssdm_op_Read.ap_none.i4(i4) {
entry:
  ret i4 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i24.i32.i32(i24, i32, i32) nounwind readnone {
entry:
  %empty = call i24 @llvm.part.select.i24(i24 %0, i32 %1, i32 %2)
  %empty_21 = trunc i24 %empty to i8
  ret i8 %empty_21
}

define weak i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_22 = trunc i17 %empty to i8
  ret i8 %empty_22
}

declare i41 @_ssdm_op_PartSelect.i41.i42.i32.i32(i42, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i21
  ret i21 %empty_23
}

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_24 = trunc i22 %empty to i21
  ret i21 %empty_24
}

define weak i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_25 = trunc i21 %empty to i20
  ret i20 %empty_25
}

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i42.i32.i32(i42, i32, i32) nounwind readnone {
entry:
  %empty = call i42 @llvm.part.select.i42(i42 %0, i32 %1, i32 %2)
  %empty_26 = trunc i42 %empty to i19
  ret i19 %empty_26
}

declare i19 @_ssdm_op_PartSelect.i19.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i18 @_ssdm_op_PartSelect.i18.i45.i32.i32(i45, i32, i32) nounwind readnone {
entry:
  %empty = call i45 @llvm.part.select.i45(i45 %0, i32 %1, i32 %2)
  %empty_27 = trunc i45 %empty to i18
  ret i18 %empty_27
}

define weak i18 @_ssdm_op_PartSelect.i18.i41.i32.i32(i41, i32, i32) nounwind readnone {
entry:
  %empty = call i41 @llvm.part.select.i41(i41 %0, i32 %1, i32 %2)
  %empty_28 = trunc i41 %empty to i18
  ret i18 %empty_28
}

declare i17 @_ssdm_op_PartSelect.i17.i18.i32.i32(i18, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_29 = trunc i20 %empty to i12
  ret i12 %empty_29
}

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_30 = shl i23 1, %empty
  %empty_31 = and i23 %0, %empty_30
  %empty_32 = icmp ne i23 %empty_31, 0
  ret i1 %empty_32
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_33 = shl i22 1, %empty
  %empty_34 = and i22 %0, %empty_33
  %empty_35 = icmp ne i22 %empty_34, 0
  ret i1 %empty_35
}

define weak i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i21
  %empty_36 = shl i21 1, %empty
  %empty_37 = and i21 %0, %empty_36
  %empty_38 = icmp ne i21 %empty_37, 0
  ret i1 %empty_38
}

define weak i1 @_ssdm_op_BitSelect.i1.i20.i32(i20, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i20
  %empty_39 = shl i20 1, %empty
  %empty_40 = and i20 %0, %empty_39
  %empty_41 = icmp ne i20 %empty_40, 0
  ret i1 %empty_41
}

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_42 = shl i17 1, %empty
  %empty_43 = and i17 %0, %empty_42
  %empty_44 = icmp ne i17 %empty_43, 0
  ret i1 %empty_44
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_45 = zext i1 %1 to i9
  %empty_46 = shl i9 %empty, 1
  %empty_47 = or i9 %empty_46, %empty_45
  ret i9 %empty_47
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_48 = zext i1 %1 to i8
  %empty_49 = shl i8 %empty, 1
  %empty_50 = or i8 %empty_49, %empty_48
  ret i8 %empty_50
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_51 = zext i1 %1 to i7
  %empty_52 = shl i7 %empty, 1
  %empty_53 = or i7 %empty_52, %empty_51
  ret i7 %empty_53
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_54 = zext i1 %1 to i6
  %empty_55 = shl i6 %empty, 1
  %empty_56 = or i6 %empty_55, %empty_54
  ret i6 %empty_56
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_57 = zext i1 %1 to i5
  %empty_58 = shl i5 %empty, 1
  %empty_59 = or i5 %empty_58, %empty_57
  ret i5 %empty_59
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_60 = zext i1 %1 to i4
  %empty_61 = shl i4 %empty, 1
  %empty_62 = or i4 %empty_61, %empty_60
  ret i4 %empty_62
}

define weak i30 @_ssdm_op_BitConcatenate.i30.i22.i8(i22, i8) nounwind readnone {
entry:
  %empty = zext i22 %0 to i30
  %empty_63 = zext i8 %1 to i30
  %empty_64 = shl i30 %empty, 8
  %empty_65 = or i30 %empty_64, %empty_63
  ret i30 %empty_65
}

define weak i29 @_ssdm_op_BitConcatenate.i29.i21.i8(i21, i8) nounwind readnone {
entry:
  %empty = zext i21 %0 to i29
  %empty_66 = zext i8 %1 to i29
  %empty_67 = shl i29 %empty, 8
  %empty_68 = or i29 %empty_67, %empty_66
  ret i29 %empty_68
}

define weak i28 @_ssdm_op_BitConcatenate.i28.i20.i8(i20, i8) nounwind readnone {
entry:
  %empty = zext i20 %0 to i28
  %empty_69 = zext i8 %1 to i28
  %empty_70 = shl i28 %empty, 8
  %empty_71 = or i28 %empty_70, %empty_69
  ret i28 %empty_71
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_72 = zext i14 %1 to i23
  %empty_73 = shl i23 %empty, 14
  %empty_74 = or i23 %empty_73, %empty_72
  ret i23 %empty_74
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8, i15) nounwind readnone {
entry:
  %empty = zext i8 %0 to i23
  %empty_75 = zext i15 %1 to i23
  %empty_76 = shl i23 %empty, 15
  %empty_77 = or i23 %empty_76, %empty_75
  ret i23 %empty_77
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7, i16) nounwind readnone {
entry:
  %empty = zext i7 %0 to i23
  %empty_78 = zext i16 %1 to i23
  %empty_79 = shl i23 %empty, 16
  %empty_80 = or i23 %empty_79, %empty_78
  ret i23 %empty_80
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6, i17) nounwind readnone {
entry:
  %empty = zext i6 %0 to i23
  %empty_81 = zext i17 %1 to i23
  %empty_82 = shl i23 %empty, 17
  %empty_83 = or i23 %empty_82, %empty_81
  ret i23 %empty_83
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5, i18) nounwind readnone {
entry:
  %empty = zext i5 %0 to i23
  %empty_84 = zext i18 %1 to i23
  %empty_85 = shl i23 %empty, 18
  %empty_86 = or i23 %empty_85, %empty_84
  ret i23 %empty_86
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4, i19) nounwind readnone {
entry:
  %empty = zext i4 %0 to i23
  %empty_87 = zext i19 %1 to i23
  %empty_88 = shl i23 %empty, 19
  %empty_89 = or i23 %empty_88, %empty_87
  ret i23 %empty_89
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3, i20) nounwind readnone {
entry:
  %empty = zext i3 %0 to i23
  %empty_90 = zext i20 %1 to i23
  %empty_91 = shl i23 %empty, 20
  %empty_92 = or i23 %empty_91, %empty_90
  ret i23 %empty_92
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23
  %empty_93 = zext i1 %1 to i23
  %empty_94 = shl i23 %empty, 1
  %empty_95 = or i23 %empty_94, %empty_93
  ret i23 %empty_95
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_96 = zext i2 %1 to i23
  %empty_97 = shl i23 %empty, 2
  %empty_98 = or i23 %empty_97, %empty_96
  ret i23 %empty_98
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20, i3) nounwind readnone {
entry:
  %empty = zext i20 %0 to i23
  %empty_99 = zext i3 %1 to i23
  %empty_100 = shl i23 %empty, 3
  %empty_101 = or i23 %empty_100, %empty_99
  ret i23 %empty_101
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19, i4) nounwind readnone {
entry:
  %empty = zext i19 %0 to i23
  %empty_102 = zext i4 %1 to i23
  %empty_103 = shl i23 %empty, 4
  %empty_104 = or i23 %empty_103, %empty_102
  ret i23 %empty_104
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18, i5) nounwind readnone {
entry:
  %empty = zext i18 %0 to i23
  %empty_105 = zext i5 %1 to i23
  %empty_106 = shl i23 %empty, 5
  %empty_107 = or i23 %empty_106, %empty_105
  ret i23 %empty_107
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17, i6) nounwind readnone {
entry:
  %empty = zext i17 %0 to i23
  %empty_108 = zext i6 %1 to i23
  %empty_109 = shl i23 %empty, 6
  %empty_110 = or i23 %empty_109, %empty_108
  ret i23 %empty_110
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16, i7) nounwind readnone {
entry:
  %empty = zext i16 %0 to i23
  %empty_111 = zext i7 %1 to i23
  %empty_112 = shl i23 %empty, 7
  %empty_113 = or i23 %empty_112, %empty_111
  ret i23 %empty_113
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_114 = zext i8 %1 to i23
  %empty_115 = shl i23 %empty, 8
  %empty_116 = or i23 %empty_115, %empty_114
  ret i23 %empty_116
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14, i9) nounwind readnone {
entry:
  %empty = zext i14 %0 to i23
  %empty_117 = zext i9 %1 to i23
  %empty_118 = shl i23 %empty, 9
  %empty_119 = or i23 %empty_118, %empty_117
  ret i23 %empty_119
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_120 = zext i10 %1 to i23
  %empty_121 = shl i23 %empty, 10
  %empty_122 = or i23 %empty_121, %empty_120
  ret i23 %empty_122
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12, i11) nounwind readnone {
entry:
  %empty = zext i12 %0 to i23
  %empty_123 = zext i11 %1 to i23
  %empty_124 = shl i23 %empty, 11
  %empty_125 = or i23 %empty_124, %empty_123
  ret i23 %empty_125
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11, i12) nounwind readnone {
entry:
  %empty = zext i11 %0 to i23
  %empty_126 = zext i12 %1 to i23
  %empty_127 = shl i23 %empty, 12
  %empty_128 = or i23 %empty_127, %empty_126
  ret i23 %empty_128
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10, i13) nounwind readnone {
entry:
  %empty = zext i10 %0 to i23
  %empty_129 = zext i13 %1 to i23
  %empty_130 = shl i23 %empty, 13
  %empty_131 = or i23 %empty_130, %empty_129
  ret i23 %empty_131
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1, i22) nounwind readnone {
entry:
  %empty = zext i1 %0 to i23
  %empty_132 = zext i22 %1 to i23
  %empty_133 = shl i23 %empty, 22
  %empty_134 = or i23 %empty_133, %empty_132
  ret i23 %empty_134
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_135 = zext i1 %1 to i22
  %empty_136 = shl i22 %empty, 1
  %empty_137 = or i22 %empty_136, %empty_135
  ret i22 %empty_137
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_138 = zext i1 %1 to i21
  %empty_139 = shl i21 %empty, 1
  %empty_140 = or i21 %empty_139, %empty_138
  ret i21 %empty_140
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_141 = zext i1 %1 to i20
  %empty_142 = shl i20 %empty, 1
  %empty_143 = or i20 %empty_142, %empty_141
  ret i20 %empty_143
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i17.i3(i17, i3) nounwind readnone {
entry:
  %empty = zext i17 %0 to i20
  %empty_144 = zext i3 %1 to i20
  %empty_145 = shl i20 %empty, 3
  %empty_146 = or i20 %empty_145, %empty_144
  ret i20 %empty_146
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18, i1) nounwind readnone {
entry:
  %empty = zext i18 %0 to i19
  %empty_147 = zext i1 %1 to i19
  %empty_148 = shl i19 %empty, 1
  %empty_149 = or i19 %empty_148, %empty_147
  ret i19 %empty_149
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_150 = zext i1 %1 to i18
  %empty_151 = shl i18 %empty, 1
  %empty_152 = or i18 %empty_151, %empty_150
  ret i18 %empty_152
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_153 = zext i1 %1 to i17
  %empty_154 = shl i17 %empty, 1
  %empty_155 = or i17 %empty_154, %empty_153
  ret i17 %empty_155
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_156 = zext i1 %1 to i16
  %empty_157 = shl i16 %empty, 1
  %empty_158 = or i16 %empty_157, %empty_156
  ret i16 %empty_158
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_159 = zext i1 %1 to i15
  %empty_160 = shl i15 %empty, 1
  %empty_161 = or i15 %empty_160, %empty_159
  ret i15 %empty_161
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13, i1) nounwind readnone {
entry:
  %empty = zext i13 %0 to i14
  %empty_162 = zext i1 %1 to i14
  %empty_163 = shl i14 %empty, 1
  %empty_164 = or i14 %empty_163, %empty_162
  ret i14 %empty_164
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_165 = zext i1 %1 to i13
  %empty_166 = shl i13 %empty, 1
  %empty_167 = or i13 %empty_166, %empty_165
  ret i13 %empty_167
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_168 = zext i1 %1 to i12
  %empty_169 = shl i12 %empty, 1
  %empty_170 = or i12 %empty_169, %empty_168
  ret i12 %empty_170
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_171 = zext i1 %1 to i11
  %empty_172 = shl i11 %empty, 1
  %empty_173 = or i11 %empty_172, %empty_171
  ret i11 %empty_173
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_174 = zext i1 %1 to i10
  %empty_175 = shl i10 %empty, 1
  %empty_176 = or i10 %empty_175, %empty_174
  ret i10 %empty_176
}

declare void @_ssdm_SpecLoopRewind(...) nounwind

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !9, !15, !21, !25, !28, !34, !37, !37, !28, !39, !28, !28, !42, !42, !28, !44, !28, !28, !28, !46, !46, !48, !48, !28, !28, !50, !52, !54, !56, !56, !28, !28, !58, !37, !37, !28, !61, !64, !28, !28, !28, !66, !66, !28, !28, !68, !71, !72, !28, !28, !28, !48, !48, !66, !66, !74, !74, !76, !78, !79, !78, !81, !28, !81, !28, !37, !37, !28, !82, !84, !84, !86, !48, !48, !87, !28, !89, !89, !93, !28, !28, !28, !48, !48, !95, !95, !71, !72, !66, !66, !48, !48, !64, !66, !66, !97, !99, !99, !28, !28, !76, !28, !100, !101, !103, !103, !50, !105, !108, !28, !28, !28, !103, !103, !48, !48, !93, !110, !110, !76, !78, !28, !28, !28, !112, !114, !114, !118, !118, !120, !28, !28, !122, !122, !28, !28, !28, !123, !123, !123, !125, !127, !127, !28, !128, !128, !28, !28, !125, !127, !127, !28, !28, !28, !130, !130, !132, !134, !134, !136, !136, !127, !122, !122, !28, !28, !28, !138}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!140}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"pixel", metadata !"color"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !5, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"ap_uint<24>"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0}
!17 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!18 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<24>", metadata !"ap_uint<24>*", metadata !"ap_uint<4>"}
!19 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!20 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel", metadata !"out_pixel", metadata !"in_switch"}
!21 = metadata !{null, metadata !22, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int*"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"pixelArray", metadata !"selectedColorArray"}
!25 = metadata !{null, metadata !10, metadata !11, metadata !26, metadata !13, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<24> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !6}
!29 = metadata !{metadata !"kernel_arg_addr_space"}
!30 = metadata !{metadata !"kernel_arg_access_qual"}
!31 = metadata !{metadata !"kernel_arg_type"}
!32 = metadata !{metadata !"kernel_arg_type_qual"}
!33 = metadata !{metadata !"kernel_arg_name"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !35, metadata !4, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"int"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!37 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !38, metadata !6}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &", metadata !"const ap_int_base<32, true> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!42 = metadata !{null, metadata !10, metadata !11, metadata !43, metadata !13, metadata !38, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !41, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<8, false> &"}
!46 = metadata !{null, metadata !10, metadata !11, metadata !47, metadata !13, metadata !38, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!48 = metadata !{null, metadata !10, metadata !11, metadata !49, metadata !13, metadata !38, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !41, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !36, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"int"}
!54 = metadata !{null, metadata !1, metadata !2, metadata !55, metadata !4, metadata !41, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{null, metadata !10, metadata !11, metadata !57, metadata !13, metadata !38, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<24, false> &"}
!58 = metadata !{null, metadata !10, metadata !11, metadata !59, metadata !13, metadata !60, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !41, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!66 = metadata !{null, metadata !10, metadata !11, metadata !67, metadata !13, metadata !38, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!68 = metadata !{null, metadata !10, metadata !11, metadata !69, metadata !13, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !36, metadata !6}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !41, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!74 = metadata !{null, metadata !10, metadata !11, metadata !75, metadata !13, metadata !38, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!76 = metadata !{null, metadata !1, metadata !2, metadata !77, metadata !4, metadata !41, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!78 = metadata !{null, metadata !10, metadata !11, metadata !49, metadata !13, metadata !27, metadata !6}
!79 = metadata !{null, metadata !1, metadata !2, metadata !80, metadata !4, metadata !41, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!81 = metadata !{null, metadata !10, metadata !11, metadata !69, metadata !13, metadata !27, metadata !6}
!82 = metadata !{null, metadata !1, metadata !2, metadata !83, metadata !4, metadata !41, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!84 = metadata !{null, metadata !10, metadata !11, metadata !85, metadata !13, metadata !38, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!86 = metadata !{null, metadata !10, metadata !11, metadata !75, metadata !13, metadata !27, metadata !6}
!87 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !88, metadata !6}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!89 = metadata !{null, metadata !90, metadata !2, metadata !91, metadata !4, metadata !92, metadata !6}
!90 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!93 = metadata !{null, metadata !1, metadata !2, metadata !94, metadata !4, metadata !41, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!95 = metadata !{null, metadata !10, metadata !11, metadata !96, metadata !13, metadata !38, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!97 = metadata !{null, metadata !10, metadata !11, metadata !98, metadata !13, metadata !27, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!99 = metadata !{null, metadata !10, metadata !11, metadata !98, metadata !13, metadata !38, metadata !6}
!100 = metadata !{null, metadata !1, metadata !2, metadata !77, metadata !4, metadata !36, metadata !6}
!101 = metadata !{null, metadata !1, metadata !2, metadata !102, metadata !4, metadata !41, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!103 = metadata !{null, metadata !10, metadata !11, metadata !104, metadata !13, metadata !38, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!105 = metadata !{null, metadata !1, metadata !2, metadata !106, metadata !4, metadata !107, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!108 = metadata !{null, metadata !1, metadata !2, metadata !109, metadata !4, metadata !41, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!110 = metadata !{null, metadata !10, metadata !11, metadata !111, metadata !13, metadata !38, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!112 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !113, metadata !6}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!114 = metadata !{null, metadata !115, metadata !17, metadata !116, metadata !19, metadata !117, metadata !6}
!115 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!118 = metadata !{null, metadata !10, metadata !11, metadata !119, metadata !13, metadata !70, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!120 = metadata !{null, metadata !10, metadata !11, metadata !121, metadata !13, metadata !27, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!122 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !70, metadata !6}
!123 = metadata !{null, metadata !10, metadata !11, metadata !124, metadata !13, metadata !38, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!125 = metadata !{null, metadata !10, metadata !11, metadata !126, metadata !13, metadata !27, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!127 = metadata !{null, metadata !10, metadata !11, metadata !126, metadata !13, metadata !38, metadata !6}
!128 = metadata !{null, metadata !10, metadata !11, metadata !129, metadata !13, metadata !38, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!130 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !131, metadata !6}
!131 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!132 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !133, metadata !6}
!133 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!134 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !135, metadata !6}
!135 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!136 = metadata !{null, metadata !10, metadata !11, metadata !137, metadata !13, metadata !38, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!138 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !139, metadata !6}
!139 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!140 = metadata !{metadata !141, [1 x i32]* @llvm_global_ctors_0}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 31, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"llvm.global_ctors.0", metadata !145, metadata !"", i32 0, i32 31}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 0, i32 1}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 23, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"in_pixel.V", metadata !151, metadata !"uint24", i32 0, i32 23}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 0, i32 0}
!153 = metadata !{metadata !154}
!154 = metadata !{i32 0, i32 23, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"out_pixel.V", metadata !145, metadata !"uint24", i32 0, i32 23}
!157 = metadata !{metadata !158}
!158 = metadata !{i32 0, i32 3, metadata !159}
!159 = metadata !{metadata !160}
!160 = metadata !{metadata !"in_switch.V", metadata !151, metadata !"uint4", i32 0, i32 3}
