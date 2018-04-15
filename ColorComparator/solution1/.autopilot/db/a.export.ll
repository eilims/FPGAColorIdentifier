; ModuleID = 'C:/Users/db217620/Repositories/FPGAColorIdentifier/ColorComparator/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getPixelClassificati = internal unnamed_addr constant [23 x i8] c"getPixelClassification\00"
@getColorDistance_OC_s = internal unnamed_addr constant [24 x i8] c"getColorDistance.region\00"
@p_color_array = internal unnamed_addr constant [6 x i17] [i17 -65536, i17 65280, i17 255, i17 -65281, i17 -256, i17 65535]
@p_str12 = private unnamed_addr constant [17 x i8] c"PIXEL_COLOR_LOOP\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i29 @llvm.part.select.i29(i29, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare i20 @llvm.part.select.i20(i20, i32, i32) nounwind readnone

declare i17 @llvm.part.select.i17(i17, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getPixelClassification(i32 %pixel) nounwind uwtable readnone {
codeRepl:
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %pixel) nounwind, !map !119
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !125
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @getPixelClassificati) nounwind
  %pixel_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %pixel) nounwind
  %minimumDistanceIndex = call fastcc i32 @Loop_PIXEL_COLOR_LOO(i32 %pixel_read) nounwind
  %tmp = call fastcc i32 @"__ColorComparator/Co"(i32 %minimumDistanceIndex) nounwind
  ret i32 %tmp
}

define internal fastcc i20 @fxp_sqrt(i29 %in_val_V_read) readnone {
_ZlsILi23ELb1EE11ap_int_baseIXT_EXT0_EXleT_Li64EEERKS1_i.exit16.0_ifconv:
  %in_val_V_read_1 = call i29 @_ssdm_op_Read.ap_auto.i29(i29 %in_val_V_read)
  %tmp_5 = call i18 @_ssdm_op_PartSelect.i18.i29.i32.i32(i29 %in_val_V_read_1, i32 11, i32 28)
  %tmp_7 = sext i18 %tmp_5 to i21
  %tmp_cast = zext i21 %tmp_7 to i22
  %tmp_1 = add i22 %tmp_cast, 1
  %tmp_4 = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_1, i32 1, i32 21)
  %tmp_6 = call i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21 %tmp_4, i1 false)
  %p_0353_1 = xor i22 %tmp_6, -2097152
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %tmp_1, i32 21)
  %tmp_18_1 = call i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22 %p_0353_1, i1 false)
  %p_s = select i1 %tmp_8, i3 -4, i3 0
  %p_0353_1_1 = add i23 %tmp_18_1, 3145728
  %q_V_1_1 = select i1 %tmp_8, i3 -2, i3 2
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_1, i32 22)
  %tmp_11 = shl i23 %p_0353_1_1, 1
  %tmp_13 = call i1 @_ssdm_op_BitSelect.i1.i22.i32(i22 %p_0353_1, i32 21)
  %tmp_2 = call i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1 %tmp_13, i22 0)
  %tmp_3 = add i23 %tmp_2, -1572864
  %s_V_1_2 = sub i23 %tmp_11, %tmp_3
  %tmp = add i23 %tmp_11, -2621440
  %s_V_2_2 = add i23 %tmp_2, %tmp
  %p_0305_1_in_in_2 = select i1 %tmp_10, i3 %p_s, i3 %q_V_1_1
  %p_0353_1_2 = select i1 %tmp_10, i23 %s_V_2_2, i23 %s_V_1_2
  %q_V_1_2 = or i3 %p_0305_1_in_in_2, 1
  %tmp_15 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_2, i32 22)
  %tmp_17 = shl i23 %p_0353_1_2, 1
  %r_V_2_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %q_V_1_2, i20 0)
  %tmp_24_3 = or i23 %r_V_2_3, 262144
  %s_V_1_3 = sub i23 %tmp_17, %tmp_24_3
  %r_V_4_3 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %p_0305_1_in_in_2, i20 0)
  %tmp_27_3 = or i23 %r_V_4_3, 786432
  %s_V_2_3 = add i23 %tmp_17, %tmp_27_3
  %p_0353_1_3 = select i1 %tmp_15, i23 %s_V_2_3, i23 %s_V_1_3
  %tmp_s = select i1 %tmp_15, i3 %p_0305_1_in_in_2, i3 %q_V_1_2
  %q_star_V_3 = call i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3 %tmp_s, i1 false)
  %q_V_1_3 = or i4 %q_star_V_3, 1
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_3, i32 22)
  %tmp_21 = shl i23 %p_0353_1_3, 1
  %r_V_2_4 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %q_V_1_3, i19 0)
  %tmp_24_4 = or i23 %r_V_2_4, 131072
  %s_V_1_4 = sub i23 %tmp_21, %tmp_24_4
  %r_V_4_4 = call i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3 %tmp_s, i20 0)
  %tmp_27_4 = or i23 %r_V_4_4, 393216
  %s_V_2_4 = add i23 %tmp_21, %tmp_27_4
  %p_0353_1_4 = select i1 %tmp_19, i23 %s_V_2_4, i23 %s_V_1_4
  %tmp_12 = select i1 %tmp_19, i4 %q_star_V_3, i4 %q_V_1_3
  %q_star_V_4 = call i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4 %tmp_12, i1 false)
  %q_V_1_4 = or i5 %q_star_V_4, 1
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_4, i32 22)
  %tmp_25 = shl i23 %p_0353_1_4, 1
  %r_V_2_5 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %q_V_1_4, i18 0)
  %tmp_24_5 = or i23 %r_V_2_5, 65536
  %s_V_1_5 = sub i23 %tmp_25, %tmp_24_5
  %r_V_4_5 = call i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4 %tmp_12, i19 0)
  %tmp_27_5 = or i23 %r_V_4_5, 196608
  %s_V_2_5 = add i23 %tmp_25, %tmp_27_5
  %p_0353_1_5 = select i1 %tmp_23, i23 %s_V_2_5, i23 %s_V_1_5
  %tmp_14 = select i1 %tmp_23, i5 %q_star_V_4, i5 %q_V_1_4
  %q_star_V_5 = call i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5 %tmp_14, i1 false)
  %q_V_1_5 = or i6 %q_star_V_5, 1
  %tmp_27 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_5, i32 22)
  %tmp_29 = shl i23 %p_0353_1_5, 1
  %r_V_2_6 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %q_V_1_5, i17 0)
  %tmp_24_6 = or i23 %r_V_2_6, 32768
  %s_V_1_6 = sub i23 %tmp_29, %tmp_24_6
  %r_V_4_6 = call i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5 %tmp_14, i18 0)
  %tmp_27_6 = or i23 %r_V_4_6, 98304
  %s_V_2_6 = add i23 %tmp_29, %tmp_27_6
  %p_0353_1_6 = select i1 %tmp_27, i23 %s_V_2_6, i23 %s_V_1_6
  %tmp_16 = select i1 %tmp_27, i6 %q_star_V_5, i6 %q_V_1_5
  %q_star_V_6 = call i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6 %tmp_16, i1 false)
  %q_V_1_6 = or i7 %q_star_V_6, 1
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_6, i32 22)
  %tmp_33 = shl i23 %p_0353_1_6, 1
  %r_V_2_7 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %q_V_1_6, i16 0)
  %tmp_24_7 = or i23 %r_V_2_7, 16384
  %s_V_1_7 = sub i23 %tmp_33, %tmp_24_7
  %r_V_4_7 = call i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6 %tmp_16, i17 0)
  %tmp_27_7 = or i23 %r_V_4_7, 49152
  %s_V_2_7 = add i23 %tmp_33, %tmp_27_7
  %p_0353_1_7 = select i1 %tmp_31, i23 %s_V_2_7, i23 %s_V_1_7
  %tmp_18 = select i1 %tmp_31, i7 %q_star_V_6, i7 %q_V_1_6
  %q_star_V_7 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_18, i1 false)
  %q_V_1_7 = or i8 %q_star_V_7, 1
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_7, i32 22)
  %tmp_37 = shl i23 %p_0353_1_7, 1
  %r_V_2_8 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %q_V_1_7, i15 0)
  %tmp_24_8 = or i23 %r_V_2_8, 8192
  %s_V_1_8 = sub i23 %tmp_37, %tmp_24_8
  %r_V_4_8 = call i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7 %tmp_18, i16 0)
  %tmp_27_8 = or i23 %r_V_4_8, 24576
  %s_V_2_8 = add i23 %tmp_37, %tmp_27_8
  %p_0353_1_8 = select i1 %tmp_35, i23 %s_V_2_8, i23 %s_V_1_8
  %tmp_20 = select i1 %tmp_35, i8 %q_star_V_7, i8 %q_V_1_7
  %q_star_V_8 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_20, i1 false)
  %q_V_1_8 = or i9 %q_star_V_8, 1
  %tmp_39 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_8, i32 22)
  %tmp_41 = shl i23 %p_0353_1_8, 1
  %r_V_2_9 = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %q_V_1_8, i14 0)
  %tmp_24_9 = or i23 %r_V_2_9, 4096
  %s_V_1_9 = sub i23 %tmp_41, %tmp_24_9
  %r_V_4_9 = call i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8 %tmp_20, i15 0)
  %tmp_27_9 = or i23 %r_V_4_9, 12288
  %s_V_2_9 = add i23 %tmp_41, %tmp_27_9
  %p_0353_1_9 = select i1 %tmp_39, i23 %s_V_2_9, i23 %s_V_1_9
  %tmp_22 = select i1 %tmp_39, i9 %q_star_V_8, i9 %q_V_1_8
  %q_star_V_9 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_22, i1 false)
  %q_V_1_9 = or i10 %q_star_V_9, 1
  %tmp_43 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_9, i32 22)
  %tmp_45 = shl i23 %p_0353_1_9, 1
  %r_V_2_s = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %q_V_1_9, i13 0)
  %tmp_24_s = or i23 %r_V_2_s, 2048
  %s_V_1_s = sub i23 %tmp_45, %tmp_24_s
  %r_V_4_s = call i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9 %tmp_22, i14 0)
  %tmp_27_s = or i23 %r_V_4_s, 6144
  %s_V_2_s = add i23 %tmp_45, %tmp_27_s
  %p_0353_1_s = select i1 %tmp_43, i23 %s_V_2_s, i23 %s_V_1_s
  %tmp_24 = select i1 %tmp_43, i10 %q_star_V_9, i10 %q_V_1_9
  %q_star_V_s = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_24, i1 false)
  %q_V_1_s = or i11 %q_star_V_s, 1
  %tmp_47 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_s, i32 22)
  %tmp_48 = shl i23 %p_0353_1_s, 1
  %r_V_2_1 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %q_V_1_s, i12 0)
  %tmp_24_1 = or i23 %r_V_2_1, 1024
  %s_V_1_1 = sub i23 %tmp_48, %tmp_24_1
  %r_V_4_1 = call i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10 %tmp_24, i13 0)
  %tmp_27_1 = or i23 %r_V_4_1, 3072
  %s_V_2_1 = add i23 %tmp_48, %tmp_27_1
  %p_0353_1_10 = select i1 %tmp_47, i23 %s_V_2_1, i23 %s_V_1_1
  %tmp_26 = select i1 %tmp_47, i11 %q_star_V_s, i11 %q_V_1_s
  %q_star_V_1 = call i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11 %tmp_26, i1 false)
  %q_V_1_10 = or i12 %q_star_V_1, 1
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_10, i32 22)
  %tmp_50 = shl i23 %p_0353_1_10, 1
  %r_V_2_2 = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %q_V_1_10, i11 0)
  %tmp_24_2 = or i23 %r_V_2_2, 512
  %s_V_1_10 = sub i23 %tmp_50, %tmp_24_2
  %r_V_4_2 = call i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11 %tmp_26, i12 0)
  %tmp_27_2 = or i23 %r_V_4_2, 1536
  %s_V_2_10 = add i23 %tmp_50, %tmp_27_2
  %p_0353_1_11 = select i1 %tmp_49, i23 %s_V_2_10, i23 %s_V_1_10
  %tmp_28 = select i1 %tmp_49, i12 %q_star_V_1, i12 %q_V_1_10
  %q_star_V_2 = call i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12 %tmp_28, i1 false)
  %q_V_1_11 = or i13 %q_star_V_2, 1
  %tmp_54 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_11, i32 22)
  %tmp_55 = shl i23 %p_0353_1_11, 1
  %r_V_1_s = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %q_V_1_11, i10 0)
  %tmp_24_10 = or i23 %r_V_1_s, 256
  %s_V_1_11 = sub i23 %tmp_55, %tmp_24_10
  %r_V_3_s = call i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12 %tmp_28, i11 0)
  %tmp_27_10 = or i23 %r_V_3_s, 768
  %s_V_2_11 = add i23 %tmp_55, %tmp_27_10
  %p_0353_1_12 = select i1 %tmp_54, i23 %s_V_2_11, i23 %s_V_1_11
  %tmp_30 = select i1 %tmp_54, i13 %q_star_V_2, i13 %q_V_1_11
  %q_star_V_10 = call i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13 %tmp_30, i1 false)
  %q_V_1_12 = or i14 %q_star_V_10, 1
  %tmp_56 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_12, i32 22)
  %tmp_57 = shl i23 %p_0353_1_12, 1
  %r_V_1_1 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %q_V_1_12, i9 0)
  %tmp_24_11 = or i23 %r_V_1_1, 128
  %s_V_1_12 = sub i23 %tmp_57, %tmp_24_11
  %r_V_3_1 = call i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13 %tmp_30, i10 0)
  %tmp_27_11 = or i23 %r_V_3_1, 384
  %s_V_2_12 = add i23 %tmp_57, %tmp_27_11
  %p_0353_1_13 = select i1 %tmp_56, i23 %s_V_2_12, i23 %s_V_1_12
  %tmp_32 = select i1 %tmp_56, i14 %q_star_V_10, i14 %q_V_1_12
  %q_star_V_11 = call i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14 %tmp_32, i1 false)
  %q_V_1_13 = or i15 %q_star_V_11, 1
  %tmp_58 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_13, i32 22)
  %tmp_59 = shl i23 %p_0353_1_13, 1
  %r_V_1_2 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %q_V_1_13, i8 0)
  %tmp_24_12 = or i23 %r_V_1_2, 64
  %s_V_1_13 = sub i23 %tmp_59, %tmp_24_12
  %r_V_3_2 = call i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14 %tmp_32, i9 0)
  %tmp_27_12 = or i23 %r_V_3_2, 192
  %s_V_2_13 = add i23 %tmp_59, %tmp_27_12
  %p_0353_1_14 = select i1 %tmp_58, i23 %s_V_2_13, i23 %s_V_1_13
  %tmp_34 = select i1 %tmp_58, i15 %q_star_V_11, i15 %q_V_1_13
  %q_star_V_12 = call i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15 %tmp_34, i1 false)
  %q_V_1_14 = or i16 %q_star_V_12, 1
  %tmp_60 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_14, i32 22)
  %tmp_61 = shl i23 %p_0353_1_14, 1
  %r_V_1_3 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %q_V_1_14, i7 0)
  %tmp_24_13 = or i23 %r_V_1_3, 32
  %s_V_1_14 = sub i23 %tmp_61, %tmp_24_13
  %r_V_3_3 = call i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15 %tmp_34, i8 0)
  %tmp_27_13 = or i23 %r_V_3_3, 96
  %s_V_2_14 = add i23 %tmp_61, %tmp_27_13
  %p_0353_1_15 = select i1 %tmp_60, i23 %s_V_2_14, i23 %s_V_1_14
  %tmp_36 = select i1 %tmp_60, i16 %q_star_V_12, i16 %q_V_1_14
  %q_star_V_13 = call i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16 %tmp_36, i1 false)
  %q_V_1_15 = or i17 %q_star_V_13, 1
  %tmp_62 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_15, i32 22)
  %tmp_63 = shl i23 %p_0353_1_15, 1
  %r_V_1_4 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %q_V_1_15, i6 0)
  %tmp_24_14 = or i23 %r_V_1_4, 16
  %s_V_1_15 = sub i23 %tmp_63, %tmp_24_14
  %r_V_3_4 = call i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16 %tmp_36, i7 0)
  %tmp_27_14 = or i23 %r_V_3_4, 48
  %s_V_2_15 = add i23 %tmp_63, %tmp_27_14
  %p_0353_1_16 = select i1 %tmp_62, i23 %s_V_2_15, i23 %s_V_1_15
  %tmp_38 = select i1 %tmp_62, i17 %q_star_V_13, i17 %q_V_1_15
  %q_star_V_14 = call i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17 %tmp_38, i1 false)
  %q_V_1_16 = or i18 %q_star_V_14, 1
  %tmp_64 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_16, i32 22)
  %tmp_65 = shl i23 %p_0353_1_16, 1
  %r_V_1_5 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %q_V_1_16, i5 0)
  %tmp_24_15 = or i23 %r_V_1_5, 8
  %s_V_1_16 = sub i23 %tmp_65, %tmp_24_15
  %r_V_3_5 = call i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17 %tmp_38, i6 0)
  %tmp_27_15 = or i23 %r_V_3_5, 24
  %s_V_2_16 = add i23 %tmp_65, %tmp_27_15
  %p_0353_1_17 = select i1 %tmp_64, i23 %s_V_2_16, i23 %s_V_1_16
  %tmp_40 = select i1 %tmp_64, i18 %q_star_V_14, i18 %q_V_1_16
  %q_star_V_15 = call i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18 %tmp_40, i1 false)
  %q_V_1_17 = or i19 %q_star_V_15, 1
  %tmp_66 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_17, i32 22)
  %tmp_67 = shl i23 %p_0353_1_17, 1
  %r_V_1_6 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %q_V_1_17, i4 0)
  %tmp_24_16 = or i23 %r_V_1_6, 4
  %s_V_1_17 = sub i23 %tmp_67, %tmp_24_16
  %r_V_3_6 = call i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18 %tmp_40, i5 0)
  %tmp_27_16 = or i23 %r_V_3_6, 12
  %s_V_2_17 = add i23 %tmp_67, %tmp_27_16
  %p_0353_1_18 = select i1 %tmp_66, i23 %s_V_2_17, i23 %s_V_1_17
  %tmp_42 = select i1 %tmp_66, i19 %q_star_V_15, i19 %q_V_1_17
  %q_star_V_16 = call i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19 %tmp_42, i1 false)
  %q_V_1_18 = or i20 %q_star_V_16, 1
  %tmp_68 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_18, i32 22)
  %tmp_69 = shl i23 %p_0353_1_18, 1
  %r_V_1_7 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %q_V_1_18, i3 0)
  %tmp_24_17 = or i23 %r_V_1_7, 2
  %s_V_1_18 = sub i23 %tmp_69, %tmp_24_17
  %r_V_3_7 = call i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19 %tmp_42, i4 0)
  %tmp_27_17 = or i23 %r_V_3_7, 6
  %s_V_2_18 = add i23 %tmp_69, %tmp_27_17
  %p_0353_1_19 = select i1 %tmp_68, i23 %s_V_2_18, i23 %s_V_1_18
  %tmp_44 = select i1 %tmp_68, i20 %q_star_V_16, i20 %q_V_1_18
  %q_star_V_17 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_44, i1 false)
  %q_V_1_19 = or i21 %q_star_V_17, 1
  %tmp_70 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_0353_1_19, i32 22)
  %tmp_71 = shl i23 %p_0353_1_19, 1
  %r_V_1_8 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %q_V_1_19, i2 0)
  %r_V_2_10 = or i23 %r_V_1_8, 1
  %s_V_1_19 = sub i23 %tmp_71, %r_V_2_10
  %r_V_3_8 = call i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20 %tmp_44, i3 0)
  %r_V_4_10 = or i23 %r_V_3_8, 3
  %s_V_2_19 = add i23 %tmp_71, %r_V_4_10
  %p_0353_1_20 = select i1 %tmp_70, i23 %s_V_2_19, i23 %s_V_1_19
  %tmp_72 = trunc i21 %q_V_1_19 to i20
  %tmp_73 = shl i20 %tmp_44, 1
  %tmp_46 = select i1 %tmp_70, i20 %tmp_73, i20 %tmp_72
  %q_star_V_18 = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_46, i1 false)
  %q_V_1_20 = or i21 %q_star_V_18, 1
  %tmp_9 = icmp sgt i23 %p_0353_1_20, 0
  %q_V = add i21 %q_V_1_20, 1
  %tmp_51 = call i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21 %q_V, i32 1, i32 20)
  %tmp_52 = select i1 %tmp_9, i20 %tmp_51, i20 %tmp_46
  ret i20 %tmp_52
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

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
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

define weak i29 @_ssdm_op_Read.ap_auto.i29(i29) {
entry:
  ret i29 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i8
  ret i8 %empty_14
}

define weak i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17, i32, i32) nounwind readnone {
entry:
  %empty = call i17 @llvm.part.select.i17(i17 %0, i32 %1, i32 %2)
  %empty_15 = trunc i17 %empty to i8
  ret i8 %empty_15
}

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_16 = trunc i22 %empty to i21
  ret i21 %empty_16
}

define weak i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_17 = trunc i21 %empty to i20
  ret i20 %empty_17
}

declare i19 @_ssdm_op_PartSelect.i19.i20.i32.i32(i20, i32, i32) nounwind readnone

define weak i18 @_ssdm_op_PartSelect.i18.i29.i32.i32(i29, i32, i32) nounwind readnone {
entry:
  %empty = call i29 @llvm.part.select.i29(i29 %0, i32 %1, i32 %2)
  %empty_18 = trunc i29 %empty to i18
  ret i18 %empty_18
}

define weak i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20, i32, i32) nounwind readnone {
entry:
  %empty = call i20 @llvm.part.select.i20(i20 %0, i32 %1, i32 %2)
  %empty_19 = trunc i20 %empty to i12
  ret i12 %empty_19
}

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_20 = shl i23 1, %empty
  %empty_21 = and i23 %0, %empty_20
  %empty_22 = icmp ne i23 %empty_21, 0
  ret i1 %empty_22
}

define weak i1 @_ssdm_op_BitSelect.i1.i22.i32(i22, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i22
  %empty_23 = shl i22 1, %empty
  %empty_24 = and i22 %0, %empty_23
  %empty_25 = icmp ne i22 %empty_24, 0
  ret i1 %empty_25
}

declare i1 @_ssdm_op_BitSelect.i1.i21.i32(i21, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i17.i32(i17, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i17
  %empty_26 = shl i17 1, %empty
  %empty_27 = and i17 %0, %empty_26
  %empty_28 = icmp ne i17 %empty_27, 0
  ret i1 %empty_28
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_29 = zext i1 %1 to i9
  %empty_30 = shl i9 %empty, 1
  %empty_31 = or i9 %empty_30, %empty_29
  ret i9 %empty_31
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_32 = zext i1 %1 to i8
  %empty_33 = shl i8 %empty, 1
  %empty_34 = or i8 %empty_33, %empty_32
  ret i8 %empty_34
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i6.i1(i6, i1) nounwind readnone {
entry:
  %empty = zext i6 %0 to i7
  %empty_35 = zext i1 %1 to i7
  %empty_36 = shl i7 %empty, 1
  %empty_37 = or i7 %empty_36, %empty_35
  ret i7 %empty_37
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i5.i1(i5, i1) nounwind readnone {
entry:
  %empty = zext i5 %0 to i6
  %empty_38 = zext i1 %1 to i6
  %empty_39 = shl i6 %empty, 1
  %empty_40 = or i6 %empty_39, %empty_38
  ret i6 %empty_40
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i4.i1(i4, i1) nounwind readnone {
entry:
  %empty = zext i4 %0 to i5
  %empty_41 = zext i1 %1 to i5
  %empty_42 = shl i5 %empty, 1
  %empty_43 = or i5 %empty_42, %empty_41
  ret i5 %empty_43
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i3.i1(i3, i1) nounwind readnone {
entry:
  %empty = zext i3 %0 to i4
  %empty_44 = zext i1 %1 to i4
  %empty_45 = shl i4 %empty, 1
  %empty_46 = or i4 %empty_45, %empty_44
  ret i4 %empty_46
}

define weak i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17, i10) nounwind readnone {
entry:
  %empty = zext i17 %0 to i27
  %empty_47 = zext i10 %1 to i27
  %empty_48 = shl i27 %empty, 10
  %empty_49 = or i27 %empty_48, %empty_47
  ret i27 %empty_49
}

define weak i26 @_ssdm_op_BitConcatenate.i26.i17.i9(i17, i9) nounwind readnone {
entry:
  %empty = zext i17 %0 to i26
  %empty_50 = zext i9 %1 to i26
  %empty_51 = shl i26 %empty, 9
  %empty_52 = or i26 %empty_51, %empty_50
  ret i26 %empty_52
}

define weak i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17, i8) nounwind readnone {
entry:
  %empty = zext i17 %0 to i25
  %empty_53 = zext i8 %1 to i25
  %empty_54 = shl i25 %empty, 8
  %empty_55 = or i25 %empty_54, %empty_53
  ret i25 %empty_55
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i9.i14(i9, i14) nounwind readnone {
entry:
  %empty = zext i9 %0 to i23
  %empty_56 = zext i14 %1 to i23
  %empty_57 = shl i23 %empty, 14
  %empty_58 = or i23 %empty_57, %empty_56
  ret i23 %empty_58
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i8.i15(i8, i15) nounwind readnone {
entry:
  %empty = zext i8 %0 to i23
  %empty_59 = zext i15 %1 to i23
  %empty_60 = shl i23 %empty, 15
  %empty_61 = or i23 %empty_60, %empty_59
  ret i23 %empty_61
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i7.i16(i7, i16) nounwind readnone {
entry:
  %empty = zext i7 %0 to i23
  %empty_62 = zext i16 %1 to i23
  %empty_63 = shl i23 %empty, 16
  %empty_64 = or i23 %empty_63, %empty_62
  ret i23 %empty_64
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i6.i17(i6, i17) nounwind readnone {
entry:
  %empty = zext i6 %0 to i23
  %empty_65 = zext i17 %1 to i23
  %empty_66 = shl i23 %empty, 17
  %empty_67 = or i23 %empty_66, %empty_65
  ret i23 %empty_67
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i5.i18(i5, i18) nounwind readnone {
entry:
  %empty = zext i5 %0 to i23
  %empty_68 = zext i18 %1 to i23
  %empty_69 = shl i23 %empty, 18
  %empty_70 = or i23 %empty_69, %empty_68
  ret i23 %empty_70
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i4.i19(i4, i19) nounwind readnone {
entry:
  %empty = zext i4 %0 to i23
  %empty_71 = zext i19 %1 to i23
  %empty_72 = shl i23 %empty, 19
  %empty_73 = or i23 %empty_72, %empty_71
  ret i23 %empty_73
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i3.i20(i3, i20) nounwind readnone {
entry:
  %empty = zext i3 %0 to i23
  %empty_74 = zext i20 %1 to i23
  %empty_75 = shl i23 %empty, 20
  %empty_76 = or i23 %empty_75, %empty_74
  ret i23 %empty_76
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone {
entry:
  %empty = zext i22 %0 to i23
  %empty_77 = zext i1 %1 to i23
  %empty_78 = shl i23 %empty, 1
  %empty_79 = or i23 %empty_78, %empty_77
  ret i23 %empty_79
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_80 = zext i2 %1 to i23
  %empty_81 = shl i23 %empty, 2
  %empty_82 = or i23 %empty_81, %empty_80
  ret i23 %empty_82
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i20.i3(i20, i3) nounwind readnone {
entry:
  %empty = zext i20 %0 to i23
  %empty_83 = zext i3 %1 to i23
  %empty_84 = shl i23 %empty, 3
  %empty_85 = or i23 %empty_84, %empty_83
  ret i23 %empty_85
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i19.i4(i19, i4) nounwind readnone {
entry:
  %empty = zext i19 %0 to i23
  %empty_86 = zext i4 %1 to i23
  %empty_87 = shl i23 %empty, 4
  %empty_88 = or i23 %empty_87, %empty_86
  ret i23 %empty_88
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i18.i5(i18, i5) nounwind readnone {
entry:
  %empty = zext i18 %0 to i23
  %empty_89 = zext i5 %1 to i23
  %empty_90 = shl i23 %empty, 5
  %empty_91 = or i23 %empty_90, %empty_89
  ret i23 %empty_91
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i17.i6(i17, i6) nounwind readnone {
entry:
  %empty = zext i17 %0 to i23
  %empty_92 = zext i6 %1 to i23
  %empty_93 = shl i23 %empty, 6
  %empty_94 = or i23 %empty_93, %empty_92
  ret i23 %empty_94
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i16.i7(i16, i7) nounwind readnone {
entry:
  %empty = zext i16 %0 to i23
  %empty_95 = zext i7 %1 to i23
  %empty_96 = shl i23 %empty, 7
  %empty_97 = or i23 %empty_96, %empty_95
  ret i23 %empty_97
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i15.i8(i15, i8) nounwind readnone {
entry:
  %empty = zext i15 %0 to i23
  %empty_98 = zext i8 %1 to i23
  %empty_99 = shl i23 %empty, 8
  %empty_100 = or i23 %empty_99, %empty_98
  ret i23 %empty_100
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i14.i9(i14, i9) nounwind readnone {
entry:
  %empty = zext i14 %0 to i23
  %empty_101 = zext i9 %1 to i23
  %empty_102 = shl i23 %empty, 9
  %empty_103 = or i23 %empty_102, %empty_101
  ret i23 %empty_103
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i13.i10(i13, i10) nounwind readnone {
entry:
  %empty = zext i13 %0 to i23
  %empty_104 = zext i10 %1 to i23
  %empty_105 = shl i23 %empty, 10
  %empty_106 = or i23 %empty_105, %empty_104
  ret i23 %empty_106
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i12.i11(i12, i11) nounwind readnone {
entry:
  %empty = zext i12 %0 to i23
  %empty_107 = zext i11 %1 to i23
  %empty_108 = shl i23 %empty, 11
  %empty_109 = or i23 %empty_108, %empty_107
  ret i23 %empty_109
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i11.i12(i11, i12) nounwind readnone {
entry:
  %empty = zext i11 %0 to i23
  %empty_110 = zext i12 %1 to i23
  %empty_111 = shl i23 %empty, 12
  %empty_112 = or i23 %empty_111, %empty_110
  ret i23 %empty_112
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i10.i13(i10, i13) nounwind readnone {
entry:
  %empty = zext i10 %0 to i23
  %empty_113 = zext i13 %1 to i23
  %empty_114 = shl i23 %empty, 13
  %empty_115 = or i23 %empty_114, %empty_113
  ret i23 %empty_115
}

define weak i23 @_ssdm_op_BitConcatenate.i23.i1.i22(i1, i22) nounwind readnone {
entry:
  %empty = zext i1 %0 to i23
  %empty_116 = zext i22 %1 to i23
  %empty_117 = shl i23 %empty, 22
  %empty_118 = or i23 %empty_117, %empty_116
  ret i23 %empty_118
}

define weak i22 @_ssdm_op_BitConcatenate.i22.i21.i1(i21, i1) nounwind readnone {
entry:
  %empty = zext i21 %0 to i22
  %empty_119 = zext i1 %1 to i22
  %empty_120 = shl i22 %empty, 1
  %empty_121 = or i22 %empty_120, %empty_119
  ret i22 %empty_121
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_122 = zext i1 %1 to i21
  %empty_123 = shl i21 %empty, 1
  %empty_124 = or i21 %empty_123, %empty_122
  ret i21 %empty_124
}

define weak i20 @_ssdm_op_BitConcatenate.i20.i19.i1(i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %0 to i20
  %empty_125 = zext i1 %1 to i20
  %empty_126 = shl i20 %empty, 1
  %empty_127 = or i20 %empty_126, %empty_125
  ret i20 %empty_127
}

define weak i19 @_ssdm_op_BitConcatenate.i19.i18.i1(i18, i1) nounwind readnone {
entry:
  %empty = zext i18 %0 to i19
  %empty_128 = zext i1 %1 to i19
  %empty_129 = shl i19 %empty, 1
  %empty_130 = or i19 %empty_129, %empty_128
  ret i19 %empty_130
}

define weak i18 @_ssdm_op_BitConcatenate.i18.i17.i1(i17, i1) nounwind readnone {
entry:
  %empty = zext i17 %0 to i18
  %empty_131 = zext i1 %1 to i18
  %empty_132 = shl i18 %empty, 1
  %empty_133 = or i18 %empty_132, %empty_131
  ret i18 %empty_133
}

define weak i17 @_ssdm_op_BitConcatenate.i17.i16.i1(i16, i1) nounwind readnone {
entry:
  %empty = zext i16 %0 to i17
  %empty_134 = zext i1 %1 to i17
  %empty_135 = shl i17 %empty, 1
  %empty_136 = or i17 %empty_135, %empty_134
  ret i17 %empty_136
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i15.i1(i15, i1) nounwind readnone {
entry:
  %empty = zext i15 %0 to i16
  %empty_137 = zext i1 %1 to i16
  %empty_138 = shl i16 %empty, 1
  %empty_139 = or i16 %empty_138, %empty_137
  ret i16 %empty_139
}

define weak i15 @_ssdm_op_BitConcatenate.i15.i14.i1(i14, i1) nounwind readnone {
entry:
  %empty = zext i14 %0 to i15
  %empty_140 = zext i1 %1 to i15
  %empty_141 = shl i15 %empty, 1
  %empty_142 = or i15 %empty_141, %empty_140
  ret i15 %empty_142
}

define weak i14 @_ssdm_op_BitConcatenate.i14.i13.i1(i13, i1) nounwind readnone {
entry:
  %empty = zext i13 %0 to i14
  %empty_143 = zext i1 %1 to i14
  %empty_144 = shl i14 %empty, 1
  %empty_145 = or i14 %empty_144, %empty_143
  ret i14 %empty_145
}

define weak i13 @_ssdm_op_BitConcatenate.i13.i12.i1(i12, i1) nounwind readnone {
entry:
  %empty = zext i12 %0 to i13
  %empty_146 = zext i1 %1 to i13
  %empty_147 = shl i13 %empty, 1
  %empty_148 = or i13 %empty_147, %empty_146
  ret i13 %empty_148
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i11.i1(i11, i1) nounwind readnone {
entry:
  %empty = zext i11 %0 to i12
  %empty_149 = zext i1 %1 to i12
  %empty_150 = shl i12 %empty, 1
  %empty_151 = or i12 %empty_150, %empty_149
  ret i12 %empty_151
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_152 = zext i1 %1 to i11
  %empty_153 = shl i11 %empty, 1
  %empty_154 = or i11 %empty_153, %empty_152
  ret i11 %empty_154
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_155 = zext i1 %1 to i10
  %empty_156 = shl i10 %empty, 1
  %empty_157 = or i10 %empty_156, %empty_155
  ret i10 %empty_157
}

declare void @_ssdm_SpecDependence(...) nounwind

define internal fastcc i32 @"__ColorComparator/Co"(i32 %p_read) readnone {
entry:
  %p_read_1 = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %p_read)
  ret i32 %p_read_1
}

declare void @_GLOBAL__I_a() nounwind

define internal fastcc i32 @Loop_PIXEL_COLOR_LOO(i32 %pixel) readnone {
newFuncRoot:
  %pixel_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %pixel)
  %pixelRed = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_read, i32 16, i32 23)
  %pixelRed_cast_i = zext i8 %pixelRed to i9
  %pixelGreen = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %pixel_read, i32 8, i32 15)
  %pixelGreen_cast_i = zext i8 %pixelGreen to i9
  %pixelBlue = trunc i32 %pixel_read to i8
  %pixelBlue_cast_i = zext i8 %pixelBlue to i9
  br label %0

getPixelClassification_.exit2.exitStub:           ; preds = %0
  ret i32 %minimumDistanceIndex_1

; <label>:0                                       ; preds = %1, %newFuncRoot
  %minimumDistanceIndex_1 = phi i32 [ 0, %newFuncRoot ], [ %i_0_minimumDistanceI, %1 ]
  %minimumDistanceIndex = phi i3 [ 0, %newFuncRoot ], [ %i, %1 ]
  %minimumDistance_0_i_s = phi i32 [ 2147483647, %newFuncRoot ], [ %distance_0_minimumDi, %1 ]
  %exitcond_i_i = icmp eq i3 %minimumDistanceIndex, -2
  %i = add i3 %minimumDistanceIndex, 1
  br i1 %exitcond_i_i, label %getPixelClassification_.exit2.exitStub, label %1

; <label>:1                                       ; preds = %0
  %minimumDistanceIndex_2 = zext i3 %minimumDistanceIndex to i32
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([17 x i8]* @p_str12) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @p_str12) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_i = zext i3 %minimumDistanceIndex to i64
  %p_color_array_addr = getelementptr [6 x i17]* @p_color_array, i64 0, i64 %tmp_i
  %p_color_array_load = load i17* %p_color_array_addr, align 4
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([24 x i8]* @getColorDistance_OC_s)
  %tmp_75 = call i1 @_ssdm_op_BitSelect.i1.i17.i32(i17 %p_color_array_load, i32 16)
  %colorRed_cast_i_cast = select i1 %tmp_75, i9 255, i9 0
  %colorGreen = call i8 @_ssdm_op_PartSelect.i8.i17.i32.i32(i17 %p_color_array_load, i32 8, i32 15)
  %colorGreen_cast_i = zext i8 %colorGreen to i9
  %colorBlue = trunc i17 %p_color_array_load to i8
  %colorBlue_cast_i = zext i8 %colorBlue to i9
  %number_assign = sub i9 %pixelRed_cast_i, %colorRed_cast_i_cast
  %tmp_s = sext i9 %number_assign to i17
  %result3_i = mul i17 %tmp_s, %tmp_s
  %p_Val2_s = call i26 @_ssdm_op_BitConcatenate.i26.i17.i9(i17 %result3_i, i9 0)
  %p_Val2_cast_i = sext i26 %p_Val2_s to i28
  %number_assign_1 = sub i9 %pixelGreen_cast_i, %colorGreen_cast_i
  %tmp_1 = sext i9 %number_assign_1 to i17
  %result_11_i = mul i17 %tmp_1, %tmp_1
  %p_Val2_1 = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %result_11_i, i10 0)
  %p_Val2_1_cast_i = sext i27 %p_Val2_1 to i28
  %number_assign_2 = sub i9 %pixelBlue_cast_i, %colorBlue_cast_i
  %tmp_77 = sext i9 %number_assign_2 to i17
  %tmp_78 = sext i9 %number_assign_2 to i17
  %tmp_79 = mul i17 %tmp_78, %tmp_77
  %p_shl_i = call i27 @_ssdm_op_BitConcatenate.i27.i17.i10(i17 %tmp_79, i10 0)
  %p_shl_cast_i = sext i27 %p_shl_i to i28
  %p_shl9_i = call i25 @_ssdm_op_BitConcatenate.i25.i17.i8(i17 %tmp_79, i8 0)
  %p_shl9_cast_i = sext i25 %p_shl9_i to i28
  %p_Val2_2 = sub i28 %p_shl_cast_i, %p_shl9_cast_i
  %p_Val2_2_cast_i = sext i28 %p_Val2_2 to i29
  %p_Val2_5_i = add i28 %p_Val2_cast_i, %p_Val2_1_cast_i
  %p_Val2_5_cast_i = sext i28 %p_Val2_5_i to i29
  %powerSummation_V = add i29 %p_Val2_2_cast_i, %p_Val2_5_cast_i
  %result_V_i = call fastcc i20 @fxp_sqrt(i29 %powerSummation_V) nounwind
  %tmp_2 = call i12 @_ssdm_op_PartSelect.i12.i20.i32.i32(i20 %result_V_i, i32 8, i32 19) nounwind
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([24 x i8]* @getColorDistance_OC_s, i32 %rbegin)
  %minimumDistance = zext i12 %tmp_2 to i32
  %tmp_1_i = icmp slt i32 %minimumDistance, %minimumDistance_0_i_s
  %i_0_minimumDistanceI = select i1 %tmp_1_i, i32 %minimumDistanceIndex_2, i32 %minimumDistanceIndex_1
  %distance_0_minimumDi = select i1 %tmp_1_i, i32 %minimumDistance, i32 %minimumDistance_0_i_s
  %empty_158 = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @p_str12, i32 %tmp) nounwind
  br label %0
}

!opencl.kernels = !{!0, !7, !9, !15, !15, !21, !24, !24, !15, !26, !29, !15, !15, !15, !32, !32, !15, !15, !34, !37, !24, !24, !15, !39, !15, !15, !15, !41, !41, !32, !32, !43, !43, !45, !47, !49, !47, !51, !15, !51, !15, !24, !24, !15, !52, !54, !54, !56, !41, !41, !57, !15, !59, !59, !63, !15, !15, !15, !41, !41, !65, !65, !37, !39, !15, !15, !32, !32, !41, !41, !29, !32, !32, !67, !69, !69, !15, !15, !45, !15, !70, !71, !73, !73, !75, !77, !80, !15, !15, !15, !73, !73, !41, !41, !63, !82, !82, !45, !47, !15, !15, !15, !84, !86, !86, !92, !92, !94, !15, !15, !96, !96, !15, !15, !15, !97, !97, !97, !99, !101, !101, !15, !102, !102, !15, !15, !99, !101, !101, !15, !15, !15, !104, !104, !106, !108, !108, !110, !110, !101, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!112}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !8, metadata !6}
!8 = metadata !{metadata !"kernel_arg_name", metadata !"pixel", metadata !"color"}
!9 = metadata !{i32 (i32)* @getPixelClassification, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"pixel"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !10, metadata !11, metadata !22, metadata !13, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!24 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !25, metadata !6}
!25 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!26 = metadata !{null, metadata !1, metadata !2, metadata !27, metadata !4, metadata !28, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!28 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!29 = metadata !{null, metadata !1, metadata !2, metadata !30, metadata !4, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!32 = metadata !{null, metadata !10, metadata !11, metadata !33, metadata !13, metadata !25, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!34 = metadata !{null, metadata !10, metadata !11, metadata !35, metadata !13, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !30, metadata !4, metadata !38, metadata !6}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !31, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!41 = metadata !{null, metadata !10, metadata !11, metadata !42, metadata !13, metadata !25, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!43 = metadata !{null, metadata !10, metadata !11, metadata !44, metadata !13, metadata !25, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !31, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!47 = metadata !{null, metadata !10, metadata !11, metadata !42, metadata !13, metadata !48, metadata !6}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !31, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!51 = metadata !{null, metadata !10, metadata !11, metadata !35, metadata !13, metadata !48, metadata !6}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !31, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!54 = metadata !{null, metadata !10, metadata !11, metadata !55, metadata !13, metadata !25, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!56 = metadata !{null, metadata !10, metadata !11, metadata !44, metadata !13, metadata !48, metadata !6}
!57 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !58, metadata !6}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!59 = metadata !{null, metadata !60, metadata !2, metadata !61, metadata !4, metadata !62, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!63 = metadata !{null, metadata !1, metadata !2, metadata !64, metadata !4, metadata !31, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!65 = metadata !{null, metadata !10, metadata !11, metadata !66, metadata !13, metadata !25, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!67 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !48, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!69 = metadata !{null, metadata !10, metadata !11, metadata !68, metadata !13, metadata !25, metadata !6}
!70 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !38, metadata !6}
!71 = metadata !{null, metadata !1, metadata !2, metadata !72, metadata !4, metadata !31, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !10, metadata !11, metadata !74, metadata !13, metadata !25, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!75 = metadata !{null, metadata !1, metadata !2, metadata !76, metadata !4, metadata !31, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !79, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!80 = metadata !{null, metadata !1, metadata !2, metadata !81, metadata !4, metadata !31, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!82 = metadata !{null, metadata !10, metadata !11, metadata !83, metadata !13, metadata !25, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!84 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !85, metadata !6}
!85 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!86 = metadata !{null, metadata !87, metadata !88, metadata !89, metadata !90, metadata !91, metadata !6}
!87 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!88 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!90 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!92 = metadata !{null, metadata !10, metadata !11, metadata !93, metadata !13, metadata !36, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!94 = metadata !{null, metadata !10, metadata !11, metadata !95, metadata !13, metadata !48, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!96 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !36, metadata !6}
!97 = metadata !{null, metadata !10, metadata !11, metadata !98, metadata !13, metadata !25, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<34, 26, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!99 = metadata !{null, metadata !10, metadata !11, metadata !100, metadata !13, metadata !48, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!101 = metadata !{null, metadata !10, metadata !11, metadata !100, metadata !13, metadata !25, metadata !6}
!102 = metadata !{null, metadata !10, metadata !11, metadata !103, metadata !13, metadata !25, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!104 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !105, metadata !6}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!106 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !107, metadata !6}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!108 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !109, metadata !6}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!110 = metadata !{null, metadata !10, metadata !11, metadata !111, metadata !13, metadata !25, metadata !6}
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
!122 = metadata !{metadata !"pixel", metadata !123, metadata !"int", i32 0, i32 31}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 0, i32 0}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 31, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"return", metadata !129, metadata !"int", i32 0, i32 31}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 1, i32 0}
