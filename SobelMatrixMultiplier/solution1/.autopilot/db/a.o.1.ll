; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@_vertical_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 0, i32 -2], [3 x i32] [i32 1, i32 0, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@_horizontal_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 1], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -2, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=1 type=[4 x i8]*]

; [#uses=11]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define internal fastcc i32 @getVerticalResult([3 x i32]* %array) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !59), !dbg !60 ; [debug line = 5:27] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !61 ; [debug line = 5:41]
  br label %1, !dbg !63                           ; [debug line = 7:23]

; <label>:1                                       ; preds = %5, %0
  %row = phi i32 [ 0, %0 ], [ %row.1, %5 ]        ; [#uses=3 type=i32]
  %summation = phi i32 [ 0, %0 ], [ %summation.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %row, 3, !dbg !63      ; [#uses=1 type=i1] [debug line = 7:23]
  br i1 %exitcond1, label %6, label %2, !dbg !63  ; [debug line = 7:23]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !65 ; [debug line = 7:42]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !65 ; [#uses=1 type=i32] [debug line = 7:42]
  %tmp = sext i32 %row to i64, !dbg !67           ; [#uses=2 type=i64] [debug line = 9:4]
  br label %3, !dbg !70                           ; [debug line = 8:24]

; <label>:3                                       ; preds = %4, %2
  %summation.1 = phi i32 [ %summation, %2 ], [ %summation.2, %4 ] ; [#uses=2 type=i32]
  %col = phi i32 [ 0, %2 ], [ %col.1, %4 ]        ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %col, 3, !dbg !70       ; [#uses=1 type=i1] [debug line = 8:24]
  br i1 %exitcond, label %5, label %4, !dbg !70   ; [debug line = 8:24]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !71 ; [debug line = 8:43]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 8:43]
  %tmp.2 = sext i32 %col to i64, !dbg !67         ; [#uses=2 type=i64] [debug line = 9:4]
  %array.addr = getelementptr inbounds [3 x i32]* %array, i64 %tmp, i64 %tmp.2, !dbg !67 ; [#uses=1 type=i32*] [debug line = 9:4]
  %array.load = load i32* %array.addr, align 4, !dbg !67 ; [#uses=2 type=i32] [debug line = 9:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %_vertical_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_vertical_sobel_operator, i64 0, i64 %tmp, i64 %tmp.2, !dbg !67 ; [#uses=1 type=i32*] [debug line = 9:4]
  %_vertical_sobel_operator.load = load i32* %_vertical_sobel_operator.addr, align 4, !dbg !67 ; [#uses=2 type=i32] [debug line = 9:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_vertical_sobel_operator.load) nounwind
  %tmp.3 = mul nsw i32 %_vertical_sobel_operator.load, %array.load, !dbg !67 ; [#uses=1 type=i32] [debug line = 9:4]
  %summation.2 = add nsw i32 %tmp.3, %summation.1, !dbg !67 ; [#uses=1 type=i32] [debug line = 9:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.2}, i64 0, metadata !72), !dbg !67 ; [debug line = 9:4] [debug variable = summation]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 10:3]
  %col.1 = add nsw i32 %col, 1, !dbg !74          ; [#uses=1 type=i32] [debug line = 8:35]
  call void @llvm.dbg.value(metadata !{i32 %col.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 8:35] [debug variable = col]
  br label %3, !dbg !74                           ; [debug line = 8:35]

; <label>:5                                       ; preds = %3
  %summation.1.lcssa = phi i32 [ %summation.1, %3 ] ; [#uses=1 type=i32]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !76 ; [#uses=0 type=i32] [debug line = 11:2]
  %row.1 = add nsw i32 %row, 1, !dbg !77          ; [#uses=1 type=i32] [debug line = 7:34]
  call void @llvm.dbg.value(metadata !{i32 %row.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 7:34] [debug variable = row]
  br label %1, !dbg !77                           ; [debug line = 7:34]

; <label>:6                                       ; preds = %1
  %summation.0.lcssa = phi i32 [ %summation, %1 ] ; [#uses=1 type=i32]
  ret i32 %summation.0.lcssa, !dbg !79            ; [debug line = 12:2]
}

; [#uses=1]
define internal fastcc i32 @getHorizontalResult([3 x i32]* %array) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !80), !dbg !81 ; [debug line = 17:29] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !82 ; [debug line = 17:43]
  br label %1, !dbg !84                           ; [debug line = 19:23]

; <label>:1                                       ; preds = %5, %0
  %row = phi i32 [ 0, %0 ], [ %row.2, %5 ]        ; [#uses=3 type=i32]
  %summation = phi i32 [ 0, %0 ], [ %summation.1.lcssa, %5 ] ; [#uses=2 type=i32]
  %exitcond1 = icmp eq i32 %row, 3, !dbg !84      ; [#uses=1 type=i1] [debug line = 19:23]
  br i1 %exitcond1, label %6, label %2, !dbg !84  ; [debug line = 19:23]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 19:42]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !86 ; [#uses=1 type=i32] [debug line = 19:42]
  %tmp = sext i32 %row to i64, !dbg !88           ; [#uses=2 type=i64] [debug line = 21:4]
  br label %3, !dbg !91                           ; [debug line = 20:24]

; <label>:3                                       ; preds = %4, %2
  %summation.1 = phi i32 [ %summation, %2 ], [ %summation.3, %4 ] ; [#uses=2 type=i32]
  %col = phi i32 [ 0, %2 ], [ %col.2, %4 ]        ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %col, 3, !dbg !91       ; [#uses=1 type=i1] [debug line = 20:24]
  br i1 %exitcond, label %5, label %4, !dbg !91   ; [debug line = 20:24]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !92 ; [debug line = 20:43]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !92 ; [#uses=1 type=i32] [debug line = 20:43]
  %tmp.7 = sext i32 %col to i64, !dbg !88         ; [#uses=2 type=i64] [debug line = 21:4]
  %array.addr = getelementptr inbounds [3 x i32]* %array, i64 %tmp, i64 %tmp.7, !dbg !88 ; [#uses=1 type=i32*] [debug line = 21:4]
  %array.load = load i32* %array.addr, align 4, !dbg !88 ; [#uses=2 type=i32] [debug line = 21:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %array.load) nounwind
  %_horizontal_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_horizontal_sobel_operator, i64 0, i64 %tmp, i64 %tmp.7, !dbg !88 ; [#uses=1 type=i32*] [debug line = 21:4]
  %_horizontal_sobel_operator.load = load i32* %_horizontal_sobel_operator.addr, align 4, !dbg !88 ; [#uses=2 type=i32] [debug line = 21:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %_horizontal_sobel_operator.load) nounwind
  %tmp.8 = mul nsw i32 %_horizontal_sobel_operator.load, %array.load, !dbg !88 ; [#uses=1 type=i32] [debug line = 21:4]
  %summation.3 = add nsw i32 %tmp.8, %summation.1, !dbg !88 ; [#uses=1 type=i32] [debug line = 21:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.3}, i64 0, metadata !93), !dbg !88 ; [debug line = 21:4] [debug variable = summation]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !94 ; [#uses=0 type=i32] [debug line = 22:3]
  %col.2 = add nsw i32 %col, 1, !dbg !95          ; [#uses=1 type=i32] [debug line = 20:35]
  call void @llvm.dbg.value(metadata !{i32 %col.2}, i64 0, metadata !96), !dbg !95 ; [debug line = 20:35] [debug variable = col]
  br label %3, !dbg !95                           ; [debug line = 20:35]

; <label>:5                                       ; preds = %3
  %summation.1.lcssa = phi i32 [ %summation.1, %3 ] ; [#uses=1 type=i32]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !97 ; [#uses=0 type=i32] [debug line = 23:2]
  %row.2 = add nsw i32 %row, 1, !dbg !98          ; [#uses=1 type=i32] [debug line = 19:34]
  call void @llvm.dbg.value(metadata !{i32 %row.2}, i64 0, metadata !99), !dbg !98 ; [debug line = 19:34] [debug variable = row]
  br label %1, !dbg !98                           ; [debug line = 19:34]

; <label>:6                                       ; preds = %1
  %summation.0.lcssa = phi i32 [ %summation, %1 ] ; [#uses=1 type=i32]
  ret i32 %summation.0.lcssa, !dbg !100           ; [debug line = 24:2]
}

; [#uses=0]
define i32 @getConvolutionResult([3 x i32]* %array) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !101
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i32]* %array}, i64 0, metadata !107), !dbg !108 ; [debug line = 36:30] [debug variable = array]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %array, i32 3) nounwind, !dbg !109 ; [debug line = 36:43]
  %tmp = call fastcc i32 @getVerticalResult([3 x i32]* %array), !dbg !111 ; [#uses=1 type=i32] [debug line = 37:32]
  %tmp.11 = call fastcc i32 @getHorizontalResult([3 x i32]* %array), !dbg !112 ; [#uses=1 type=i32] [debug line = 37:58]
  %tmp.12 = call fastcc i32 @combineOperatorResults(i32 %tmp, i32 %tmp.11), !dbg !112 ; [#uses=1 type=i32] [debug line = 37:58]
  ret i32 %tmp.12, !dbg !112                      ; [debug line = 37:58]
}

; [#uses=1]
define internal fastcc i32 @combineOperatorResults(i32 %verticalResult, i32 %horizontalResult) nounwind uwtable {
  call void @llvm.dbg.value(metadata !{i32 %verticalResult}, i64 0, metadata !113), !dbg !114 ; [debug line = 30:32] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult}, i64 0, metadata !115), !dbg !116 ; [debug line = 30:52] [debug variable = horizontalResult]
  %tmp = add nsw i32 %horizontalResult, %verticalResult, !dbg !117 ; [#uses=1 type=i32] [debug line = 31:2]
  ret i32 %tmp, !dbg !117                         ; [debug line = 31:2]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!38, !45, !46, !52, !53, !53}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !17, metadata !20, metadata !21, metadata !28}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getVerticalResult, null, null, metadata !14, i32 5} ; [ DW_TAG_subprogram ]
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
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !6, i32 17, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getHorizontalResult, null, null, metadata !14, i32 17} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !6, i32 30, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @combineOperatorResults, null, null, metadata !14, i32 30} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !6, i32 36, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @getConvolutionResult, null, null, metadata !14, i32 36} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev", metadata !6, i32 42, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !27, metadata !14, i32 42} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !6, i32 40, i64 8, i64 8, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_class_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, i32 0, metadata !25, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !6, i32 42, metadata !22, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !14, i32 42} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev", metadata !6, i32 42, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !27, metadata !14, i32 42} ; [ DW_TAG_subprogram ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !32, metadata !37}
!31 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !6, i32 47, metadata !25, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_ZL26_horizontal_sobel_operator", metadata !33, i32 10, metadata !34, i32 1, i32 1, [3 x [3 x i32]]* @_horizontal_sobel_operator} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.h", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !35, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!36 = metadata !{metadata !13, metadata !13}
!37 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_ZL24_vertical_sobel_operator", metadata !33, i32 17, metadata !34, i32 1, i32 1, [3 x [3 x i32]]* @_vertical_sobel_operator} ; [ DW_TAG_variable ]
!38 = metadata !{i32 ([3 x i32]*)* @getVerticalResult, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!39 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!40 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*"}
!42 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!43 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!44 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!45 = metadata !{i32 ([3 x i32]*)* @getHorizontalResult, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!46 = metadata !{i32 (i32, i32)* @combineOperatorResults, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !44}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!52 = metadata !{i32 ([3 x i32]*)* @getConvolutionResult, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44}
!53 = metadata !{null, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !44}
!54 = metadata !{metadata !"kernel_arg_addr_space"}
!55 = metadata !{metadata !"kernel_arg_access_qual"}
!56 = metadata !{metadata !"kernel_arg_type"}
!57 = metadata !{metadata !"kernel_arg_type_qual"}
!58 = metadata !{metadata !"kernel_arg_name"}
!59 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777221, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 5, i32 27, metadata !5, null}
!61 = metadata !{i32 5, i32 41, metadata !62, null}
!62 = metadata !{i32 786443, metadata !5, i32 5, i32 40, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 7, i32 23, metadata !64, null}
!64 = metadata !{i32 786443, metadata !62, i32 7, i32 7, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 7, i32 42, metadata !66, null}
!66 = metadata !{i32 786443, metadata !64, i32 7, i32 41, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!67 = metadata !{i32 9, i32 4, metadata !68, null}
!68 = metadata !{i32 786443, metadata !69, i32 8, i32 42, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 786443, metadata !66, i32 8, i32 8, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 8, i32 24, metadata !69, null}
!71 = metadata !{i32 8, i32 43, metadata !68, null}
!72 = metadata !{i32 786688, metadata !62, metadata !"summation", metadata !6, i32 6, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!73 = metadata !{i32 10, i32 3, metadata !68, null}
!74 = metadata !{i32 8, i32 35, metadata !69, null}
!75 = metadata !{i32 786688, metadata !69, metadata !"col", metadata !6, i32 8, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 11, i32 2, metadata !66, null}
!77 = metadata !{i32 7, i32 34, metadata !64, null}
!78 = metadata !{i32 786688, metadata !64, metadata !"row", metadata !6, i32 7, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 12, i32 2, metadata !62, null}
!80 = metadata !{i32 786689, metadata !16, metadata !"array", metadata !6, i32 16777233, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!81 = metadata !{i32 17, i32 29, metadata !16, null}
!82 = metadata !{i32 17, i32 43, metadata !83, null}
!83 = metadata !{i32 786443, metadata !16, i32 17, i32 42, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 19, i32 23, metadata !85, null}
!85 = metadata !{i32 786443, metadata !83, i32 19, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 19, i32 42, metadata !87, null}
!87 = metadata !{i32 786443, metadata !85, i32 19, i32 41, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!88 = metadata !{i32 21, i32 4, metadata !89, null}
!89 = metadata !{i32 786443, metadata !90, i32 20, i32 42, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 786443, metadata !87, i32 20, i32 8, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 20, i32 24, metadata !90, null}
!92 = metadata !{i32 20, i32 43, metadata !89, null}
!93 = metadata !{i32 786688, metadata !83, metadata !"summation", metadata !6, i32 18, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 22, i32 3, metadata !89, null}
!95 = metadata !{i32 20, i32 35, metadata !90, null}
!96 = metadata !{i32 786688, metadata !90, metadata !"col", metadata !6, i32 20, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 23, i32 2, metadata !87, null}
!98 = metadata !{i32 19, i32 34, metadata !85, null}
!99 = metadata !{i32 786688, metadata !85, metadata !"row", metadata !6, i32 19, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 24, i32 2, metadata !83, null}
!101 = metadata !{metadata !102}
!102 = metadata !{i32 0, i32 31, metadata !103}
!103 = metadata !{metadata !104}
!104 = metadata !{metadata !"return", metadata !105, metadata !"int", i32 0, i32 31}
!105 = metadata !{metadata !106}
!106 = metadata !{i32 0, i32 1, i32 0}
!107 = metadata !{i32 786689, metadata !20, metadata !"array", metadata !6, i32 16777252, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 36, i32 30, metadata !20, null}
!109 = metadata !{i32 36, i32 43, metadata !110, null}
!110 = metadata !{i32 786443, metadata !20, i32 36, i32 42, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 37, i32 32, metadata !110, null}
!112 = metadata !{i32 37, i32 58, metadata !110, null}
!113 = metadata !{i32 786689, metadata !17, metadata !"verticalResult", metadata !6, i32 16777246, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 30, i32 32, metadata !17, null}
!115 = metadata !{i32 786689, metadata !17, metadata !"horizontalResult", metadata !6, i32 33554462, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 30, i32 52, metadata !17, null}
!117 = metadata !{i32 31, i32 2, metadata !118, null}
!118 = metadata !{i32 786443, metadata !17, i32 30, i32 70, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
