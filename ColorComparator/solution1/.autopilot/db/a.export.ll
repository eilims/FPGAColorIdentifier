; ModuleID = 'C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@parseColorsToCenterP = internal unnamed_addr constant [25 x i8] c"parseColorsToCenterPixel\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_color_array = internal unnamed_addr constant [6 x i17] [i17 -65536, i17 65280, i17 255, i17 -65281, i17 -256, i17 65535]
@p_str4 = private unnamed_addr constant [9 x i8] c"ROW_LOOP\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [17 x i8] c"PIXEL_COLOR_LOOP\00", align 1

define void @parseColorsToCenterPixel([3 x i96]* %pixelArray, [6 x i32]* %selectedColorArray) {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %pixelArray), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap([6 x i32]* %selectedColorArray) nounwind, !map !140
  call void (...)* @_ssdm_op_SpecTopModule([25 x i8]* @parseColorsToCenterP) nounwind
  %tempArray = alloca [8 x i32], align 16
  %pixelArray_addr = getelementptr [3 x i96]* %pixelArray, i64 0, i64 1
  %pixelArray_load = load i96* %pixelArray_addr, align 8
  %pixel_assign_1 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %pixelArray_load, i32 32, i32 63)
  %pixelBlue = call i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96 %pixelArray_load, i32 32, i32 39)
  %pixelRed = call i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96 %pixelArray_load, i32 48, i32 55)
  %pixelRed_i_cast = zext i8 %pixelRed to i9
  %pixelGreen = call i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96 %pixelArray_load, i32 40, i32 47)
  %pixelGreen_i_cast = zext i8 %pixelGreen to i9
  %pixelBlue_i_cast = zext i8 %pixelBlue to i9
  br label %1

; <label>:1                                       ; preds = %2, %0
  %centerColor = phi i32 [ 0, %0 ], [ %i_0_minimumDistanceI, %2 ]
  %minimumDistanceIndex = phi i3 [ 0, %0 ], [ %i_1, %2 ]
  %minimumDistance_i = phi i32 [ 2147483647, %0 ], [ %distance_0_minimumDi, %2 ]
  %exitcond_i = icmp eq i3 %minimumDistanceIndex, -2
  %i_1 = add i3 %minimumDistanceIndex, 1
  br i1 %exitcond_i, label %getPixelClassification.exit, label %2

; <label>:2                                       ; preds = %1
  %minimumDistanceIndex_1 = zext i3 %minimumDistanceIndex to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str) nounwind
  %tmp_19_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i5 = zext i3 %minimumDistanceIndex to i64
  %p_color_array_addr_1 = getelementptr [6 x i17]* @p_color_array, i64 0, i64 %tmp_i5
  %p_color_array_load = load i17* %p_color_array_addr_1, align 4
  %colorBlue = trunc i17 %p_color_array_load to i8
  %tmp_11 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_load, i32 16)
  %colorRed_i_cast_cast = select i1 %tmp_11, i9 255, i9 0
  %colorGreen = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_load, i32 8, i32 15)
  %colorGreen_i_cast = zext i8 %colorGreen to i9
  %colorBlue_i_cast = zext i8 %colorBlue to i9
  %number_assign_3 = sub i9 %pixelRed_i_cast, %colorRed_i_cast_cast
  %number_assign_i_cast = sext i9 %number_assign_3 to i18
  %result_2 = mul i18 %number_assign_i_cast, %number_assign_i_cast
  %tmp_10 = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result_2, i9 0)
  %p_Val2_3_cast = sext i27 %tmp_10 to i30
  %number_assign_4 = sub i9 %pixelGreen_i_cast, %colorGreen_i_cast
  %number_assign_3_i_ca = sext i9 %number_assign_4 to i18
  %result_3 = mul i18 %number_assign_3_i_ca, %number_assign_3_i_ca
  %tmp_13 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_3, i10 0)
  %p_Val2_4_cast = sext i28 %tmp_13 to i29
  %number_assign_5 = sub i9 %pixelBlue_i_cast, %colorBlue_i_cast
  %tmp_14 = sext i9 %number_assign_5 to i17
  %tmp_18 = sext i9 %number_assign_5 to i17
  %tmp_19 = mul i17 %tmp_18, %tmp_14
  %p_shl_i_i = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_19, i10 0)
  %p_shl_i_i_cast = sext i27 %p_shl_i_i to i28
  %p_shl9_i_i = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_19, i8 0)
  %p_shl9_i_i_cast = sext i25 %p_shl9_i_i to i28
  %p_Val2_s = sub i28 %p_shl_i_i_cast, %p_shl9_i_i_cast
  %p_Val2_5_i6_cast_c = sext i28 %p_Val2_s to i29
  %tmp8 = add i29 %p_Val2_5_i6_cast_c, %p_Val2_4_cast
  %tmp8_cast = sext i29 %tmp8 to i30
  %powerSummation_V_1 = add i30 %p_Val2_3_cast, %tmp8_cast
  %result_V_i = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V_1) nounwind
  %tmp_15 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_i, i32 8, i32 19)
  %minimumDistance = zext i12 %tmp_15 to i32
  %tmp_i7 = icmp slt i32 %minimumDistance, %minimumDistance_i
  %i_0_minimumDistanceI = select i1 %tmp_i7, i32 %minimumDistanceIndex_1, i32 %centerColor
  %distance_0_minimumDi = select i1 %tmp_i7, i32 %minimumDistance, i32 %minimumDistance_i
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str, i32 %tmp_19_i) nounwind
  br label %1

getPixelClassification.exit:                      ; preds = %1
  %pixelArray_addr_1 = getelementptr [3 x i96]* %pixelArray, i64 0, i64 0
  %pixelArray_load_1 = load i96* %pixelArray_addr_1, align 8
  %tmp_3 = trunc i96 %pixelArray_load_1 to i32
  %tempArray_addr = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 0
  store i32 %tmp_3, i32* %tempArray_addr, align 16
  %tmp_4 = trunc i96 %pixelArray_load to i32
  %tempArray_addr_8 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 1
  store i32 %tmp_4, i32* %tempArray_addr_8, align 4
  %pixelArray_addr_2 = getelementptr [3 x i96]* %pixelArray, i64 0, i64 2
  %pixelArray_load_2 = load i96* %pixelArray_addr_2, align 8
  %tmp_5 = trunc i96 %pixelArray_load_2 to i32
  %tempArray_addr_2 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 2
  store i32 %tmp_5, i32* %tempArray_addr_2, align 8
  %tmp_6 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %pixelArray_load_1, i32 32, i32 63)
  %tempArray_addr_3 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 3
  store i32 %tmp_6, i32* %tempArray_addr_3, align 4
  %tempArray_addr_4 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 4
  store i32 %pixel_assign_1, i32* %tempArray_addr_4, align 16
  %tmp_7 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %pixelArray_load_2, i32 32, i32 63)
  %tempArray_addr_5 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 5
  store i32 %tmp_7, i32* %tempArray_addr_5, align 4
  %tmp_2 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %pixelArray_load_1, i32 64, i32 95)
  %tempArray_addr_6 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 6
  store i32 %tmp_2, i32* %tempArray_addr_6, align 8
  %tmp_9 = call i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96 %pixelArray_load, i32 64, i32 95)
  %tempArray_addr_7 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 7
  store i32 %tmp_9, i32* %tempArray_addr_7, align 4
  %tmp = sext i32 %centerColor to i64
  %selectedColorArray_a = getelementptr [6 x i32]* %selectedColorArray, i64 0, i64 %tmp
  %selectedColorArray_l = load i32* %selectedColorArray_a, align 4
  %tmp_1 = icmp eq i32 %selectedColorArray_l, 1
  br i1 %tmp_1, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %getPixelClassification.exit
  %p_color_array_addr = getelementptr [6 x i17]* @p_color_array, i64 0, i64 %tmp
  %p_color_array_load_1 = load i17* %p_color_array_addr, align 4
  %colorBlue_1 = trunc i17 %p_color_array_load_1 to i8
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_load_1, i32 16)
  %colorRed_cast_cast = select i1 %tmp_22, i9 255, i9 0
  %colorGreen_1 = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_load_1, i32 8, i32 15)
  %colorGreen_cast = zext i8 %colorGreen_1 to i9
  %colorBlue_cast = zext i8 %colorBlue_1 to i9
  br label %.preheader

.preheader:                                       ; preds = %3, %.preheader.preheader
  %i1 = phi i4 [ %i, %3 ], [ 0, %.preheader.preheader ]
  %phi_urem = phi i4 [ %idx_urem, %3 ], [ 0, %.preheader.preheader ]
  %exitcond = icmp eq i4 %i1, -8
  %i = add i4 %i1, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %3

; <label>:3                                       ; preds = %.preheader
  %next_urem = add i4 1, %phi_urem
  %tmp_25 = icmp ult i4 %next_urem, 3
  %idx_urem = select i1 %tmp_25, i4 %next_urem, i4 0
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str4) nounwind
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_8 = zext i4 %i1 to i64
  %tempArray_addr_1 = getelementptr inbounds [8 x i32]* %tempArray, i64 0, i64 %tmp_8
  %tempArray_load = load i32* %tempArray_addr_1, align 4
  %pixelBlue_1 = trunc i32 %tempArray_load to i8
  %pixelRed_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tempArray_load, i32 16, i32 23)
  %pixelRed_cast = zext i8 %pixelRed_1 to i9
  %pixelGreen_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tempArray_load, i32 8, i32 15)
  %pixelGreen_cast = zext i8 %pixelGreen_1 to i9
  %pixelBlue_cast = zext i8 %pixelBlue_1 to i9
  %number_assign = sub i9 %pixelRed_cast, %colorRed_cast_cast
  %number_assign_cast_c = sext i9 %number_assign to i18
  %result = mul i18 %number_assign_cast_c, %number_assign_cast_c
  %tmp_20 = call i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18 %result, i9 0)
  %p_Val2_cast = sext i27 %tmp_20 to i30
  %number_assign_1 = sub i9 %pixelGreen_cast, %colorGreen_cast
  %number_assign_1_cast = sext i9 %number_assign_1 to i18
  %result_1 = mul i18 %number_assign_1_cast, %number_assign_1_cast
  %tmp_23 = call i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18 %result_1, i10 0)
  %p_Val2_1_cast = sext i28 %tmp_23 to i29
  %number_assign_2 = sub i9 %pixelBlue_cast, %colorBlue_cast
  %tmp_28 = sext i9 %number_assign_2 to i17
  %tmp_29 = sext i9 %number_assign_2 to i17
  %tmp_30 = mul i17 %tmp_29, %tmp_28
  %p_shl_i = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_30, i10 0)
  %p_shl_i_cast = sext i27 %p_shl_i to i28
  %p_shl9_i = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_30, i8 0)
  %p_shl9_i_cast = sext i25 %p_shl9_i to i28
  %p_Val2_1 = sub i28 %p_shl_i_cast, %p_shl9_i_cast
  %p_Val2_2_cast_cast = sext i28 %p_Val2_1 to i29
  %tmp9 = add i29 %p_Val2_2_cast_cast, %p_Val2_1_cast
  %tmp9_cast = sext i29 %tmp9 to i30
  %powerSummation_V = add i30 %p_Val2_cast, %tmp9_cast
  %result_V = call fastcc i20 @fxp_sqrt(i30 %powerSummation_V) nounwind
  %tmp_21 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V, i32 8, i32 19)
  %tmp_s = zext i4 %phi_urem to i64
  %tmp_31 = trunc i4 %i1 to i3
  %zext_cast = zext i3 %tmp_31 to i8
  %mul = mul i8 11, %zext_cast
  %pixelArray_addr_3 = getelementptr [3 x i96]* %pixelArray, i64 0, i64 %tmp_s
  %pixelArray_load_3 = load i96* %pixelArray_addr_3, align 8
  %tmp_24 = call i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8 %mul, i32 5, i32 6)
  %tmp_16 = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_24, i5 0)
  %tmp_17 = or i7 %tmp_16, 31
  %tmp_32 = icmp ugt i7 %tmp_16, %tmp_17
  %tmp_33 = zext i12 %tmp_21 to i96
  %tmp_34 = sub i7 -33, %tmp_16
  %tmp_35 = select i1 %tmp_32, i7 %tmp_16, i7 %tmp_17
  %tmp_36 = select i1 %tmp_32, i7 %tmp_17, i7 %tmp_16
  %tmp_37 = select i1 %tmp_32, i7 %tmp_34, i7 %tmp_16
  %tmp_38 = sub i7 -33, %tmp_35
  %tmp_39 = zext i7 %tmp_37 to i96
  %tmp_40 = zext i7 %tmp_36 to i96
  %tmp_41 = zext i7 %tmp_38 to i96
  %tmp_42 = shl i96 %tmp_33, %tmp_39
  %tmp_43 = call i96 @llvm.part.select.i96(i96 %tmp_42, i32 95, i32 0)
  %tmp_44 = select i1 %tmp_32, i96 %tmp_43, i96 %tmp_42
  %tmp_45 = shl i96 -1, %tmp_40
  %tmp_46 = lshr i96 -1, %tmp_41
  %p_demorgan = and i96 %tmp_45, %tmp_46
  %tmp_47 = xor i96 %p_demorgan, -1
  %tmp_48 = and i96 %pixelArray_load_3, %tmp_47
  %tmp_49 = and i96 %tmp_44, %p_demorgan
  %tmp_50 = or i96 %tmp_48, %tmp_49
  store i96 %tmp_50, i96* %pixelArray_addr_3, align 8
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str4, i32 %tmp_12) nounwind
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %getPixelClassification.exit
  ret void
}

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i30 @llvm.part.select.i30(i30, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc i20 @fxp_sqrt(i30 %in_val_V_read) {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i30 @_ssdm_op_Read.ap_auto.i30(i30 %in_val_V_read)
  %tmp_51 = call i19 @_ssdm_op_PartSelect.i19.i30.i32.i32(i30 %in_val_V_read_1, i32 11, i32 29)
  %tmp = sext i19 %tmp_51 to i21
  %tmp_cast = zext i21 %tmp to i22
  %tmp_20 = add i22 %tmp_cast, 1
  %tmp_25 = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_20, i32 1, i32 21)
  %tmp_s = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_25, i1 false)
  %p_0353_1 = xor i22 %tmp_s, -2097152
  %tmp_53 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_20, i32 21)
  %tmp_28_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_53, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_28_1, 3145728
  %q_V_1_1 = select i1 %tmp_53, i3 -2, i3 2
  %tmp_55 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_57 = shl i23 %p_0353_1_1, 1
  %tmp_59 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_21 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_59, i22 0)
  %tmp_22 = add i23 %tmp_21, -1572864
  %s_V_1_2 = sub i23 %tmp_57, %tmp_22
  %tmp1 = add i23 %tmp_57, -2621440
  %s_V_2_2 = add i23 %tmp1, %tmp_21
  %p_0305_1_in_in_2 = select i1 %tmp_55, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_55, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_61 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_63 = shl i23 %p_0353_1_2, 1
  %r_V_2_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_34_3 = or i23 %r_V_2_3, 262144
  %s_V_1_3 = sub i23 %tmp_63, %tmp_34_3
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_37_3 = or i23 %r_V_4_3, 786432
  %s_V_2_3 = add i23 %tmp_37_3, %tmp_63
  %p_0353_1_3 = select i1 %tmp_61, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_26 = select i1 %tmp_61, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_26, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_65 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_67 = shl i23 %p_0353_1_3, 1
  %r_V_2_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_34_4 = or i23 %r_V_2_4, 131072
  %s_V_1_4 = sub i23 %tmp_67, %tmp_34_4
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_26, i20 0)
  %tmp_37_4 = or i23 %r_V_4_4, 393216
  %s_V_2_4 = add i23 %tmp_37_4, %tmp_67
  %p_0353_1_4 = select i1 %tmp_65, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_27 = select i1 %tmp_65, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_27, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_69 = shl i23 %p_0353_1_4, 1
  %r_V_2_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_34_5 = or i23 %r_V_2_5, 65536
  %s_V_1_5 = sub i23 %tmp_69, %tmp_34_5
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_27, i19 0)
  %tmp_37_5 = or i23 %r_V_4_5, 196608
  %s_V_2_5 = add i23 %tmp_37_5, %tmp_69
  %p_0353_1_5 = select i1 %tmp_68, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_28 = select i1 %tmp_68, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_28, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_74 = shl i23 %p_0353_1_5, 1
  %r_V_2_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_34_6 = or i23 %r_V_2_6, 32768
  %s_V_1_6 = sub i23 %tmp_74, %tmp_34_6
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_28, i18 0)
  %tmp_37_6 = or i23 %r_V_4_6, 98304
  %s_V_2_6 = add i23 %tmp_37_6, %tmp_74
  %p_0353_1_6 = select i1 %tmp_70, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_29 = select i1 %tmp_70, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_29, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_75 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_76 = shl i23 %p_0353_1_6, 1
  %r_V_2_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_34_7 = or i23 %r_V_2_7, 16384
  %s_V_1_7 = sub i23 %tmp_76, %tmp_34_7
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_29, i17 0)
  %tmp_37_7 = or i23 %r_V_4_7, 49152
  %s_V_2_7 = add i23 %tmp_37_7, %tmp_76
  %p_0353_1_7 = select i1 %tmp_75, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_30 = select i1 %tmp_75, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_30, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_77 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_78 = shl i23 %p_0353_1_7, 1
  %r_V_2_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_34_8 = or i23 %r_V_2_8, 8192
  %s_V_1_8 = sub i23 %tmp_78, %tmp_34_8
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_30, i16 0)
  %tmp_37_8 = or i23 %r_V_4_8, 24576
  %s_V_2_8 = add i23 %tmp_37_8, %tmp_78
  %p_0353_1_8 = select i1 %tmp_77, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_31 = select i1 %tmp_77, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_31, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_79 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_80 = shl i23 %p_0353_1_8, 1
  %r_V_2_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_34_9 = or i23 %r_V_2_9, 4096
  %s_V_1_9 = sub i23 %tmp_80, %tmp_34_9
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_31, i15 0)
  %tmp_37_9 = or i23 %r_V_4_9, 12288
  %s_V_2_9 = add i23 %tmp_37_9, %tmp_80
  %p_0353_1_9 = select i1 %tmp_79, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_32 = select i1 %tmp_79, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_32, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_81 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_82 = shl i23 %p_0353_1_9, 1
  %r_V_2_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_34_s = or i23 %r_V_2_s, 2048
  %s_V_1_s = sub i23 %tmp_82, %tmp_34_s
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_32, i14 0)
  %tmp_37_s = or i23 %r_V_4_s, 6144
  %s_V_2_s = add i23 %tmp_37_s, %tmp_82
  %p_0353_1_s = select i1 %tmp_81, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_33 = select i1 %tmp_81, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_33, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_83 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_84 = shl i23 %p_0353_1_s, 1
  %r_V_2_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_34_1 = or i23 %r_V_2_1, 1024
  %s_V_1_1 = sub i23 %tmp_84, %tmp_34_1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_33, i13 0)
  %tmp_37_1 = or i23 %r_V_4_1, 3072
  %s_V_2_1 = add i23 %tmp_37_1, %tmp_84
  %p_0353_1_10 = select i1 %tmp_83, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_34 = select i1 %tmp_83, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_34, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_85 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_86 = shl i23 %p_0353_1_10, 1
  %r_V_2_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_34_2 = or i23 %r_V_2_2, 512
  %s_V_1_10 = sub i23 %tmp_86, %tmp_34_2
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_34, i12 0)
  %tmp_37_2 = or i23 %r_V_4_2, 1536
  %s_V_2_10 = add i23 %tmp_37_2, %tmp_86
  %p_0353_1_11 = select i1 %tmp_85, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_35 = select i1 %tmp_85, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_35, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_87 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_88 = shl i23 %p_0353_1_11, 1
  %r_V_1_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_34_10 = or i23 %r_V_1_s, 256
  %s_V_1_11 = sub i23 %tmp_88, %tmp_34_10
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_35, i11 0)
  %tmp_37_10 = or i23 %r_V_3_s, 768
  %s_V_2_11 = add i23 %tmp_37_10, %tmp_88
  %p_0353_1_12 = select i1 %tmp_87, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_36 = select i1 %tmp_87, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_36, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_89 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_90 = shl i23 %p_0353_1_12, 1
  %r_V_1_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_34_11 = or i23 %r_V_1_1, 128
  %s_V_1_12 = sub i23 %tmp_90, %tmp_34_11
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_36, i10 0)
  %tmp_37_11 = or i23 %r_V_3_1, 384
  %s_V_2_12 = add i23 %tmp_37_11, %tmp_90
  %p_0353_1_13 = select i1 %tmp_89, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_37 = select i1 %tmp_89, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_37, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_91 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_92 = shl i23 %p_0353_1_13, 1
  %r_V_1_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_34_12 = or i23 %r_V_1_2, 64
  %s_V_1_13 = sub i23 %tmp_92, %tmp_34_12
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_37, i9 0)
  %tmp_37_12 = or i23 %r_V_3_2, 192
  %s_V_2_13 = add i23 %tmp_37_12, %tmp_92
  %p_0353_1_14 = select i1 %tmp_91, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_38 = select i1 %tmp_91, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_38, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_93 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_94 = shl i23 %p_0353_1_14, 1
  %r_V_1_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_34_13 = or i23 %r_V_1_3, 32
  %s_V_1_14 = sub i23 %tmp_94, %tmp_34_13
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_38, i8 0)
  %tmp_37_13 = or i23 %r_V_3_3, 96
  %s_V_2_14 = add i23 %tmp_37_13, %tmp_94
  %p_0353_1_15 = select i1 %tmp_93, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_39 = select i1 %tmp_93, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_39, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_95 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_96 = shl i23 %p_0353_1_15, 1
  %r_V_1_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_34_14 = or i23 %r_V_1_4, 16
  %s_V_1_15 = sub i23 %tmp_96, %tmp_34_14
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_39, i7 0)
  %tmp_37_14 = or i23 %r_V_3_4, 48
  %s_V_2_15 = add i23 %tmp_37_14, %tmp_96
  %p_0353_1_16 = select i1 %tmp_95, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_40 = select i1 %tmp_95, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_40, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_97 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_98 = shl i23 %p_0353_1_16, 1
  %r_V_1_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_34_15 = or i23 %r_V_1_5, 8
  %s_V_1_16 = sub i23 %tmp_98, %tmp_34_15
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_40, i6 0)
  %tmp_37_15 = or i23 %r_V_3_5, 24
  %s_V_2_16 = add i23 %tmp_37_15, %tmp_98
  %p_0353_1_17 = select i1 %tmp_97, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_41 = select i1 %tmp_97, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_41, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_99 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_100 = shl i23 %p_0353_1_17, 1
  %r_V_1_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_34_16 = or i23 %r_V_1_6, 4
  %s_V_1_17 = sub i23 %tmp_100, %tmp_34_16
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_41, i5 0)
  %tmp_37_16 = or i23 %r_V_3_6, 12
  %s_V_2_17 = add i23 %tmp_37_16, %tmp_100
  %p_0353_1_18 = select i1 %tmp_99, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_42 = select i1 %tmp_99, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_42, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_101 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_102 = shl i23 %p_0353_1_18, 1
  %r_V_1_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_34_17 = or i23 %r_V_1_7, 2
  %s_V_1_18 = sub i23 %tmp_102, %tmp_34_17
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_42, i4 0)
  %tmp_37_17 = or i23 %r_V_3_7, 6
  %s_V_2_18 = add i23 %tmp_37_17, %tmp_102
  %p_0353_1_19 = select i1 %tmp_101, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_43 = select i1 %tmp_101, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_43, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_103 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_104 = shl i23 %p_0353_1_19, 1
  %r_V_1_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_2_10 = or i23 %r_V_1_8, 1
  %s_V_1_19 = sub i23 %tmp_104, %r_V_2_10
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_43, i3 0)
  %r_V_4_10 = or i23 %r_V_3_8, 3
  %s_V_2_19 = add i23 %r_V_4_10, %tmp_104
  %p_0353_1_20 = select i1 %tmp_103, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_105 = trunc i21 %q_V_1_19 to i20
  %tmp_106 = shl i20 %tmp_43, 1
  %tmp_44 = select i1 %tmp_103, i20 %tmp_106, i20 %tmp_105
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_44, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_10 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_45 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_46 = select i1 %tmp_10, i20 %tmp_45, i20 %tmp_44
  ret i20 %tmp_46
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

define weak i30 @_ssdm_op_Read.ap_auto.i30(i30) {
entry:
  ret i30 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_22 = trunc i96 %empty to i8
  ret i8 %empty_22
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_23 = trunc i32 %empty to i8
  ret i8 %empty_23
}

define weak i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_24 = trunc i17 %empty to i8
  ret i8 %empty_24
}

define weak i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone {
entry:
  %empty = call i96 @llvm.part.select.i96(i96 %0, i32 %1, i32 %2)
  %empty_25 = trunc i96 %empty to i32
  ret i32 %empty_25
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_26 = trunc i22 %empty to i21
  ret i21 %empty_26
}

define weak i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_27 = trunc i21 %empty to i20
  ret i20 %empty_27
}

define weak i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_28 = trunc i8 %empty to i2
  ret i2 %empty_28
}

define weak i19 @_ssdm_op_PartSelect.i19.i30.i32.i32(i30, i32, i32) nounwind readnone {
entry:
  %empty = call i30 @llvm.part.select.i30(i30 %0, i32 %1, i32 %2)
  %empty_29 = trunc i30 %empty to i19
  ret i19 %empty_29
}

declare i19 @_ssdm_op_PartSelect.i19.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_30 = trunc i20 %empty to i12
  ret i12 %empty_30
}

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_31 = shl i23 1, %empty
  %empty_32 = and i23 %0, %empty_31
  %empty_33 = icmp ne i23 %empty_32, 0
  ret i1 %empty_33
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_34 = shl i22 1, %empty
  %empty_35 = and i22 %0, %empty_34
  %empty_36 = icmp ne i22 %empty_35, 0
  ret i1 %empty_36
}

declare i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_37 = shl i17 1, %empty
  %empty_38 = and i17 %0, %empty_37
  %empty_39 = icmp ne i17 %empty_38, 0
  ret i1 %empty_39
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_40 = zext i1 %1 to i9
  %empty_41 = shl i9 %empty, 1
  %empty_42 = or i9 %empty_41, %empty_40
  ret i9 %empty_42
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_43 = zext i1 %1 to i8
  %empty_44 = shl i8 %empty, 1
  %empty_45 = or i8 %empty_44, %empty_43
  ret i8 %empty_45
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_46 = zext i1 %1 to i7
  %empty_47 = shl i7 %empty, 1
  %empty_48 = or i7 %empty_47, %empty_46
  ret i7 %empty_48
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2, i5) nounwind readnone {
entry:
  %empty = zext i2 %0 to i7
  %empty_49 = zext i5 %1 to i7
  %empty_50 = shl i7 %empty, 5
  %empty_51 = or i7 %empty_50, %empty_49
  ret i7 %empty_51
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_52 = zext i1 %1 to i6
  %empty_53 = shl i6 %empty, 1
  %empty_54 = or i6 %empty_53, %empty_52
  ret i6 %empty_54
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_55 = zext i1 %1 to i5
  %empty_56 = shl i5 %empty, 1
  %empty_57 = or i5 %empty_56, %empty_55
  ret i5 %empty_57
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_58 = zext i1 %1 to i4
  %empty_59 = shl i4 %empty, 1
  %empty_60 = or i4 %empty_59, %empty_58
  ret i4 %empty_60
}

define weak i28 @_ssdm_op_BitConcatenate.i28.i18.i10(i18, i10) nounwind readnone {
entry:
  %empty = zext i18 %0 to i28
  %empty_61 = zext i10 %1 to i28
  %empty_62 = shl i28 %empty, 10
  %empty_63 = or i28 %empty_62, %empty_61
  ret i28 %empty_63
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i18.i9(i18, i9) nounwind readnone {
entry:
  %empty = zext i18 %0 to i27
  %empty_64 = zext i9 %1 to i27
  %empty_65 = shl i27 %empty, 9
  %empty_66 = or i27 %empty_65, %empty_64
  ret i27 %empty_66
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17, i10) nounwind readnone {
entry:
  %empty = zext i17 %0 to i27
  %empty_67 = zext i10 %1 to i27
  %empty_68 = shl i27 %empty, 10
  %empty_69 = or i27 %empty_68, %empty_67
  ret i27 %empty_69
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17, i8) nounwind readnone {
entry:
  %empty = zext i17 %0 to i25
  %empty_70 = zext i8 %1 to i25
  %empty_71 = shl i25 %empty, 8
  %empty_72 = or i25 %empty_71, %empty_70
  ret i25 %empty_72
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_73 = zext i14 %1 to i23
  %empty_74 = shl i23 %empty, 14
  %empty_75 = or i23 %empty_74, %empty_73
  ret i23 %empty_75
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8, i15) nounwind readnone {
entry:
  %empty = zext i8 %0 to i23
  %empty_76 = zext i15 %1 to i23
  %empty_77 = shl i23 %empty, 15
  %empty_78 = or i23 %empty_77, %empty_76
  ret i23 %empty_78
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7, i16) nounwind readnone {
entry:
  %empty = zext i7 %0 to i23
  %empty_79 = zext i16 %1 to i23
  %empty_80 = shl i23 %empty, 16
  %empty_81 = or i23 %empty_80, %empty_79
  ret i23 %empty_81
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6, i17) nounwind readnone {
entry:
  %empty = zext i6 %0 to i23
  %empty_82 = zext i17 %1 to i23
  %empty_83 = shl i23 %empty, 17
  %empty_84 = or i23 %empty_83, %empty_82
  ret i23 %empty_84
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5, i18) nounwind readnone {
entry:
  %empty = zext i5 %0 to i23
  %empty_85 = zext i18 %1 to i23
  %empty_86 = shl i23 %empty, 18
  %empty_87 = or i23 %empty_86, %empty_85
  ret i23 %empty_87
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4, i19) nounwind readnone {
entry:
  %empty = zext i4 %0 to i23
  %empty_88 = zext i19 %1 to i23
  %empty_89 = shl i23 %empty, 19
  %empty_90 = or i23 %empty_89, %empty_88
  ret i23 %empty_90
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3, i20) nounwind readnone {
entry:
  %empty = zext i3 %0 to i23
  %empty_91 = zext i20 %1 to i23
  %empty_92 = shl i23 %empty, 20
  %empty_93 = or i23 %empty_92, %empty_91
  ret i23 %empty_93
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23
  %empty_94 = zext i1 %1 to i23
  %empty_95 = shl i23 %empty, 1
  %empty_96 = or i23 %empty_95, %empty_94
  ret i23 %empty_96
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_97 = zext i2 %1 to i23
  %empty_98 = shl i23 %empty, 2
  %empty_99 = or i23 %empty_98, %empty_97
  ret i23 %empty_99
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20, i3) nounwind readnone {
entry:
  %empty = zext i20 %0 to i23
  %empty_100 = zext i3 %1 to i23
  %empty_101 = shl i23 %empty, 3
  %empty_102 = or i23 %empty_101, %empty_100
  ret i23 %empty_102
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19, i4) nounwind readnone {
entry:
  %empty = zext i19 %0 to i23
  %empty_103 = zext i4 %1 to i23
  %empty_104 = shl i23 %empty, 4
  %empty_105 = or i23 %empty_104, %empty_103
  ret i23 %empty_105
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18, i5) nounwind readnone {
entry:
  %empty = zext i18 %0 to i23
  %empty_106 = zext i5 %1 to i23
  %empty_107 = shl i23 %empty, 5
  %empty_108 = or i23 %empty_107, %empty_106
  ret i23 %empty_108
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17, i6) nounwind readnone {
entry:
  %empty = zext i17 %0 to i23
  %empty_109 = zext i6 %1 to i23
  %empty_110 = shl i23 %empty, 6
  %empty_111 = or i23 %empty_110, %empty_109
  ret i23 %empty_111
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16, i7) nounwind readnone {
entry:
  %empty = zext i16 %0 to i23
  %empty_112 = zext i7 %1 to i23
  %empty_113 = shl i23 %empty, 7
  %empty_114 = or i23 %empty_113, %empty_112
  ret i23 %empty_114
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_115 = zext i8 %1 to i23
  %empty_116 = shl i23 %empty, 8
  %empty_117 = or i23 %empty_116, %empty_115
  ret i23 %empty_117
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14, i9) nounwind readnone {
entry:
  %empty = zext i14 %0 to i23
  %empty_118 = zext i9 %1 to i23
  %empty_119 = shl i23 %empty, 9
  %empty_120 = or i23 %empty_119, %empty_118
  ret i23 %empty_120
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_121 = zext i10 %1 to i23
  %empty_122 = shl i23 %empty, 10
  %empty_123 = or i23 %empty_122, %empty_121
  ret i23 %empty_123
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12, i11) nounwind readnone {
entry:
  %empty = zext i12 %0 to i23
  %empty_124 = zext i11 %1 to i23
  %empty_125 = shl i23 %empty, 11
  %empty_126 = or i23 %empty_125, %empty_124
  ret i23 %empty_126
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11, i12) nounwind readnone {
entry:
  %empty = zext i11 %0 to i23
  %empty_127 = zext i12 %1 to i23
  %empty_128 = shl i23 %empty, 12
  %empty_129 = or i23 %empty_128, %empty_127
  ret i23 %empty_129
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10, i13) nounwind readnone {
entry:
  %empty = zext i10 %0 to i23
  %empty_130 = zext i13 %1 to i23
  %empty_131 = shl i23 %empty, 13
  %empty_132 = or i23 %empty_131, %empty_130
  ret i23 %empty_132
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1, i22) nounwind readnone {
entry:
  %empty = zext i1 %0 to i23
  %empty_133 = zext i22 %1 to i23
  %empty_134 = shl i23 %empty, 22
  %empty_135 = or i23 %empty_134, %empty_133
  ret i23 %empty_135
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_136 = zext i1 %1 to i22
  %empty_137 = shl i22 %empty, 1
  %empty_138 = or i22 %empty_137, %empty_136
  ret i22 %empty_138
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_139 = zext i1 %1 to i21
  %empty_140 = shl i21 %empty, 1
  %empty_141 = or i21 %empty_140, %empty_139
  ret i21 %empty_141
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_142 = zext i1 %1 to i20
  %empty_143 = shl i20 %empty, 1
  %empty_144 = or i20 %empty_143, %empty_142
  ret i20 %empty_144
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18, i1) nounwind readnone {
entry:
  %empty = zext i18 %0 to i19
  %empty_145 = zext i1 %1 to i19
  %empty_146 = shl i19 %empty, 1
  %empty_147 = or i19 %empty_146, %empty_145
  ret i19 %empty_147
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_148 = zext i1 %1 to i18
  %empty_149 = shl i18 %empty, 1
  %empty_150 = or i18 %empty_149, %empty_148
  ret i18 %empty_150
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_151 = zext i1 %1 to i17
  %empty_152 = shl i17 %empty, 1
  %empty_153 = or i17 %empty_152, %empty_151
  ret i17 %empty_153
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_154 = zext i1 %1 to i16
  %empty_155 = shl i16 %empty, 1
  %empty_156 = or i16 %empty_155, %empty_154
  ret i16 %empty_156
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_157 = zext i1 %1 to i15
  %empty_158 = shl i15 %empty, 1
  %empty_159 = or i15 %empty_158, %empty_157
  ret i15 %empty_159
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13, i1) nounwind readnone {
entry:
  %empty = zext i13 %0 to i14
  %empty_160 = zext i1 %1 to i14
  %empty_161 = shl i14 %empty, 1
  %empty_162 = or i14 %empty_161, %empty_160
  ret i14 %empty_162
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_163 = zext i1 %1 to i13
  %empty_164 = shl i13 %empty, 1
  %empty_165 = or i13 %empty_164, %empty_163
  ret i13 %empty_165
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_166 = zext i1 %1 to i12
  %empty_167 = shl i12 %empty, 1
  %empty_168 = or i12 %empty_167, %empty_166
  ret i12 %empty_168
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_169 = zext i1 %1 to i11
  %empty_170 = shl i11 %empty, 1
  %empty_171 = or i11 %empty_170, %empty_169
  ret i11 %empty_171
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_172 = zext i1 %1 to i10
  %empty_173 = shl i10 %empty, 1
  %empty_174 = or i10 %empty_173, %empty_172
  ret i10 %empty_174
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !7, !13, !17, !17, !23, !26, !26, !17, !28, !31, !17, !17, !17, !34, !34, !17, !17, !36, !39, !26, !26, !17, !41, !17, !17, !17, !43, !43, !34, !34, !45, !45, !47, !49, !51, !49, !53, !17, !53, !17, !26, !26, !17, !54, !56, !56, !58, !43, !43, !59, !17, !61, !61, !65, !17, !17, !17, !43, !43, !67, !67, !39, !41, !17, !17, !34, !34, !43, !43, !31, !34, !34, !69, !71, !71, !17, !17, !47, !17, !72, !73, !75, !75, !77, !79, !82, !17, !17, !17, !75, !75, !43, !43, !65, !84, !84, !47, !49, !17, !17, !17, !86, !88, !88, !94, !94, !96, !17, !17, !98, !98, !17, !17, !17, !99, !99, !99, !101, !103, !103, !17, !104, !104, !17, !17, !101, !103, !103, !17, !17, !17, !106, !106, !108, !110, !110, !112, !112, !103, !17, !17, !114}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!116}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"pixel", metadata !"color"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"pixel"}
!13 = metadata !{null, metadata !14, metadata !2, metadata !15, metadata !4, metadata !16, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!15 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*", metadata !"int*"}
!16 = metadata !{metadata !"kernel_arg_name", metadata !"pixelArray", metadata !"selectedColorArray"}
!17 = metadata !{null, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !6}
!18 = metadata !{metadata !"kernel_arg_addr_space"}
!19 = metadata !{metadata !"kernel_arg_access_qual"}
!20 = metadata !{metadata !"kernel_arg_type"}
!21 = metadata !{metadata !"kernel_arg_type_qual"}
!22 = metadata !{metadata !"kernel_arg_name"}
!23 = metadata !{null, metadata !8, metadata !9, metadata !24, metadata !11, metadata !25, metadata !6}
!24 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !27, metadata !6}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!34 = metadata !{null, metadata !8, metadata !9, metadata !35, metadata !11, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!41 = metadata !{null, metadata !1, metadata !2, metadata !42, metadata !4, metadata !33, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !27, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !27, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!47 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !33, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!49 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !50, metadata !6}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !33, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !50, metadata !6}
!54 = metadata !{null, metadata !1, metadata !2, metadata !55, metadata !4, metadata !33, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !27, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !50, metadata !6}
!59 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!61 = metadata !{null, metadata !62, metadata !2, metadata !63, metadata !4, metadata !64, metadata !6}
!62 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !66, metadata !4, metadata !33, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !27, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !50, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!71 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !27, metadata !6}
!72 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !40, metadata !6}
!73 = metadata !{null, metadata !1, metadata !2, metadata !74, metadata !4, metadata !33, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !27, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !33, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!79 = metadata !{null, metadata !1, metadata !2, metadata !80, metadata !4, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!82 = metadata !{null, metadata !1, metadata !2, metadata !83, metadata !4, metadata !33, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !27, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!86 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !87, metadata !6}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!88 = metadata !{null, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !38, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !50, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!98 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !38, metadata !6}
!99 = metadata !{null, metadata !8, metadata !9, metadata !100, metadata !11, metadata !27, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!101 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !50, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!103 = metadata !{null, metadata !8, metadata !9, metadata !102, metadata !11, metadata !27, metadata !6}
!104 = metadata !{null, metadata !8, metadata !9, metadata !105, metadata !11, metadata !27, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!106 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !107, metadata !6}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!108 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !109, metadata !6}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!110 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !111, metadata !6}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!112 = metadata !{null, metadata !8, metadata !9, metadata !113, metadata !11, metadata !27, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!114 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !115, metadata !6}
!115 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!116 = metadata !{metadata !117, [1 x i32]* @llvm_global_ctors_0}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 31, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"llvm.global_ctors.0", metadata !121, metadata !"", i32 0, i32 31}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 0, i32 1}
!123 = metadata !{metadata !124, metadata !130, metadata !135}
!124 = metadata !{i32 0, i32 31, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"pixelArray", metadata !127, metadata !"int", i32 0, i32 31}
!127 = metadata !{metadata !128, metadata !129}
!128 = metadata !{i32 0, i32 0, i32 2}
!129 = metadata !{i32 0, i32 2, i32 1}
!130 = metadata !{i32 32, i32 63, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"pixelArray", metadata !133, metadata !"int", i32 0, i32 31}
!133 = metadata !{metadata !134, metadata !129}
!134 = metadata !{i32 1, i32 1, i32 2}
!135 = metadata !{i32 64, i32 95, metadata !136}
!136 = metadata !{metadata !137}
!137 = metadata !{metadata !"pixelArray", metadata !138, metadata !"int", i32 0, i32 31}
!138 = metadata !{metadata !139, metadata !129}
!139 = metadata !{i32 2, i32 2, i32 2}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 31, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"selectedColorArray", metadata !144, metadata !"int", i32 0, i32 31}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 5, i32 1}
