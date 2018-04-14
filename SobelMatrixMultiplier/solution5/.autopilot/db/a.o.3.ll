; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution5/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@p_str5 = private unnamed_addr constant [10 x i8] c"Col_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str4 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"Col_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=3 type=[9 x i8]*]

; [#uses=4]
declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x i96]* %array) readonly {
  %verticalResult_assig = alloca i32              ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %verticalResult_assig}, metadata !26) ; [debug variable = verticalResult]
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %array), !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !60
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !66), !dbg !69 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !70), !dbg !72 ; [debug line = 20:27] [debug variable = array]
  store i32 0, i32* %verticalResult_assig
  br label %1, !dbg !73                           ; [debug line = 22:28]

; <label>:1                                       ; preds = %5, %0
  %row_i = phi i2 [ 0, %0 ], [ %row, %5 ]         ; [#uses=3 type=i2]
  %exitcond1_i = icmp eq i2 %row_i, -1, !dbg !73  ; [#uses=1 type=i1] [debug line = 22:28]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %row = add i2 %row_i, 1, !dbg !76               ; [#uses=1 type=i2] [debug line = 22:39]
  br i1 %exitcond1_i, label %getVerticalResult.exit.preheader, label %2, !dbg !73 ; [debug line = 22:28]

getVerticalResult.exit.preheader:                 ; preds = %1
  %horizontalResult_ass = alloca i32              ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %horizontalResult_ass}, metadata !77) ; [debug variable = horizontalResult]
  store i32 0, i32* %horizontalResult_ass
  br label %getVerticalResult.exit, !dbg !78      ; [debug line = 34:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str2) nounwind, !dbg !82 ; [debug line = 22:47]
  %tmp_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str2), !dbg !82 ; [#uses=1 type=i32] [debug line = 22:47]
  %tmp_5_i = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %row_i, i5 0) ; [#uses=11 type=i7]
  %tmp_6_i = or i7 %tmp_5_i, 31                   ; [#uses=6 type=i7]
  br label %3, !dbg !84                           ; [debug line = 23:29]

; <label>:3                                       ; preds = %4, %2
  %col_i = phi i2 [ 0, %2 ], [ %col, %4 ]         ; [#uses=4 type=i2]
  %exitcond_i = icmp eq i2 %col_i, -1, !dbg !84   ; [#uses=1 type=i1] [debug line = 23:29]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %col = add i2 %col_i, 1, !dbg !86               ; [#uses=1 type=i2] [debug line = 23:40]
  br i1 %exitcond_i, label %5, label %4, !dbg !84 ; [debug line = 23:29]

; <label>:4                                       ; preds = %3
  %verticalResult_assig_1 = load i32* %verticalResult_assig, !dbg !87 ; [#uses=1 type=i32] [debug line = 24:4]
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str3) nounwind, !dbg !89 ; [debug line = 23:48]
  %tmp_2_i = zext i2 %col_i to i64, !dbg !87      ; [#uses=1 type=i64] [debug line = 24:4]
  %array_addr = getelementptr [3 x i96]* %array, i64 0, i64 %tmp_2_i, !dbg !87 ; [#uses=1 type=i96*] [debug line = 24:4]
  %array_load = load i96* %array_addr, align 8, !dbg !87 ; [#uses=2 type=i96] [debug line = 24:4]
  %tmp_2 = icmp ugt i7 %tmp_5_i, %tmp_6_i         ; [#uses=3 type=i1]
  %tmp_3 = call i96 @llvm.part.select.i96(i96 %array_load, i32 95, i32 0), !dbg !87 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_4 = sub i7 %tmp_5_i, %tmp_6_i, !dbg !87    ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_5 = sub i7 -33, %tmp_5_i, !dbg !87         ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_6 = sub i7 %tmp_6_i, %tmp_5_i, !dbg !87    ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_7 = select i1 %tmp_2, i7 %tmp_4, i7 %tmp_6, !dbg !87 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_8 = select i1 %tmp_2, i96 %tmp_3, i96 %array_load ; [#uses=1 type=i96]
  %tmp_9 = select i1 %tmp_2, i7 %tmp_5, i7 %tmp_5_i ; [#uses=1 type=i7]
  %tmp_10 = sub i7 -33, %tmp_7                    ; [#uses=1 type=i7]
  %tmp_11 = zext i7 %tmp_9 to i96, !dbg !87       ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_12 = zext i7 %tmp_10 to i96, !dbg !87      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_13 = lshr i96 %tmp_8, %tmp_11, !dbg !87    ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_14 = lshr i96 -1, %tmp_12, !dbg !87        ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_15 = and i96 %tmp_13, %tmp_14              ; [#uses=1 type=i96]
  %tmp_16 = trunc i96 %tmp_15 to i32, !dbg !87    ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 18446744082299486209, i96 0, i96 -4294967297, i2 %col_i) ; [#uses=2 type=i96]
  %tmp_17 = icmp ugt i7 %tmp_5_i, %tmp_6_i        ; [#uses=3 type=i1]
  %tmp_18 = call i96 @llvm.part.select.i96(i96 %tmp, i32 95, i32 0), !dbg !87 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_19 = sub i7 %tmp_5_i, %tmp_6_i, !dbg !87   ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_20 = sub i7 -33, %tmp_5_i, !dbg !87        ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_21 = sub i7 %tmp_6_i, %tmp_5_i, !dbg !87   ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_22 = select i1 %tmp_17, i7 %tmp_19, i7 %tmp_21, !dbg !87 ; [#uses=1 type=i7] [debug line = 24:4]
  %tmp_23 = select i1 %tmp_17, i96 %tmp_18, i96 %tmp ; [#uses=1 type=i96]
  %tmp_24 = select i1 %tmp_17, i7 %tmp_20, i7 %tmp_5_i ; [#uses=1 type=i7]
  %tmp_25 = sub i7 -33, %tmp_22                   ; [#uses=1 type=i7]
  %tmp_26 = zext i7 %tmp_24 to i96, !dbg !87      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_27 = zext i7 %tmp_25 to i96, !dbg !87      ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_28 = lshr i96 %tmp_23, %tmp_26, !dbg !87   ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_29 = lshr i96 -1, %tmp_27, !dbg !87        ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp_30 = and i96 %tmp_28, %tmp_29              ; [#uses=1 type=i96]
  %tmp_31 = trunc i96 %tmp_30 to i32, !dbg !87    ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp_3_i = mul nsw i32 %tmp_31, %tmp_16, !dbg !87 ; [#uses=1 type=i32] [debug line = 24:4]
  %summation = add nsw i32 %verticalResult_assig_1, %tmp_3_i, !dbg !87 ; [#uses=1 type=i32] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !90), !dbg !87 ; [debug line = 24:4] [debug variable = summation]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !91), !dbg !86 ; [debug line = 23:40] [debug variable = col]
  store i32 %summation, i32* %verticalResult_assig, !dbg !87 ; [debug line = 24:4]
  br label %3, !dbg !86                           ; [debug line = 23:40]

; <label>:5                                       ; preds = %3
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str2, i32 %tmp_i), !dbg !92 ; [#uses=0 type=i32] [debug line = 26:2]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !93), !dbg !76 ; [debug line = 22:39] [debug variable = row]
  br label %1, !dbg !76                           ; [debug line = 22:39]

getVerticalResult.exit:                           ; preds = %9, %getVerticalResult.exit.preheader
  %row_i2 = phi i2 [ %row_1, %9 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=3 type=i2]
  %exitcond1_i4 = icmp eq i2 %row_i2, -1, !dbg !78 ; [#uses=1 type=i1] [debug line = 34:29]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %row_1 = add i2 %row_i2, 1, !dbg !94            ; [#uses=1 type=i2] [debug line = 34:40]
  br i1 %exitcond1_i4, label %getHorizontalResult.exit, label %6, !dbg !78 ; [debug line = 34:29]

; <label>:6                                       ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str4) nounwind, !dbg !95 ; [debug line = 34:48]
  %tmp_i5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str4), !dbg !95 ; [#uses=1 type=i32] [debug line = 34:48]
  %tmp_12_i = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %row_i2, i5 0) ; [#uses=11 type=i7]
  %tmp_13_i = or i7 %tmp_12_i, 31                 ; [#uses=6 type=i7]
  br label %7, !dbg !97                           ; [debug line = 35:30]

; <label>:7                                       ; preds = %8, %6
  %col_i7 = phi i2 [ 0, %6 ], [ %col_1, %8 ]      ; [#uses=4 type=i2]
  %exitcond_i8 = icmp eq i2 %col_i7, -1, !dbg !97 ; [#uses=1 type=i1] [debug line = 35:30]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  %col_1 = add i2 %col_i7, 1, !dbg !99            ; [#uses=1 type=i2] [debug line = 35:41]
  br i1 %exitcond_i8, label %9, label %8, !dbg !97 ; [debug line = 35:30]

; <label>:8                                       ; preds = %7
  %horizontalResult_ass_1 = load i32* %horizontalResult_ass, !dbg !100 ; [#uses=1 type=i32] [debug line = 36:4]
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str5) nounwind, !dbg !102 ; [debug line = 35:49]
  %tmp_7_i9 = zext i2 %col_i7 to i64, !dbg !100   ; [#uses=1 type=i64] [debug line = 36:4]
  %array_addr_1 = getelementptr [3 x i96]* %array, i64 0, i64 %tmp_7_i9, !dbg !100 ; [#uses=1 type=i96*] [debug line = 36:4]
  %array_load_1 = load i96* %array_addr_1, align 8, !dbg !100 ; [#uses=2 type=i96] [debug line = 36:4]
  %tmp_32 = icmp ugt i7 %tmp_12_i, %tmp_13_i      ; [#uses=3 type=i1]
  %tmp_33 = call i96 @llvm.part.select.i96(i96 %array_load_1, i32 95, i32 0), !dbg !100 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_34 = sub i7 %tmp_12_i, %tmp_13_i, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_35 = sub i7 -33, %tmp_12_i, !dbg !100      ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_36 = sub i7 %tmp_13_i, %tmp_12_i, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_37 = select i1 %tmp_32, i7 %tmp_34, i7 %tmp_36, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_38 = select i1 %tmp_32, i96 %tmp_33, i96 %array_load_1 ; [#uses=1 type=i96]
  %tmp_39 = select i1 %tmp_32, i7 %tmp_35, i7 %tmp_12_i ; [#uses=1 type=i7]
  %tmp_40 = sub i7 -33, %tmp_37                   ; [#uses=1 type=i7]
  %tmp_41 = zext i7 %tmp_39 to i96, !dbg !100     ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_42 = zext i7 %tmp_40 to i96, !dbg !100     ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_43 = lshr i96 %tmp_38, %tmp_41, !dbg !100  ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_44 = lshr i96 -1, %tmp_42, !dbg !100       ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_45 = and i96 %tmp_43, %tmp_44              ; [#uses=1 type=i96]
  %tmp_46 = trunc i96 %tmp_45 to i32, !dbg !100   ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp_1 = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 -18446744073709551615, i96 -36893488147419103230, i96 -18446744073709551615, i2 %col_i7) ; [#uses=2 type=i96]
  %tmp_47 = icmp ugt i7 %tmp_12_i, %tmp_13_i      ; [#uses=3 type=i1]
  %tmp_48 = call i96 @llvm.part.select.i96(i96 %tmp_1, i32 95, i32 0), !dbg !100 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_49 = sub i7 %tmp_12_i, %tmp_13_i, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_50 = sub i7 -33, %tmp_12_i, !dbg !100      ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_51 = sub i7 %tmp_13_i, %tmp_12_i, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_52 = select i1 %tmp_47, i7 %tmp_49, i7 %tmp_51, !dbg !100 ; [#uses=1 type=i7] [debug line = 36:4]
  %tmp_53 = select i1 %tmp_47, i96 %tmp_48, i96 %tmp_1 ; [#uses=1 type=i96]
  %tmp_54 = select i1 %tmp_47, i7 %tmp_50, i7 %tmp_12_i ; [#uses=1 type=i7]
  %tmp_55 = sub i7 -33, %tmp_52                   ; [#uses=1 type=i7]
  %tmp_56 = zext i7 %tmp_54 to i96, !dbg !100     ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_57 = zext i7 %tmp_55 to i96, !dbg !100     ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_58 = lshr i96 %tmp_53, %tmp_56, !dbg !100  ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_59 = lshr i96 -1, %tmp_57, !dbg !100       ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp_60 = and i96 %tmp_58, %tmp_59              ; [#uses=1 type=i96]
  %tmp_61 = trunc i96 %tmp_60 to i32, !dbg !100   ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp_8_i1 = mul nsw i32 %tmp_61, %tmp_46, !dbg !100 ; [#uses=1 type=i32] [debug line = 36:4]
  %summation_1 = add nsw i32 %horizontalResult_ass_1, %tmp_8_i1, !dbg !100 ; [#uses=1 type=i32] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i32 %summation_1}, i64 0, metadata !103), !dbg !100 ; [debug line = 36:4] [debug variable = summation]
  call void @llvm.dbg.value(metadata !{i2 %col_1}, i64 0, metadata !104), !dbg !99 ; [debug line = 35:41] [debug variable = col]
  store i32 %summation_1, i32* %horizontalResult_ass, !dbg !100 ; [debug line = 36:4]
  br label %7, !dbg !99                           ; [debug line = 35:41]

; <label>:9                                       ; preds = %7
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str4, i32 %tmp_i5), !dbg !105 ; [#uses=0 type=i32] [debug line = 38:2]
  call void @llvm.dbg.value(metadata !{i2 %row_1}, i64 0, metadata !106), !dbg !94 ; [debug line = 34:40] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !94      ; [debug line = 34:40]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult_ass_2 = load i32* %horizontalResult_ass, !dbg !107 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  %verticalResult_assig_2 = load i32* %verticalResult_assig, !dbg !107 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  %tmp_i1 = add nsw i32 %horizontalResult_ass_2, %verticalResult_assig_2, !dbg !107 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp_i1, !dbg !34                       ; [debug line = 52:58]
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

; [#uses=4]
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
  %empty_10 = zext i5 %1 to i7                    ; [#uses=1 type=i7]
  %empty_11 = shl i7 %empty, 5                    ; [#uses=1 type=i7]
  %empty_12 = or i7 %empty_11, %empty_10          ; [#uses=1 type=i7]
  ret i7 %empty_12
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
!26 = metadata !{i32 786689, metadata !27, metadata !"verticalResult", metadata !28, i32 16777261, metadata !31, i32 0, metadata !34} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !28, i32 45, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 45} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{metadata !31, metadata !31, metadata !31}
!31 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 52, i32 58, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 51, i32 42, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !28, i32 51, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 51} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !31, metadata !39}
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!43 = metadata !{metadata !44, metadata !50, metadata !55}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"array", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 0, i32 0, i32 2}
!49 = metadata !{i32 0, i32 2, i32 1}
!50 = metadata !{i32 32, i32 63, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"array", metadata !53, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54, metadata !49}
!54 = metadata !{i32 1, i32 1, i32 2}
!55 = metadata !{i32 64, i32 95, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"array", metadata !58, metadata !"int", i32 0, i32 31}
!58 = metadata !{metadata !59, metadata !49}
!59 = metadata !{i32 2, i32 2, i32 2}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 31, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"return", metadata !64, metadata !"int", i32 0, i32 31}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 1, i32 0}
!66 = metadata !{i32 786689, metadata !36, metadata !"array", null, i32 51, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !31, metadata !68, i32 0, i32 0} ; [ DW_TAG_array_type ]
!68 = metadata !{metadata !42, metadata !42}
!69 = metadata !{i32 51, i32 30, metadata !36, null}
!70 = metadata !{i32 786689, metadata !71, metadata !"array", null, i32 20, metadata !67, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!71 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !28, i32 20, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 20} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 20, i32 27, metadata !71, null}
!73 = metadata !{i32 22, i32 28, metadata !74, null}
!74 = metadata !{i32 786443, metadata !75, i32 22, i32 12, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !71, i32 20, i32 40, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 22, i32 39, metadata !74, null}
!77 = metadata !{i32 786689, metadata !27, metadata !"horizontalResult", metadata !28, i32 33554477, metadata !31, i32 0, metadata !34} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 34, i32 29, metadata !79, null}
!79 = metadata !{i32 786443, metadata !80, i32 34, i32 13, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 786443, metadata !81, i32 32, i32 42, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !28, i32 32, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 32} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 22, i32 47, metadata !83, null}
!83 = metadata !{i32 786443, metadata !74, i32 22, i32 46, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 23, i32 29, metadata !85, null}
!85 = metadata !{i32 786443, metadata !83, i32 23, i32 13, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 23, i32 40, metadata !85, null}
!87 = metadata !{i32 24, i32 4, metadata !88, null}
!88 = metadata !{i32 786443, metadata !85, i32 23, i32 47, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 23, i32 48, metadata !88, null}
!90 = metadata !{i32 786688, metadata !75, metadata !"summation", metadata !28, i32 21, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 786688, metadata !85, metadata !"col", metadata !28, i32 23, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!92 = metadata !{i32 26, i32 2, metadata !83, null}
!93 = metadata !{i32 786688, metadata !74, metadata !"row", metadata !28, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 34, i32 40, metadata !79, null}
!95 = metadata !{i32 34, i32 48, metadata !96, null}
!96 = metadata !{i32 786443, metadata !79, i32 34, i32 47, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 35, i32 30, metadata !98, null}
!98 = metadata !{i32 786443, metadata !96, i32 35, i32 14, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 35, i32 41, metadata !98, null}
!100 = metadata !{i32 36, i32 4, metadata !101, null}
!101 = metadata !{i32 786443, metadata !98, i32 35, i32 48, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 35, i32 49, metadata !101, null}
!103 = metadata !{i32 786688, metadata !80, metadata !"summation", metadata !28, i32 33, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786688, metadata !98, metadata !"col", metadata !28, i32 35, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 38, i32 2, metadata !96, null}
!106 = metadata !{i32 786688, metadata !79, metadata !"row", metadata !28, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 46, i32 2, metadata !108, metadata !34}
!108 = metadata !{i32 786443, metadata !27, i32 45, i32 70, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
