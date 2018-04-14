; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@_vertical_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 0, i32 -2], [3 x i32] [i32 1, i32 0, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@_horizontal_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 1], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -2, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@.str4 = private unnamed_addr constant [10 x i8] c"Col_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"Col_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @getVerticalResult([3 x i32]* %array) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !58), !dbg !59 ; [debug line = 20:27] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !60 ; [debug line = 20:41]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !62 ; [debug line = 21:1]
  br label %1, !dbg !63                           ; [debug line = 22:28]

; <label>:1                                       ; preds = %5, %0
  %row = phi i32 [ 0, %0 ], [ %row.1, %5 ]        ; [#uses=3 type=i32]
  %summation = phi i32 [ 0, %0 ], [ %summation.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %row, 3, !dbg !63      ; [#uses=1 type=i1] [debug line = 22:28]
  br i1 %exitcond1, label %6, label %2, !dbg !63  ; [debug line = 22:28]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 22:47]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 22:47]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !67 ; [debug line = 23:1]
  %tmp = sext i32 %row to i64, !dbg !68           ; [#uses=2 type=i64] [debug line = 24:4]
  br label %3, !dbg !71                           ; [debug line = 23:29]

; <label>:3                                       ; preds = %4, %2
  %summation.1 = phi i32 [ %summation, %2 ], [ %summation.2, %4 ] ; [#uses=2 type=i32]
  %col = phi i32 [ 0, %2 ], [ %col.1, %4 ]        ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %col, 3, !dbg !71       ; [#uses=1 type=i1] [debug line = 23:29]
  br i1 %exitcond, label %5, label %4, !dbg !71   ; [debug line = 23:29]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !72 ; [debug line = 23:48]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !72 ; [#uses=1 type=i32] [debug line = 23:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 24:1]
  %tmp.2 = sext i32 %col to i64, !dbg !68         ; [#uses=2 type=i64] [debug line = 24:4]
  %array.addr = getelementptr inbounds [3 x i32]* %array, i64 %tmp, i64 %tmp.2, !dbg !68 ; [#uses=1 type=i32*] [debug line = 24:4]
  %array.load = load i32* %array.addr, align 4, !dbg !68 ; [#uses=2 type=i32] [debug line = 24:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %_vertical_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_vertical_sobel_operator, i64 0, i64 %tmp, i64 %tmp.2, !dbg !68 ; [#uses=1 type=i32*] [debug line = 24:4]
  %_vertical_sobel_operator.load = load i32* %_vertical_sobel_operator.addr, align 4, !dbg !68 ; [#uses=2 type=i32] [debug line = 24:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_vertical_sobel_operator.load) nounwind
  %tmp.3 = mul nsw i32 %_vertical_sobel_operator.load, %array.load, !dbg !68 ; [#uses=1 type=i32] [debug line = 24:4]
  %summation.2 = add nsw i32 %tmp.3, %summation.1, !dbg !68 ; [#uses=1 type=i32] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.2}, i64 0, metadata !74), !dbg !68 ; [debug line = 24:4] [debug variable = summation]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !75 ; [#uses=0 type=i32] [debug line = 25:3]
  %col.1 = add nsw i32 %col, 1, !dbg !76          ; [#uses=1 type=i32] [debug line = 23:40]
  call void @llvm.dbg.value(metadata !{i32 %col.1}, i64 0, metadata !77), !dbg !76 ; [debug line = 23:40] [debug variable = col]
  br label %3, !dbg !76                           ; [debug line = 23:40]

; <label>:5                                       ; preds = %3
  %summation.1.lcssa = phi i32 [ %summation.1, %3 ] ; [#uses=1 type=i32]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !78 ; [#uses=0 type=i32] [debug line = 26:2]
  %row.1 = add nsw i32 %row, 1, !dbg !79          ; [#uses=1 type=i32] [debug line = 22:39]
  call void @llvm.dbg.value(metadata !{i32 %row.1}, i64 0, metadata !80), !dbg !79 ; [debug line = 22:39] [debug variable = row]
  br label %1, !dbg !79                           ; [debug line = 22:39]

; <label>:6                                       ; preds = %1
  %summation.0.lcssa = phi i32 [ %summation, %1 ] ; [#uses=1 type=i32]
  ret i32 %summation.0.lcssa, !dbg !81            ; [debug line = 27:2]
}

; [#uses=1]
define internal fastcc i32 @getHorizontalResult([3 x i32]* %array) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !82), !dbg !83 ; [debug line = 32:29] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !84 ; [debug line = 32:43]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 33:1]
  br label %1, !dbg !87                           ; [debug line = 34:29]

; <label>:1                                       ; preds = %5, %0
  %row = phi i32 [ 0, %0 ], [ %row.2, %5 ]        ; [#uses=3 type=i32]
  %summation = phi i32 [ 0, %0 ], [ %summation.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %row, 3, !dbg !87      ; [#uses=1 type=i1] [debug line = 34:29]
  br i1 %exitcond1, label %6, label %2, !dbg !87  ; [debug line = 34:29]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !89 ; [debug line = 34:48]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !89 ; [#uses=1 type=i32] [debug line = 34:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !91 ; [debug line = 35:1]
  %tmp = sext i32 %row to i64, !dbg !92           ; [#uses=2 type=i64] [debug line = 36:4]
  br label %3, !dbg !95                           ; [debug line = 35:30]

; <label>:3                                       ; preds = %4, %2
  %summation.1 = phi i32 [ %summation, %2 ], [ %summation.3, %4 ] ; [#uses=2 type=i32]
  %col = phi i32 [ 0, %2 ], [ %col.2, %4 ]        ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %col, 3, !dbg !95       ; [#uses=1 type=i1] [debug line = 35:30]
  br i1 %exitcond, label %5, label %4, !dbg !95   ; [debug line = 35:30]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !96 ; [debug line = 35:49]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 35:49]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !97 ; [debug line = 36:1]
  %tmp.7 = sext i32 %col to i64, !dbg !92         ; [#uses=2 type=i64] [debug line = 36:4]
  %array.addr = getelementptr inbounds [3 x i32]* %array, i64 %tmp, i64 %tmp.7, !dbg !92 ; [#uses=1 type=i32*] [debug line = 36:4]
  %array.load = load i32* %array.addr, align 4, !dbg !92 ; [#uses=2 type=i32] [debug line = 36:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %_horizontal_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_horizontal_sobel_operator, i64 0, i64 %tmp, i64 %tmp.7, !dbg !92 ; [#uses=1 type=i32*] [debug line = 36:4]
  %_horizontal_sobel_operator.load = load i32* %_horizontal_sobel_operator.addr, align 4, !dbg !92 ; [#uses=2 type=i32] [debug line = 36:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_horizontal_sobel_operator.load) nounwind
  %tmp.8 = mul nsw i32 %_horizontal_sobel_operator.load, %array.load, !dbg !92 ; [#uses=1 type=i32] [debug line = 36:4]
  %summation.3 = add nsw i32 %tmp.8, %summation.1, !dbg !92 ; [#uses=1 type=i32] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.3}, i64 0, metadata !98), !dbg !92 ; [debug line = 36:4] [debug variable = summation]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !99 ; [#uses=0 type=i32] [debug line = 37:3]
  %col.2 = add nsw i32 %col, 1, !dbg !100         ; [#uses=1 type=i32] [debug line = 35:41]
  call void @llvm.dbg.value(metadata !{i32 %col.2}, i64 0, metadata !101), !dbg !100 ; [debug line = 35:41] [debug variable = col]
  br label %3, !dbg !100                          ; [debug line = 35:41]

; <label>:5                                       ; preds = %3
  %summation.1.lcssa = phi i32 [ %summation.1, %3 ] ; [#uses=1 type=i32]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str3, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !102 ; [#uses=0 type=i32] [debug line = 38:2]
  %row.2 = add nsw i32 %row, 1, !dbg !103         ; [#uses=1 type=i32] [debug line = 34:40]
  call void @llvm.dbg.value(metadata !{i32 %row.2}, i64 0, metadata !104), !dbg !103 ; [debug line = 34:40] [debug variable = row]
  br label %1, !dbg !103                          ; [debug line = 34:40]

; <label>:6                                       ; preds = %1
  %summation.0.lcssa = phi i32 [ %summation, %1 ] ; [#uses=1 type=i32]
  ret i32 %summation.0.lcssa, !dbg !105           ; [debug line = 39:2]
}

; [#uses=0]
define i32 @getConvolutionResult([3 x i32]* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !106
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !112), !dbg !113 ; [debug line = 51:30] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !114 ; [debug line = 51:43]
  %tmp = call fastcc i32 @getVerticalResult([3 x i32]* %array), !dbg !116 ; [#uses=1 type=i32] [debug line = 52:32]
  %tmp.11 = call fastcc i32 @getHorizontalResult([3 x i32]* %array), !dbg !117 ; [#uses=1 type=i32] [debug line = 52:58]
  %tmp.12 = call fastcc i32 @combineOperatorResults(i32 %tmp, i32 %tmp.11), !dbg !117 ; [#uses=1 type=i32] [debug line = 52:58]
  ret i32 %tmp.12, !dbg !117                      ; [debug line = 52:58]
}

; [#uses=1]
define internal fastcc i32 @combineOperatorResults(i32 %verticalResult, i32 %horizontalResult) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %verticalResult}, i64 0, metadata !118), !dbg !119 ; [debug line = 45:32] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult}, i64 0, metadata !120), !dbg !121 ; [debug line = 45:52] [debug variable = horizontalResult]
  %tmp = add nsw i32 %horizontalResult, %verticalResult, !dbg !122 ; [#uses=1 type=i32] [debug line = 46:2]
  ret i32 %tmp, !dbg !122                         ; [debug line = 46:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!37, !44, !45, !51, !52, !52}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !17, metadata !20, metadata !21, metadata !28}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !6, i32 20, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getVerticalResult, null, null, metadata !14, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !9, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !6, i32 32, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getHorizontalResult, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !6, i32 45, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @combineOperatorResults, null, null, metadata !14, i32 45} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !6, i32 51, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getConvolutionResult, null, null, metadata !14, i32 51} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev", metadata !6, i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !27, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !6, i32 55, i64 8, i64 8, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_class_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, i32 0, metadata !25, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !6, i32 57, metadata !22, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev", metadata !6, i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !27, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !32, metadata !36}
!31 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !6, i32 62, metadata !25, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_ZL26_horizontal_sobel_operator", metadata !6, i32 4, metadata !33, i32 1, i32 1, [3 x [3 x i32]]* @_horizontal_sobel_operator} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !34, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!35 = metadata !{metadata !13, metadata !13}
!36 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_ZL24_vertical_sobel_operator", metadata !6, i32 11, metadata !33, i32 1, i32 1, [3 x [3 x i32]]* @_vertical_sobel_operator} ; [ DW_TAG_variable ]
!37 = metadata !{i32 ([3 x i32]*)* @getVerticalResult, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!43 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!44 = metadata !{i32 ([3 x i32]*)* @getHorizontalResult, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!45 = metadata !{i32 (i32, i32)* @combineOperatorResults, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !43}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!51 = metadata !{i32 ([3 x i32]*)* @getConvolutionResult, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!52 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !43}
!53 = metadata !{metadata !"kernel_arg_addr_space"}
!54 = metadata !{metadata !"kernel_arg_access_qual"}
!55 = metadata !{metadata !"kernel_arg_type"}
!56 = metadata !{metadata !"kernel_arg_type_qual"}
!57 = metadata !{metadata !"kernel_arg_name"}
!58 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777236, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 20, i32 27, metadata !5, null}
!60 = metadata !{i32 20, i32 41, metadata !61, null}
!61 = metadata !{i32 786443, metadata !5, i32 20, i32 40, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 21, i32 1, metadata !61, null}
!63 = metadata !{i32 22, i32 28, metadata !64, null}
!64 = metadata !{i32 786443, metadata !61, i32 22, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 22, i32 47, metadata !66, null}
!66 = metadata !{i32 786443, metadata !64, i32 22, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 23, i32 1, metadata !66, null}
!68 = metadata !{i32 24, i32 4, metadata !69, null}
!69 = metadata !{i32 786443, metadata !70, i32 23, i32 47, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 786443, metadata !66, i32 23, i32 13, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 23, i32 29, metadata !70, null}
!72 = metadata !{i32 23, i32 48, metadata !69, null}
!73 = metadata !{i32 24, i32 1, metadata !69, null}
!74 = metadata !{i32 786688, metadata !61, metadata !"summation", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 25, i32 3, metadata !69, null}
!76 = metadata !{i32 23, i32 40, metadata !70, null}
!77 = metadata !{i32 786688, metadata !70, metadata !"col", metadata !6, i32 23, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!78 = metadata !{i32 26, i32 2, metadata !66, null}
!79 = metadata !{i32 22, i32 39, metadata !64, null}
!80 = metadata !{i32 786688, metadata !64, metadata !"row", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!81 = metadata !{i32 27, i32 2, metadata !61, null}
!82 = metadata !{i32 786689, metadata !16, metadata !"array", metadata !6, i32 16777248, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!83 = metadata !{i32 32, i32 29, metadata !16, null}
!84 = metadata !{i32 32, i32 43, metadata !85, null}
!85 = metadata !{i32 786443, metadata !16, i32 32, i32 42, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 33, i32 1, metadata !85, null}
!87 = metadata !{i32 34, i32 29, metadata !88, null}
!88 = metadata !{i32 786443, metadata !85, i32 34, i32 13, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 34, i32 48, metadata !90, null}
!90 = metadata !{i32 786443, metadata !88, i32 34, i32 47, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 35, i32 1, metadata !90, null}
!92 = metadata !{i32 36, i32 4, metadata !93, null}
!93 = metadata !{i32 786443, metadata !94, i32 35, i32 48, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !90, i32 35, i32 14, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 35, i32 30, metadata !94, null}
!96 = metadata !{i32 35, i32 49, metadata !93, null}
!97 = metadata !{i32 36, i32 1, metadata !93, null}
!98 = metadata !{i32 786688, metadata !85, metadata !"summation", metadata !6, i32 33, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!99 = metadata !{i32 37, i32 3, metadata !93, null}
!100 = metadata !{i32 35, i32 41, metadata !94, null}
!101 = metadata !{i32 786688, metadata !94, metadata !"col", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 38, i32 2, metadata !90, null}
!103 = metadata !{i32 34, i32 40, metadata !88, null}
!104 = metadata !{i32 786688, metadata !88, metadata !"row", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 39, i32 2, metadata !85, null}
!106 = metadata !{metadata !107}
!107 = metadata !{i32 0, i32 31, metadata !108}
!108 = metadata !{metadata !109}
!109 = metadata !{metadata !"return", metadata !110, metadata !"int", i32 0, i32 31}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 1, i32 0}
!112 = metadata !{i32 786689, metadata !20, metadata !"array", metadata !6, i32 16777267, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 51, i32 30, metadata !20, null}
!114 = metadata !{i32 51, i32 43, metadata !115, null}
!115 = metadata !{i32 786443, metadata !20, i32 51, i32 42, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 52, i32 32, metadata !115, null}
!117 = metadata !{i32 52, i32 58, metadata !115, null}
!118 = metadata !{i32 786689, metadata !17, metadata !"verticalResult", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 45, i32 32, metadata !17, null}
!120 = metadata !{i32 786689, metadata !17, metadata !"horizontalResult", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 45, i32 52, metadata !17, null}
!122 = metadata !{i32 46, i32 2, metadata !123, null}
!123 = metadata !{i32 786443, metadata !17, i32 45, i32 70, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
