; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution3/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00" ; [#uses=2 type=[8 x i8]*]
@p_str3 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=6 type=[4 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=4]
declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x i96]* %array) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %array), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !49), !dbg !63 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !64), !dbg !66 ; [debug line = 20:27] [debug variable = array]
  br label %1, !dbg !67                           ; [debug line = 22:23]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i4]
  %row_i = phi i2 [ 0, %0 ], [ %tmp_6_i_cast_mid2_v_s, %.reset ] ; [#uses=2 type=i2]
  %summation_1_i = phi i32 [ 0, %0 ], [ %summation, %.reset ] ; [#uses=2 type=i32]
  %col_i = phi i2 [ 0, %0 ], [ %col, %.reset ]    ; [#uses=2 type=i2]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i4 %indvar_flatten, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten, label %getVerticalResult.exit.preheader.preheader, label %.reset

getVerticalResult.exit.preheader.preheader:       ; preds = %1
  br label %getVerticalResult.exit.preheader

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i2 %col_i, -1, !dbg !70   ; [#uses=2 type=i1] [debug line = 23:24]
  %col_i_mid2 = select i1 %exitcond_i, i2 0, i2 %col_i ; [#uses=3 type=i2]
  %row = add i2 1, %row_i, !dbg !73               ; [#uses=1 type=i2] [debug line = 22:34]
  %tmp_6_i_cast_mid2_v_s = select i1 %exitcond_i, i2 %row, i2 %row_i ; [#uses=2 type=i2]
  %tmp_6_i_cast_mid2_v = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_6_i_cast_mid2_v_s, i5 0) ; [#uses=11 type=i7]
  %tmp_7_i_cast_mid2_v = or i7 %tmp_6_i_cast_mid2_v, 31 ; [#uses=6 type=i7]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str3) nounwind, !dbg !74 ; [debug line = 23:43]
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str3), !dbg !74 ; [#uses=1 type=i32] [debug line = 23:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !76 ; [debug line = 24:1]
  %tmp_2_i = zext i2 %col_i_mid2 to i64, !dbg !77 ; [#uses=1 type=i64] [debug line = 24:4]
  %array_addr = getelementptr [3 x i96]* %array, i64 0, i64 %tmp_2_i, !dbg !77 ; [#uses=1 type=i96*] [debug line = 24:4]
  %array_load = load i96* %array_addr, align 8, !dbg !77 ; [#uses=2 type=i96] [debug line = 24:4]
  %tmp_2 = icmp ugt i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v ; [#uses=3 type=i1]
  %tmp_3 = call i96 @llvm.part.select.i96(i96 %array_load, i32 95, i32 0), !dbg !77 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_4 = sub i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_5 = sub i7 -33, %tmp_6_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_6 = sub i7 %tmp_7_i_cast_mid2_v, %tmp_6_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_7 = select i1 %tmp_2, i7 %tmp_4, i7 %tmp_6, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_8 = select i1 %tmp_2, i96 %tmp_3, i96 %array_load ; [#uses=1 type=i96]
  %tmp_9 = select i1 %tmp_2, i7 %tmp_5, i7 %tmp_6_i_cast_mid2_v ; [#uses=1 type=i7]
  %tmp_10 = sub i7 -33, %tmp_7                    ; [#uses=1 type=i7]
  %tmp_11 = zext i7 %tmp_9 to i96, !dbg !77       ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_12 = zext i7 %tmp_10 to i96, !dbg !77      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_13 = lshr i96 %tmp_8, %tmp_11, !dbg !77    ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_14 = lshr i96 -1, %tmp_12, !dbg !77        ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_15 = and i96 %tmp_13, %tmp_14              ; [#uses=1 type=i96]
  %tmp_16 = trunc i96 %tmp_15 to i32, !dbg !77    ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 18446744082299486209, i96 0, i96 -4294967297, i2 %col_i_mid2) ; [#uses=2 type=i96]
  %tmp_17 = icmp ugt i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v ; [#uses=3 type=i1]
  %tmp_18 = call i96 @llvm.part.select.i96(i96 %tmp, i32 95, i32 0), !dbg !77 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_19 = sub i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_20 = sub i7 -33, %tmp_6_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_21 = sub i7 %tmp_7_i_cast_mid2_v, %tmp_6_i_cast_mid2_v, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_22 = select i1 %tmp_17, i7 %tmp_19, i7 %tmp_21, !dbg !77 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_23 = select i1 %tmp_17, i96 %tmp_18, i96 %tmp ; [#uses=1 type=i96]
  %tmp_24 = select i1 %tmp_17, i7 %tmp_20, i7 %tmp_6_i_cast_mid2_v ; [#uses=1 type=i7]
  %tmp_25 = sub i7 -33, %tmp_22                   ; [#uses=1 type=i7]
  %tmp_26 = zext i7 %tmp_24 to i96, !dbg !77      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_27 = zext i7 %tmp_25 to i96, !dbg !77      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_28 = lshr i96 %tmp_23, %tmp_26, !dbg !77   ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_29 = lshr i96 -1, %tmp_27, !dbg !77        ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_30 = and i96 %tmp_28, %tmp_29              ; [#uses=1 type=i96]
  %tmp_31 = trunc i96 %tmp_30 to i32, !dbg !77    ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp_3_i = mul nsw i32 %tmp_16, %tmp_31, !dbg !77 ; [#uses=1 type=i32] [debug line = 24:4]
  %summation = add nsw i32 %tmp_3_i, %summation_1_i, !dbg !77 ; [#uses=1 type=i32] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !78), !dbg !77 ; [debug line = 24:4] [debug variable = summation]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str3, i32 %tmp_1_i), !dbg !79 ; [#uses=0 type=i32] [debug line = 25:3]
  %col = add i2 1, %col_i_mid2, !dbg !80          ; [#uses=1 type=i2] [debug line = 23:35]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !81), !dbg !80 ; [debug line = 23:35] [debug variable = col]
  br label %1

getVerticalResult.exit.preheader:                 ; preds = %getVerticalResult.exit, %getVerticalResult.exit.preheader.preheader
  %indvar_flatten1 = phi i4 [ %indvar_flatten_next1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i4]
  %row_i2 = phi i2 [ %tmp_14_i_cast_mid2_v_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i2]
  %summation_1_i6 = phi i32 [ %summation_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i32]
  %col_i7 = phi i2 [ %col_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i2]
  %exitcond_flatten1 = icmp eq i4 %indvar_flatten1, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i4 %indvar_flatten1, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten1, label %getHorizontalResult.exit, label %getVerticalResult.exit

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) ; [#uses=0 type=i32]
  %exitcond_i1 = icmp eq i2 %col_i7, -1, !dbg !82 ; [#uses=2 type=i1] [debug line = 35:24]
  %col_i7_mid2 = select i1 %exitcond_i1, i2 0, i2 %col_i7 ; [#uses=3 type=i2]
  %row_s = add i2 1, %row_i2, !dbg !88            ; [#uses=1 type=i2] [debug line = 34:34]
  %tmp_14_i_cast_mid2_v_1 = select i1 %exitcond_i1, i2 %row_s, i2 %row_i2 ; [#uses=2 type=i2]
  %tmp_14_i_cast_mid2_v = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_14_i_cast_mid2_v_1, i5 0) ; [#uses=11 type=i7]
  %tmp_15_i_cast_mid2_v = or i7 %tmp_14_i_cast_mid2_v, 31 ; [#uses=6 type=i7]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str3) nounwind, !dbg !89 ; [debug line = 35:43]
  %tmp_11_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str3), !dbg !89 ; [#uses=1 type=i32] [debug line = 35:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !91 ; [debug line = 36:1]
  %tmp_7_i9 = zext i2 %col_i7_mid2 to i64, !dbg !92 ; [#uses=1 type=i64] [debug line = 36:4]
  %array_addr_1 = getelementptr [3 x i96]* %array, i64 0, i64 %tmp_7_i9, !dbg !92 ; [#uses=1 type=i96*] [debug line = 36:4]
  %array_load_1 = load i96* %array_addr_1, align 8, !dbg !92 ; [#uses=2 type=i96] [debug line = 36:4]
  %tmp_32 = icmp ugt i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v ; [#uses=3 type=i1]
  %tmp_33 = call i96 @llvm.part.select.i96(i96 %array_load_1, i32 95, i32 0), !dbg !92 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_34 = sub i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_35 = sub i7 -33, %tmp_14_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_36 = sub i7 %tmp_15_i_cast_mid2_v, %tmp_14_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_37 = select i1 %tmp_32, i7 %tmp_34, i7 %tmp_36, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_38 = select i1 %tmp_32, i96 %tmp_33, i96 %array_load_1 ; [#uses=1 type=i96]
  %tmp_39 = select i1 %tmp_32, i7 %tmp_35, i7 %tmp_14_i_cast_mid2_v ; [#uses=1 type=i7]
  %tmp_40 = sub i7 -33, %tmp_37                   ; [#uses=1 type=i7]
  %tmp_41 = zext i7 %tmp_39 to i96, !dbg !92      ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_42 = zext i7 %tmp_40 to i96, !dbg !92      ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_43 = lshr i96 %tmp_38, %tmp_41, !dbg !92   ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_44 = lshr i96 -1, %tmp_42, !dbg !92        ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_45 = and i96 %tmp_43, %tmp_44              ; [#uses=1 type=i96]
  %tmp_46 = trunc i96 %tmp_45 to i32, !dbg !92    ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp_1 = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 -18446744073709551615, i96 -36893488147419103230, i96 -18446744073709551615, i2 %col_i7_mid2) ; [#uses=2 type=i96]
  %tmp_47 = icmp ugt i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v ; [#uses=3 type=i1]
  %tmp_48 = call i96 @llvm.part.select.i96(i96 %tmp_1, i32 95, i32 0), !dbg !92 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_49 = sub i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_50 = sub i7 -33, %tmp_14_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_51 = sub i7 %tmp_15_i_cast_mid2_v, %tmp_14_i_cast_mid2_v, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_52 = select i1 %tmp_47, i7 %tmp_49, i7 %tmp_51, !dbg !92 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_53 = select i1 %tmp_47, i96 %tmp_48, i96 %tmp_1 ; [#uses=1 type=i96]
  %tmp_54 = select i1 %tmp_47, i7 %tmp_50, i7 %tmp_14_i_cast_mid2_v ; [#uses=1 type=i7]
  %tmp_55 = sub i7 -33, %tmp_52                   ; [#uses=1 type=i7]
  %tmp_56 = zext i7 %tmp_54 to i96, !dbg !92      ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_57 = zext i7 %tmp_55 to i96, !dbg !92      ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_58 = lshr i96 %tmp_53, %tmp_56, !dbg !92   ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_59 = lshr i96 -1, %tmp_57, !dbg !92        ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_60 = and i96 %tmp_58, %tmp_59              ; [#uses=1 type=i96]
  %tmp_61 = trunc i96 %tmp_60 to i32, !dbg !92    ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp_8_i1 = mul nsw i32 %tmp_46, %tmp_61, !dbg !92 ; [#uses=1 type=i32] [debug line = 36:4]
  %summation_1 = add nsw i32 %tmp_8_i1, %summation_1_i6, !dbg !92 ; [#uses=1 type=i32] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i32 %summation_1}, i64 0, metadata !93), !dbg !92 ; [debug line = 36:4] [debug variable = summation]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str3, i32 %tmp_11_i), !dbg !94 ; [#uses=0 type=i32] [debug line = 37:3]
  %col_1 = add i2 1, %col_i7_mid2, !dbg !95       ; [#uses=1 type=i2] [debug line = 35:35]
  call void @llvm.dbg.value(metadata !{i2 %col_1}, i64 0, metadata !96), !dbg !95 ; [debug line = 35:35] [debug variable = col]
  br label %getVerticalResult.exit.preheader

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit.preheader
  %tmp_i1 = add nsw i32 %summation_1_i6, %summation_1_i, !dbg !97 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp_i1, !dbg !102                      ; [debug line = 52:58]
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone

; [#uses=2]
define weak i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96, i96, i96, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i96 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ] ; [#uses=1 type=i96]
  ret i96 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

; [#uses=2]
define weak i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2, i5) nounwind readnone {
entry:
  %empty = zext i2 %0 to i7                       ; [#uses=1 type=i7]
  %empty_7 = zext i5 %1 to i7                     ; [#uses=1 type=i7]
  %empty_8 = shl i7 %empty, 5                     ; [#uses=1 type=i7]
  %empty_9 = or i7 %empty_8, %empty_7             ; [#uses=1 type=i7]
  ret i7 %empty_9
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !0, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}

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
!12 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{metadata !20, [1 x i32]* @llvm_global_ctors_0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"llvm.global_ctors.0", metadata !24, metadata !"", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27, metadata !33, metadata !38}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"array", metadata !30, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 0, i32 0, i32 2}
!32 = metadata !{i32 0, i32 2, i32 1}
!33 = metadata !{i32 32, i32 63, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"array", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37, metadata !32}
!37 = metadata !{i32 1, i32 1, i32 2}
!38 = metadata !{i32 64, i32 95, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"array", metadata !41, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42, metadata !32}
!42 = metadata !{i32 2, i32 2, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"return", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 1, i32 0}
!49 = metadata !{i32 786689, metadata !50, metadata !"array", null, i32 51, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 786478, i32 0, metadata !51, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !51, i32 51, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 51} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !54, metadata !55}
!54 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !54, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!59 = metadata !{metadata !60}
!60 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!61 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !54, metadata !62, i32 0, i32 0} ; [ DW_TAG_array_type ]
!62 = metadata !{metadata !58, metadata !58}
!63 = metadata !{i32 51, i32 30, metadata !50, null}
!64 = metadata !{i32 786689, metadata !65, metadata !"array", null, i32 20, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 786478, i32 0, metadata !51, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !51, i32 20, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 20} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 20, i32 27, metadata !65, null}
!67 = metadata !{i32 22, i32 23, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 22, i32 7, metadata !51, i32 1} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !65, i32 20, i32 40, metadata !51, i32 0} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 23, i32 24, metadata !71, null}
!71 = metadata !{i32 786443, metadata !72, i32 23, i32 8, metadata !51, i32 3} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !68, i32 22, i32 41, metadata !51, i32 2} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 22, i32 34, metadata !68, null}
!74 = metadata !{i32 23, i32 43, metadata !75, null}
!75 = metadata !{i32 786443, metadata !71, i32 23, i32 42, metadata !51, i32 4} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 24, i32 1, metadata !75, null}
!77 = metadata !{i32 24, i32 4, metadata !75, null}
!78 = metadata !{i32 786688, metadata !69, metadata !"summation", metadata !51, i32 21, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 25, i32 3, metadata !75, null}
!80 = metadata !{i32 23, i32 35, metadata !71, null}
!81 = metadata !{i32 786688, metadata !71, metadata !"col", metadata !51, i32 23, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 35, i32 24, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 35, i32 8, metadata !51, i32 8} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 34, i32 41, metadata !51, i32 7} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 34, i32 7, metadata !51, i32 6} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 32, i32 42, metadata !51, i32 5} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786478, i32 0, metadata !51, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !51, i32 32, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 32} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 34, i32 34, metadata !85, null}
!89 = metadata !{i32 35, i32 43, metadata !90, null}
!90 = metadata !{i32 786443, metadata !83, i32 35, i32 42, metadata !51, i32 9} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 36, i32 1, metadata !90, null}
!92 = metadata !{i32 36, i32 4, metadata !90, null}
!93 = metadata !{i32 786688, metadata !86, metadata !"summation", metadata !51, i32 33, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 37, i32 3, metadata !90, null}
!95 = metadata !{i32 35, i32 35, metadata !83, null}
!96 = metadata !{i32 786688, metadata !83, metadata !"col", metadata !51, i32 35, metadata !54, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 46, i32 2, metadata !98, metadata !102}
!98 = metadata !{i32 786443, metadata !99, i32 45, i32 70, metadata !51, i32 10} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786478, i32 0, metadata !51, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !51, i32 45, metadata !100, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !59, i32 45} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{metadata !54, metadata !54, metadata !54}
!102 = metadata !{i32 52, i32 58, metadata !103, null}
!103 = metadata !{i32 786443, metadata !50, i32 51, i32 42, metadata !51, i32 11} ; [ DW_TAG_lexical_block ]
