; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@p_vertical_sobel_oper = internal constant [9 x i3] [i3 1, i3 0, i3 -1, i3 2, i3 0, i3 -2, i3 1, i3 0, i3 -1] ; [#uses=1 type=[9 x i3]*]
@p_horizontal_sobel_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1] ; [#uses=1 type=[9 x i3]*]
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=2 type=[4 x i8]*]
@p_str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=6 type=[4 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([9 x i32]* %array) nounwind uwtable readonly {
  %verticalResult_assig = alloca i32              ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %verticalResult_assig}, metadata !26) ; [debug variable = verticalResult]
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !55), !dbg !58 ; [debug line = 36:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !59) nounwind, !dbg !62 ; [debug line = 5:27@37:32] [debug variable = array]
  store i32 0, i32* %verticalResult_assig
  br label %1, !dbg !63                           ; [debug line = 7:23@37:32]

; <label>:1                                       ; preds = %5, %0
  %row_i = phi i2 [ 0, %0 ], [ %row, %5 ]         ; [#uses=4 type=i2]
  %exitcond1_i = icmp eq i2 %row_i, -1, !dbg !63  ; [#uses=1 type=i1] [debug line = 7:23@37:32]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %row = add i2 %row_i, 1, !dbg !66               ; [#uses=1 type=i2] [debug line = 7:34@37:32]
  br i1 %exitcond1_i, label %getVerticalResult.exit.preheader, label %2, !dbg !63 ; [debug line = 7:23@37:32]

getVerticalResult.exit.preheader:                 ; preds = %1
  %horizontalResult_ass = alloca i32              ; [#uses=4 type=i32*]
  call void @llvm.dbg.declare(metadata !{i32* %horizontalResult_ass}, metadata !67) ; [debug variable = horizontalResult]
  store i32 0, i32* %horizontalResult_ass
  br label %getVerticalResult.exit, !dbg !68      ; [debug line = 19:23@37:58]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind, !dbg !72 ; [debug line = 7:42@37:32]
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 7:42@37:32]
  %tmp_i_cast = zext i2 %row_i to i5              ; [#uses=1 type=i5]
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i, i2 0) ; [#uses=1 type=i4]
  %p_shl_cast = zext i4 %tmp to i5, !dbg !74      ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_1 = sub i5 %p_shl_cast, %tmp_i_cast, !dbg !74 ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  br label %3, !dbg !77                           ; [debug line = 8:24@37:32]

; <label>:3                                       ; preds = %4, %2
  %col_i = phi i2 [ 0, %2 ], [ %col, %4 ]         ; [#uses=3 type=i2]
  %exitcond_i = icmp eq i2 %col_i, -1, !dbg !77   ; [#uses=1 type=i1] [debug line = 8:24@37:32]
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %col = add i2 %col_i, 1, !dbg !78               ; [#uses=1 type=i2] [debug line = 8:35@37:32]
  br i1 %exitcond_i, label %5, label %4, !dbg !77 ; [debug line = 8:24@37:32]

; <label>:4                                       ; preds = %3
  %verticalResult_assig_1 = load i32* %verticalResult_assig, !dbg !74 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !79 ; [debug line = 8:43@37:32]
  %tmp_2_i_cast = zext i2 %col_i to i5, !dbg !74  ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_4 = add i5 %tmp_1, %tmp_2_i_cast, !dbg !74 ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_4_cast = sext i5 %tmp_4 to i64, !dbg !74   ; [#uses=2 type=i64] [debug line = 9:4@37:32]
  %array_addr = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_4_cast, !dbg !74 ; [#uses=1 type=i32*] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper = getelementptr [9 x i3]* @p_vertical_sobel_oper, i64 0, i64 %tmp_4_cast, !dbg !74 ; [#uses=1 type=i3*] [debug line = 9:4@37:32]
  %array_load = load i32* %array_addr, align 4, !dbg !74 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper_1 = load i3* %p_vertical_sobel_oper, align 1, !dbg !74 ; [#uses=1 type=i3] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper_2 = sext i3 %p_vertical_sobel_oper_1 to i32, !dbg !74 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %tmp_3_i = mul nsw i32 %p_vertical_sobel_oper_2, %array_load, !dbg !74 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %summation = add nsw i32 %verticalResult_assig_1, %tmp_3_i, !dbg !74 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !80) nounwind, !dbg !74 ; [debug line = 9:4@37:32] [debug variable = summation]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !81) nounwind, !dbg !78 ; [debug line = 8:35@37:32] [debug variable = col]
  store i32 %summation, i32* %verticalResult_assig, !dbg !74 ; [debug line = 9:4@37:32]
  br label %3, !dbg !78                           ; [debug line = 8:35@37:32]

; <label>:5                                       ; preds = %3
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_1_i) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 11:2@37:32]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !83) nounwind, !dbg !66 ; [debug line = 7:34@37:32] [debug variable = row]
  br label %1, !dbg !66                           ; [debug line = 7:34@37:32]

getVerticalResult.exit:                           ; preds = %9, %getVerticalResult.exit.preheader
  %row_i1 = phi i2 [ %row_1, %9 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=4 type=i2]
  %exitcond1_i3 = icmp eq i2 %row_i1, -1, !dbg !68 ; [#uses=1 type=i1] [debug line = 19:23@37:58]
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %row_1 = add i2 %row_i1, 1, !dbg !84            ; [#uses=1 type=i2] [debug line = 19:34@37:58]
  br i1 %exitcond1_i3, label %getHorizontalResult.exit, label %6, !dbg !68 ; [debug line = 19:23@37:58]

; <label>:6                                       ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind, !dbg !85 ; [debug line = 19:42@37:58]
  %tmp_2_i4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 19:42@37:58]
  %tmp_i5_cast = zext i2 %row_i1 to i5            ; [#uses=1 type=i5]
  %tmp_2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i1, i2 0) ; [#uses=1 type=i4]
  %p_shl1_cast = zext i4 %tmp_2 to i5, !dbg !87   ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_3 = sub i5 %p_shl1_cast, %tmp_i5_cast, !dbg !87 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  br label %7, !dbg !90                           ; [debug line = 20:24@37:58]

; <label>:7                                       ; preds = %8, %6
  %col_i7 = phi i2 [ 0, %6 ], [ %col_1, %8 ]      ; [#uses=3 type=i2]
  %exitcond_i8 = icmp eq i2 %col_i7, -1, !dbg !90 ; [#uses=1 type=i1] [debug line = 20:24@37:58]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  %col_1 = add i2 %col_i7, 1, !dbg !91            ; [#uses=1 type=i2] [debug line = 20:35@37:58]
  br i1 %exitcond_i8, label %9, label %8, !dbg !90 ; [debug line = 20:24@37:58]

; <label>:8                                       ; preds = %7
  %horizontalResult_ass_1 = load i32* %horizontalResult_ass, !dbg !87 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !92 ; [debug line = 20:43@37:58]
  %tmp_7_i_cast = zext i2 %col_i7 to i5, !dbg !87 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_5 = add i5 %tmp_3, %tmp_7_i_cast, !dbg !87 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_5_cast = sext i5 %tmp_5 to i64, !dbg !87   ; [#uses=2 type=i64] [debug line = 21:4@37:58]
  %array_addr_1 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_5_cast, !dbg !87 ; [#uses=1 type=i32*] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op = getelementptr [9 x i3]* @p_horizontal_sobel_op, i64 0, i64 %tmp_5_cast, !dbg !87 ; [#uses=1 type=i3*] [debug line = 21:4@37:58]
  %array_load_1 = load i32* %array_addr_1, align 4, !dbg !87 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op_1 = load i3* %p_horizontal_sobel_op, align 1, !dbg !87 ; [#uses=1 type=i3] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op_2 = sext i3 %p_horizontal_sobel_op_1 to i32, !dbg !87 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %tmp_8_i = mul nsw i32 %p_horizontal_sobel_op_2, %array_load_1, !dbg !87 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %summation_1 = add nsw i32 %horizontalResult_ass_1, %tmp_8_i, !dbg !87 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  call void @llvm.dbg.value(metadata !{i32 %summation_1}, i64 0, metadata !93) nounwind, !dbg !87 ; [debug line = 21:4@37:58] [debug variable = summation]
  call void @llvm.dbg.value(metadata !{i2 %col_1}, i64 0, metadata !94) nounwind, !dbg !91 ; [debug line = 20:35@37:58] [debug variable = col]
  store i32 %summation_1, i32* %horizontalResult_ass, !dbg !87 ; [debug line = 21:4@37:58]
  br label %7, !dbg !91                           ; [debug line = 20:35@37:58]

; <label>:9                                       ; preds = %7
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_2_i4) nounwind, !dbg !95 ; [#uses=0 type=i32] [debug line = 23:2@37:58]
  call void @llvm.dbg.value(metadata !{i2 %row_1}, i64 0, metadata !96) nounwind, !dbg !84 ; [debug line = 19:34@37:58] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !84      ; [debug line = 19:34@37:58]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult_ass_2 = load i32* %horizontalResult_ass, !dbg !97 ; [#uses=1 type=i32] [debug line = 31:2@37:58]
  %verticalResult_assig_2 = load i32* %verticalResult_assig, !dbg !97 ; [#uses=1 type=i32] [debug line = 31:2@37:58]
  %tmp_i1 = add nsw i32 %horizontalResult_ass_2, %verticalResult_assig_2, !dbg !97 ; [#uses=1 type=i32] [debug line = 31:2@37:58]
  ret i32 %tmp_i1, !dbg !34                       ; [debug line = 37:58]
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

; [#uses=2]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_8 = zext i2 %1 to i4                     ; [#uses=1 type=i4]
  %empty_9 = shl i4 %empty, 2                     ; [#uses=1 type=i4]
  %empty_10 = or i4 %empty_9, %empty_8            ; [#uses=1 type=i4]
  ret i4 %empty_10
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
!26 = metadata !{i32 786689, metadata !27, metadata !"verticalResult", metadata !28, i32 16777246, metadata !31, i32 0, metadata !34} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !28, i32 30, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 30} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{metadata !31, metadata !31, metadata !31}
!31 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!34 = metadata !{i32 37, i32 58, metadata !35, null}
!35 = metadata !{i32 786443, metadata !36, i32 36, i32 42, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !28, i32 36, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 36} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !31, metadata !39}
!39 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ]
!40 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !41, i32 0, i32 0} ; [ DW_TAG_array_type ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"array", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48, metadata !48}
!48 = metadata !{i32 0, i32 2, i32 1}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"return", metadata !53, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 1, i32 0}
!55 = metadata !{i32 786689, metadata !36, metadata !"array", null, i32 36, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !31, metadata !57, i32 0, i32 0} ; [ DW_TAG_array_type ]
!57 = metadata !{metadata !42, metadata !42}
!58 = metadata !{i32 36, i32 30, metadata !36, null}
!59 = metadata !{i32 786689, metadata !60, metadata !"array", null, i32 5, metadata !56, i32 0, metadata !61} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !28, i32 5, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 5} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 37, i32 32, metadata !35, null}
!62 = metadata !{i32 5, i32 27, metadata !60, metadata !61}
!63 = metadata !{i32 7, i32 23, metadata !64, metadata !61}
!64 = metadata !{i32 786443, metadata !65, i32 7, i32 7, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !60, i32 5, i32 40, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 7, i32 34, metadata !64, metadata !61}
!67 = metadata !{i32 786689, metadata !27, metadata !"horizontalResult", metadata !28, i32 33554462, metadata !31, i32 0, metadata !34} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 19, i32 23, metadata !69, metadata !34}
!69 = metadata !{i32 786443, metadata !70, i32 19, i32 7, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !71, i32 17, i32 42, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !28, i32 17, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !32, i32 17} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 7, i32 42, metadata !73, metadata !61}
!73 = metadata !{i32 786443, metadata !64, i32 7, i32 41, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!74 = metadata !{i32 9, i32 4, metadata !75, metadata !61}
!75 = metadata !{i32 786443, metadata !76, i32 8, i32 42, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !73, i32 8, i32 8, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 8, i32 24, metadata !76, metadata !61}
!78 = metadata !{i32 8, i32 35, metadata !76, metadata !61}
!79 = metadata !{i32 8, i32 43, metadata !75, metadata !61}
!80 = metadata !{i32 786688, metadata !65, metadata !"summation", metadata !28, i32 6, metadata !31, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 786688, metadata !76, metadata !"col", metadata !28, i32 8, metadata !31, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 11, i32 2, metadata !73, metadata !61}
!83 = metadata !{i32 786688, metadata !64, metadata !"row", metadata !28, i32 7, metadata !31, i32 0, metadata !61} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 19, i32 34, metadata !69, metadata !34}
!85 = metadata !{i32 19, i32 42, metadata !86, metadata !34}
!86 = metadata !{i32 786443, metadata !69, i32 19, i32 41, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 21, i32 4, metadata !88, metadata !34}
!88 = metadata !{i32 786443, metadata !89, i32 20, i32 42, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 786443, metadata !86, i32 20, i32 8, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 20, i32 24, metadata !89, metadata !34}
!91 = metadata !{i32 20, i32 35, metadata !89, metadata !34}
!92 = metadata !{i32 20, i32 43, metadata !88, metadata !34}
!93 = metadata !{i32 786688, metadata !70, metadata !"summation", metadata !28, i32 18, metadata !31, i32 0, metadata !34} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 786688, metadata !89, metadata !"col", metadata !28, i32 20, metadata !31, i32 0, metadata !34} ; [ DW_TAG_auto_variable ]
!95 = metadata !{i32 23, i32 2, metadata !86, metadata !34}
!96 = metadata !{i32 786688, metadata !69, metadata !"row", metadata !28, i32 19, metadata !31, i32 0, metadata !34} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 31, i32 2, metadata !98, metadata !34}
!98 = metadata !{i32 786443, metadata !27, i32 30, i32 70, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
