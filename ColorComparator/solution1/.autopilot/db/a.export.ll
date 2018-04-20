; ModuleID = 'C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getPixelClassificati = internal unnamed_addr constant [30 x i8] c"getPixelClassification_Stream\00"
@p_str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [17 x i8] c"PIXEL_COLOR_LOOP\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @getPixelClassification_Stream(i32 %in_pixel, i32* %out_pixel) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str12, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %in_pixel, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %out_pixel, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  br label %rewind_header

; <label>:1                                       ; preds = %rewind_header, %rewind_init
  %in_pixel6_phi = phi i32 [ %in_pixel_read, %rewind_init ], [ %in_pixel6_rewind, %rewind_header ]
  %minimumDistanceIndex = zext i2 %minimumDistanceIndex_3 to i3
  %minimumDistanceIndex_2 = zext i2 %minimumDistanceIndex_3 to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str1) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str12) nounwind
  %cond = icmp eq i2 %minimumDistanceIndex_3, 0
  %p_color_array_load_0_s = select i1 %cond, i17 -65536, i17 -65281
  %minimumDistance_2 = call fastcc i12 @getColorDistance(i32 %in_pixel6_phi, i17 %p_color_array_load_0_s) nounwind
  %minimumDistance_2_ex = zext i12 %minimumDistance_2 to i32
  %tmp_2 = icmp slt i32 %minimumDistance_2_ex, %minimumDistance4
  %distance_0_minimumDi = select i1 %tmp_2, i32 %minimumDistance_2_ex, i32 %minimumDistance4
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str1, i32 %tmp_1) nounwind
  %p_color_array_load_1_s = select i1 %cond, i17 65280, i17 -256
  %minimumDistance_2_1 = call fastcc i12 @getColorDistance(i32 %in_pixel6_phi, i17 %p_color_array_load_1_s) nounwind
  %minimumDistance_2_1_s = zext i12 %minimumDistance_2_1 to i32
  %tmp_2_1 = icmp slt i32 %minimumDistance_2_1_s, %distance_0_minimumDi
  %distance_0_minimumDi_1 = select i1 %tmp_2_1, i32 %minimumDistance_2_1_s, i32 %distance_0_minimumDi
  %p_color_array_load_2_s = select i1 %cond, i17 255, i17 65535
  %minimumDistance_2_2 = call fastcc i12 @getColorDistance(i32 %in_pixel6_phi, i17 %p_color_array_load_2_s) nounwind
  %minimumDistance_2_2_s = zext i12 %minimumDistance_2_2 to i32
  %tmp_2_2 = icmp slt i32 %minimumDistance_2_2_s, %distance_0_minimumDi_1
  %newSel_v_cast_cast = select i1 %tmp_2_2, i3 2, i3 1
  %newSel = add i3 %newSel_v_cast_cast, %minimumDistanceIndex
  %newSel_cast = zext i3 %newSel to i32
  %or_cond = or i1 %tmp_2_2, %tmp_2_1
  %newSel1 = select i1 %tmp_2, i32 %minimumDistanceIndex_2, i32 %minimumDistanceIndex_1
  %newSel3 = select i1 %or_cond, i32 %newSel_cast, i32 %newSel1
  %distance_0_minimumDi_2 = select i1 %tmp_2_2, i32 %minimumDistance_2_2_s, i32 %distance_0_minimumDi_1
  %i_2 = add i3 3, %minimumDistanceIndex
  %tmp_3 = trunc i3 %i_2 to i2
  %exitcond = icmp eq i3 %i_2, -2
  br i1 %exitcond, label %2, label %rewind_header

; <label>:2                                       ; preds = %1
  %tmp = icmp eq i32 %newSel3, 0
  %in_pixel_assign = select i1 %tmp, i32 0, i32 %in_pixel6_phi
  call void @_ssdm_op_Write.axis.i32P(i32* %out_pixel, i32 %in_pixel_assign) nounwind
  call void (...)* @_ssdm_op_Return()
  br label %rewind_header

rewind_init:                                      ; preds = %rewind_header
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %in_pixel) nounwind, !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %out_pixel) nounwind, !map !133
  call void (...)* @_ssdm_op_SpecTopModule([30 x i8]* @getPixelClassificati) nounwind
  %in_pixel_read = call i32 @_ssdm_op_Read.axis.i32(i32 %in_pixel) nounwind
  br label %1

rewind_header:                                    ; preds = %2, %1, %0
  %do_init = phi i1 [ true, %0 ], [ false, %1 ], [ true, %2 ]
  %in_pixel6_rewind = phi i32 [ undef, %0 ], [ %in_pixel6_phi, %1 ], [ undef, %2 ]
  %minimumDistance4 = phi i32 [ 2147483647, %0 ], [ %distance_0_minimumDi_2, %1 ], [ 2147483647, %2 ]
  %minimumDistanceIndex_1 = phi i32 [ 0, %0 ], [ %newSel3, %1 ], [ 0, %2 ]
  %minimumDistanceIndex_3 = phi i2 [ 0, %0 ], [ %tmp_3, %1 ], [ 0, %2 ]
  br i1 %do_init, label %rewind_init, label %1
}

define internal fastcc i12 @getColorDistance(i32 %pixel, i17 %color) {
_ZNK13ap_fixed_baseILi32ELi24ELb0EL9ap_q_mode5EL9ap_o_mode3ELi0EE6to_intEv.exit:
  %color_read = call i17 @_ssdm_op_Read.ap_auto.i17(i17 %color)
  %pixel_read = call i32 @_ssdm_op_Read.axis.i32(i32 %pixel)
  call void (...)* @_ssdm_op_SpecInterface(i32 %pixel, [5 x i8]* @p_str4, i32 0, i32 0, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12, [1 x i8]* @p_str12, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str12, [1 x i8]* @p_str12) nounwind
  %pixelRed = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_read, i32 16, i32 23)
  %pixelRed_cast = zext i8 %pixelRed to i9
  %pixelGreen = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_read, i32 8, i32 15)
  %pixelGreen_cast = zext i8 %pixelGreen to i9
  %pixelBlue = trunc i32 %pixel_read to i8
  %pixelBlue_cast = zext i8 %pixelBlue to i9
  %tmp_5 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %color_read, i32 16)
  %colorRed_cast = select i1 %tmp_5, i9 255, i9 0
  %colorGreen = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %color_read, i32 8, i32 15)
  %colorGreen_cast = zext i8 %colorGreen to i9
  %colorBlue = trunc i17 %color_read to i8
  %colorBlue_cast = zext i8 %colorBlue to i9
  %number_assign = sub i9 %pixelRed_cast, %colorRed_cast
  %number_assign_cast_c = sext i9 %number_assign to i18
  %result = mul i18 %number_assign_cast_c, %number_assign_cast_c
  %tmp = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result, i9 0)
  %p_Val2_cast = sext i27 %tmp to i30
  %number_assign_1 = sub i9 %pixelGreen_cast, %colorGreen_cast
  %number_assign_1_cast = sext i9 %number_assign_1 to i18
  %result_1 = mul i18 %number_assign_1_cast, %number_assign_1_cast
  %tmp_2 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_1, i10 0)
  %p_Val2_1_cast = sext i28 %tmp_2 to i29
  %number_assign_2 = sub i9 %pixelBlue_cast, %colorBlue_cast
  %tmp_7 = sext i9 %number_assign_2 to i17
  %tmp_8 = sext i9 %number_assign_2 to i17
  %tmp_9 = mul i17 %tmp_8, %tmp_7
  %p_shl = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_9, i10 0)
  %p_shl_cast = sext i27 %p_shl to i28
  %p_shl9 = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_9, i8 0)
  %p_shl9_cast = sext i25 %p_shl9 to i28
  %p_Val2_s = sub i28 %p_shl_cast, %p_shl9_cast
  %p_Val2_2_cast_cast = sext i28 %p_Val2_s to i29
  %tmp5 = add i29 %p_Val2_2_cast_cast, %p_Val2_1_cast
  %tmp5_cast = sext i29 %tmp5 to i30
  %powerSummation_V = add i30 %p_Val2_cast, %tmp5_cast
  %result_V = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V) nounwind
  %tmp_1 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V, i32 8, i32 19)
  ret i12 %tmp_1
}

define internal fastcc i20 @fxp_sqrt(i30 %in_val_V_read) {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i30 @_ssdm_op_Read.ap_auto.i30(i30 %in_val_V_read)
  %tmp_11 = call i19 @_ssdm_op_PartSelect.i19.i30.i32.i32(i30 %in_val_V_read_1, i32 11, i32 29)
  %tmp = sext i19 %tmp_11 to i21
  %tmp_cast = zext i21 %tmp to i22
  %tmp_2 = add i22 %tmp_cast, 1
  %tmp_5 = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_2, i32 1, i32 21)
  %tmp_1 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_5, i1 false)
  %p_0353_1 = xor i22 %tmp_1, -2097152
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_2, i32 21)
  %tmp_18_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_13, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_18_1, 3145728
  %q_V_1_1 = select i1 %tmp_13, i3 -2, i3 2
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_17 = shl i23 %p_0353_1_1, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_3 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_19, i22 0)
  %tmp_4 = add i23 %tmp_3, -1572864
  %s_V_1_2 = sub i23 %tmp_17, %tmp_4
  %tmp1 = add i23 %tmp_17, -2621440
  %s_V_2_2 = add i23 %tmp1, %tmp_3
  %p_0305_1_in_in_2 = select i1 %tmp_15, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_15, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_23 = shl i23 %p_0353_1_2, 1
  %r_V_2_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_24_3 = or i23 %r_V_2_3, 262144
  %s_V_1_3 = sub i23 %tmp_23, %tmp_24_3
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_27_3 = or i23 %r_V_4_3, 786432
  %s_V_2_3 = add i23 %tmp_27_3, %tmp_23
  %p_0353_1_3 = select i1 %tmp_21, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_s = select i1 %tmp_21, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_s, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_27 = shl i23 %p_0353_1_3, 1
  %r_V_2_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_24_4 = or i23 %r_V_2_4, 131072
  %s_V_1_4 = sub i23 %tmp_27, %tmp_24_4
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_s, i20 0)
  %tmp_27_4 = or i23 %r_V_4_4, 393216
  %s_V_2_4 = add i23 %tmp_27_4, %tmp_27
  %p_0353_1_4 = select i1 %tmp_25, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_6 = select i1 %tmp_25, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_6, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_29 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_31 = shl i23 %p_0353_1_4, 1
  %r_V_2_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_24_5 = or i23 %r_V_2_5, 65536
  %s_V_1_5 = sub i23 %tmp_31, %tmp_24_5
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_6, i19 0)
  %tmp_27_5 = or i23 %r_V_4_5, 196608
  %s_V_2_5 = add i23 %tmp_27_5, %tmp_31
  %p_0353_1_5 = select i1 %tmp_29, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_8 = select i1 %tmp_29, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_8, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_35 = shl i23 %p_0353_1_5, 1
  %r_V_2_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_24_6 = or i23 %r_V_2_6, 32768
  %s_V_1_6 = sub i23 %tmp_35, %tmp_24_6
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_8, i18 0)
  %tmp_27_6 = or i23 %r_V_4_6, 98304
  %s_V_2_6 = add i23 %tmp_27_6, %tmp_35
  %p_0353_1_6 = select i1 %tmp_33, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_9 = select i1 %tmp_33, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_9, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_39 = shl i23 %p_0353_1_6, 1
  %r_V_2_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_24_7 = or i23 %r_V_2_7, 16384
  %s_V_1_7 = sub i23 %tmp_39, %tmp_24_7
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_9, i17 0)
  %tmp_27_7 = or i23 %r_V_4_7, 49152
  %s_V_2_7 = add i23 %tmp_27_7, %tmp_39
  %p_0353_1_7 = select i1 %tmp_37, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_10 = select i1 %tmp_37, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_10, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_41 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_43 = shl i23 %p_0353_1_7, 1
  %r_V_2_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_24_8 = or i23 %r_V_2_8, 8192
  %s_V_1_8 = sub i23 %tmp_43, %tmp_24_8
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_10, i16 0)
  %tmp_27_8 = or i23 %r_V_4_8, 24576
  %s_V_2_8 = add i23 %tmp_27_8, %tmp_43
  %p_0353_1_8 = select i1 %tmp_41, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_12 = select i1 %tmp_41, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_12, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_46 = shl i23 %p_0353_1_8, 1
  %r_V_2_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_24_9 = or i23 %r_V_2_9, 4096
  %s_V_1_9 = sub i23 %tmp_46, %tmp_24_9
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_12, i15 0)
  %tmp_27_9 = or i23 %r_V_4_9, 12288
  %s_V_2_9 = add i23 %tmp_27_9, %tmp_46
  %p_0353_1_9 = select i1 %tmp_45, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_14 = select i1 %tmp_45, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_14, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_47 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_48 = shl i23 %p_0353_1_9, 1
  %r_V_2_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_24_s = or i23 %r_V_2_s, 2048
  %s_V_1_s = sub i23 %tmp_48, %tmp_24_s
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_14, i14 0)
  %tmp_27_s = or i23 %r_V_4_s, 6144
  %s_V_2_s = add i23 %tmp_27_s, %tmp_48
  %p_0353_1_s = select i1 %tmp_47, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_16 = select i1 %tmp_47, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_16, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_52 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_53 = shl i23 %p_0353_1_s, 1
  %r_V_2_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_24_1 = or i23 %r_V_2_1, 1024
  %s_V_1_1 = sub i23 %tmp_53, %tmp_24_1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_16, i13 0)
  %tmp_27_1 = or i23 %r_V_4_1, 3072
  %s_V_2_1 = add i23 %tmp_27_1, %tmp_53
  %p_0353_1_10 = select i1 %tmp_52, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_18 = select i1 %tmp_52, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_18, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_55 = shl i23 %p_0353_1_10, 1
  %r_V_2_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_24_2 = or i23 %r_V_2_2, 512
  %s_V_1_10 = sub i23 %tmp_55, %tmp_24_2
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_18, i12 0)
  %tmp_27_2 = or i23 %r_V_4_2, 1536
  %s_V_2_10 = add i23 %tmp_27_2, %tmp_55
  %p_0353_1_11 = select i1 %tmp_54, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_20 = select i1 %tmp_54, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_20, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_56 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_57 = shl i23 %p_0353_1_11, 1
  %r_V_1_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_24_10 = or i23 %r_V_1_s, 256
  %s_V_1_11 = sub i23 %tmp_57, %tmp_24_10
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_20, i11 0)
  %tmp_27_10 = or i23 %r_V_3_s, 768
  %s_V_2_11 = add i23 %tmp_27_10, %tmp_57
  %p_0353_1_12 = select i1 %tmp_56, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_22 = select i1 %tmp_56, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_22, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_59 = shl i23 %p_0353_1_12, 1
  %r_V_1_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_24_11 = or i23 %r_V_1_1, 128
  %s_V_1_12 = sub i23 %tmp_59, %tmp_24_11
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_22, i10 0)
  %tmp_27_11 = or i23 %r_V_3_1, 384
  %s_V_2_12 = add i23 %tmp_27_11, %tmp_59
  %p_0353_1_13 = select i1 %tmp_58, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_24 = select i1 %tmp_58, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_24, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_60 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_61 = shl i23 %p_0353_1_13, 1
  %r_V_1_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_24_12 = or i23 %r_V_1_2, 64
  %s_V_1_13 = sub i23 %tmp_61, %tmp_24_12
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_24, i9 0)
  %tmp_27_12 = or i23 %r_V_3_2, 192
  %s_V_2_13 = add i23 %tmp_27_12, %tmp_61
  %p_0353_1_14 = select i1 %tmp_60, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_26 = select i1 %tmp_60, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_26, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_62 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_63 = shl i23 %p_0353_1_14, 1
  %r_V_1_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_24_13 = or i23 %r_V_1_3, 32
  %s_V_1_14 = sub i23 %tmp_63, %tmp_24_13
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_26, i8 0)
  %tmp_27_13 = or i23 %r_V_3_3, 96
  %s_V_2_14 = add i23 %tmp_27_13, %tmp_63
  %p_0353_1_15 = select i1 %tmp_62, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_28 = select i1 %tmp_62, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_28, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_64 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_65 = shl i23 %p_0353_1_15, 1
  %r_V_1_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_24_14 = or i23 %r_V_1_4, 16
  %s_V_1_15 = sub i23 %tmp_65, %tmp_24_14
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_28, i7 0)
  %tmp_27_14 = or i23 %r_V_3_4, 48
  %s_V_2_15 = add i23 %tmp_27_14, %tmp_65
  %p_0353_1_16 = select i1 %tmp_64, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_30 = select i1 %tmp_64, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_30, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_67 = shl i23 %p_0353_1_16, 1
  %r_V_1_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_24_15 = or i23 %r_V_1_5, 8
  %s_V_1_16 = sub i23 %tmp_67, %tmp_24_15
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_30, i6 0)
  %tmp_27_15 = or i23 %r_V_3_5, 24
  %s_V_2_16 = add i23 %tmp_27_15, %tmp_67
  %p_0353_1_17 = select i1 %tmp_66, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_32 = select i1 %tmp_66, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_32, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_69 = shl i23 %p_0353_1_17, 1
  %r_V_1_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_24_16 = or i23 %r_V_1_6, 4
  %s_V_1_17 = sub i23 %tmp_69, %tmp_24_16
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_32, i5 0)
  %tmp_27_16 = or i23 %r_V_3_6, 12
  %s_V_2_17 = add i23 %tmp_27_16, %tmp_69
  %p_0353_1_18 = select i1 %tmp_68, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_34 = select i1 %tmp_68, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_34, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_71 = shl i23 %p_0353_1_18, 1
  %r_V_1_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_24_17 = or i23 %r_V_1_7, 2
  %s_V_1_18 = sub i23 %tmp_71, %tmp_24_17
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_34, i4 0)
  %tmp_27_17 = or i23 %r_V_3_7, 6
  %s_V_2_18 = add i23 %tmp_27_17, %tmp_71
  %p_0353_1_19 = select i1 %tmp_70, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_36 = select i1 %tmp_70, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_36, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_72 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_73 = shl i23 %p_0353_1_19, 1
  %r_V_1_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_2_10 = or i23 %r_V_1_8, 1
  %s_V_1_19 = sub i23 %tmp_73, %r_V_2_10
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_36, i3 0)
  %r_V_4_10 = or i23 %r_V_3_8, 3
  %s_V_2_19 = add i23 %r_V_4_10, %tmp_73
  %p_0353_1_20 = select i1 %tmp_72, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_74 = trunc i21 %q_V_1_19 to i20
  %tmp_75 = shl i20 %tmp_36, 1
  %tmp_38 = select i1 %tmp_72, i20 %tmp_75, i20 %tmp_74
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_38, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_7 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_40 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_42 = select i1 %tmp_7, i20 %tmp_40, i20 %tmp_38
  ret i20 %tmp_42
}

define weak void @_ssdm_op_Write.axis.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
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

define weak i32 @_ssdm_op_Read.axis.i32(i32) {
entry:
  ret i32 %0
}

define weak i30 @_ssdm_op_Read.ap_auto.i30(i30) {
entry:
  ret i30 %0
}

define weak i17 @_ssdm_op_Read.ap_auto.i17(i17) {
entry:
  ret i17 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i8
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

!opencl.kernels = !{!0, !7, !9, !15, !19, !23, !23, !29, !32, !32, !23, !34, !37, !23, !23, !23, !40, !40, !23, !23, !42, !45, !32, !32, !23, !47, !23, !23, !23, !49, !49, !40, !40, !51, !51, !53, !55, !57, !55, !59, !23, !59, !23, !32, !32, !23, !60, !62, !62, !64, !49, !49, !65, !23, !67, !67, !71, !23, !23, !23, !49, !49, !73, !73, !45, !47, !23, !23, !40, !40, !49, !49, !37, !40, !40, !75, !77, !77, !23, !23, !53, !23, !78, !79, !81, !81, !83, !85, !88, !23, !23, !23, !81, !81, !49, !49, !71, !90, !90, !53, !55, !23, !23, !23, !92, !94, !94, !100, !100, !102, !23, !23, !104, !104, !23, !23, !23, !105, !105, !105, !107, !109, !109, !23, !110, !110, !23, !23, !107, !109, !109, !23, !23, !23, !112, !112, !114, !116, !116, !118, !118, !109, !23, !23}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!120}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"pixel", metadata !"color"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel"}
!15 = metadata !{void (i32, i32*)* @getPixelClassification_Stream, metadata !16, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int*"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"in_pixel", metadata !"out_pixel"}
!19 = metadata !{null, metadata !20, metadata !2, metadata !21, metadata !4, metadata !22, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int*"}
!22 = metadata !{metadata !"kernel_arg_name", metadata !"pixelArray", metadata !"selectedColorArray"}
!23 = metadata !{null, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !6}
!24 = metadata !{metadata !"kernel_arg_addr_space"}
!25 = metadata !{metadata !"kernel_arg_access_qual"}
!26 = metadata !{metadata !"kernel_arg_type"}
!27 = metadata !{metadata !"kernel_arg_type_qual"}
!28 = metadata !{metadata !"kernel_arg_name"}
!29 = metadata !{null, metadata !10, metadata !11, metadata !30, metadata !13, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!32 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!34 = metadata !{null, metadata !1, metadata !2, metadata !35, metadata !4, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!40 = metadata !{null, metadata !10, metadata !11, metadata !41, metadata !13, metadata !33, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!42 = metadata !{null, metadata !10, metadata !11, metadata !43, metadata !13, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !46, metadata !6}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!47 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !39, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!49 = metadata !{null, metadata !10, metadata !11, metadata !50, metadata !13, metadata !33, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!51 = metadata !{null, metadata !10, metadata !11, metadata !52, metadata !13, metadata !33, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !39, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!55 = metadata !{null, metadata !10, metadata !11, metadata !50, metadata !13, metadata !56, metadata !6}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !58, metadata !4, metadata !39, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!59 = metadata !{null, metadata !10, metadata !11, metadata !43, metadata !13, metadata !56, metadata !6}
!60 = metadata !{null, metadata !1, metadata !2, metadata !61, metadata !4, metadata !39, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!62 = metadata !{null, metadata !10, metadata !11, metadata !63, metadata !13, metadata !33, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!64 = metadata !{null, metadata !10, metadata !11, metadata !52, metadata !13, metadata !56, metadata !6}
!65 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !66, metadata !6}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!67 = metadata !{null, metadata !68, metadata !2, metadata !69, metadata !4, metadata !70, metadata !6}
!68 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !72, metadata !4, metadata !39, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !10, metadata !11, metadata !74, metadata !13, metadata !33, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!75 = metadata !{null, metadata !10, metadata !11, metadata !76, metadata !13, metadata !56, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!77 = metadata !{null, metadata !10, metadata !11, metadata !76, metadata !13, metadata !33, metadata !6}
!78 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !46, metadata !6}
!79 = metadata !{null, metadata !1, metadata !2, metadata !80, metadata !4, metadata !39, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!81 = metadata !{null, metadata !10, metadata !11, metadata !82, metadata !13, metadata !33, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !39, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!85 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !87, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !4, metadata !39, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!90 = metadata !{null, metadata !10, metadata !11, metadata !91, metadata !13, metadata !33, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !93, metadata !6}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!94 = metadata !{null, metadata !95, metadata !96, metadata !97, metadata !98, metadata !99, metadata !6}
!95 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!96 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!98 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!99 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!100 = metadata !{null, metadata !10, metadata !11, metadata !101, metadata !13, metadata !44, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!102 = metadata !{null, metadata !10, metadata !11, metadata !103, metadata !13, metadata !56, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!104 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !44, metadata !6}
!105 = metadata !{null, metadata !10, metadata !11, metadata !106, metadata !13, metadata !33, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!107 = metadata !{null, metadata !10, metadata !11, metadata !108, metadata !13, metadata !56, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!109 = metadata !{null, metadata !10, metadata !11, metadata !108, metadata !13, metadata !33, metadata !6}
!110 = metadata !{null, metadata !10, metadata !11, metadata !111, metadata !13, metadata !33, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!112 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !113, metadata !6}
!113 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!114 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !115, metadata !6}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!116 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !117, metadata !6}
!117 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!118 = metadata !{null, metadata !10, metadata !11, metadata !119, metadata !13, metadata !33, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!120 = metadata !{metadata !121, [1 x i32]* @llvm_global_ctors_0}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 31, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"llvm.global_ctors.0", metadata !125, metadata !"", i32 0, i32 31}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 0, i32 1}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 31, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"in_pixel", metadata !131, metadata !"int", i32 0, i32 31}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 31, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"out_pixel", metadata !125, metadata !"int", i32 0, i32 31}
