; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@_vertical_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 0, i32 -2], [3 x i32] [i32 1, i32 0, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@_horizontal_sobel_operator = internal unnamed_addr constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 1], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -2, i32 -1]], align 16 ; [#uses=1 type=[3 x [3 x i32]]*]
@.str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=2 type=[4 x i8]*]
@.str = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=6 type=[4 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x [3 x i32]]* %array) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i32]]* %array) nounwind, !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x [3 x i32]]* %array}, i64 0, metadata !59), !dbg !67 ; [debug line = 36:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i32]]* %array}, i64 0, metadata !68) nounwind, !dbg !72 ; [debug line = 5:27@37:32] [debug variable = array]
  br label %1, !dbg !73                           ; [debug line = 7:23@37:32]

; <label>:1                                       ; preds = %7, %0
  %row.i = phi i2 [ 0, %0 ], [ %row, %7 ]         ; [#uses=3 type=i2]
  %verticalResult.assign = phi i32 [ 0, %0 ], [ %summation.1.i.lcssa, %7 ] ; [#uses=2 type=i32]
  %exitcond1.i = icmp eq i2 %row.i, -1, !dbg !73  ; [#uses=1 type=i1] [debug line = 7:23@37:32]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %getVerticalResult.exit.preheader, label %3, !dbg !73 ; [debug line = 7:23@37:32]

getVerticalResult.exit.preheader:                 ; preds = %1
  %verticalResult.assign.lcssa = phi i32 [ %verticalResult.assign, %1 ] ; [#uses=1 type=i32]
  br label %getVerticalResult.exit, !dbg !76      ; [debug line = 19:23@37:58]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !81 ; [debug line = 7:42@37:32]
  %tmp.1.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str) nounwind, !dbg !81 ; [#uses=1 type=i32] [debug line = 7:42@37:32]
  %tmp.i = zext i2 %row.i to i64, !dbg !83        ; [#uses=2 type=i64] [debug line = 9:4@37:32]
  br label %4, !dbg !86                           ; [debug line = 8:24@37:32]

; <label>:4                                       ; preds = %6, %3
  %summation.1.i = phi i32 [ %verticalResult.assign, %3 ], [ %summation, %6 ] ; [#uses=2 type=i32]
  %col.i = phi i2 [ 0, %3 ], [ %col, %6 ]         ; [#uses=3 type=i2]
  %exitcond.i = icmp eq i2 %col.i, -1, !dbg !86   ; [#uses=1 type=i1] [debug line = 8:24@37:32]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %7, label %6, !dbg !86 ; [debug line = 8:24@37:32]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str1) nounwind, !dbg !87 ; [debug line = 8:43@37:32]
  %tmp.2.i = zext i2 %col.i to i64, !dbg !83      ; [#uses=2 type=i64] [debug line = 9:4@37:32]
  %array.addr = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i, i64 %tmp.2.i, !dbg !83 ; [#uses=1 type=i32*] [debug line = 9:4@37:32]
  %array.load = load i32* %array.addr, align 4, !dbg !83 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %_vertical_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_vertical_sobel_operator, i64 0, i64 %tmp.i, i64 %tmp.2.i, !dbg !83 ; [#uses=1 type=i32*] [debug line = 9:4@37:32]
  %_vertical_sobel_operator.load = load i32* %_vertical_sobel_operator.addr, align 4, !dbg !83 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %tmp.3.i = mul nsw i32 %_vertical_sobel_operator.load, %array.load, !dbg !83 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %summation = add nsw i32 %summation.1.i, %tmp.3.i, !dbg !83 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !88) nounwind, !dbg !83 ; [debug line = 9:4@37:32] [debug variable = summation]
  %col = add i2 %col.i, 1, !dbg !89               ; [#uses=1 type=i2] [debug line = 8:35@37:32]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !90) nounwind, !dbg !89 ; [debug line = 8:35@37:32] [debug variable = col]
  br label %4, !dbg !89                           ; [debug line = 8:35@37:32]

; <label>:7                                       ; preds = %4
  %summation.1.i.lcssa = phi i32 [ %summation.1.i, %4 ] ; [#uses=1 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str, i32 %tmp.1.i) nounwind, !dbg !91 ; [#uses=0 type=i32] [debug line = 11:2@37:32]
  %row = add i2 %row.i, 1, !dbg !92               ; [#uses=1 type=i2] [debug line = 7:34@37:32]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !93) nounwind, !dbg !92 ; [debug line = 7:34@37:32] [debug variable = row]
  br label %1, !dbg !92                           ; [debug line = 7:34@37:32]

getVerticalResult.exit:                           ; preds = %14, %getVerticalResult.exit.preheader
  %row.i1 = phi i2 [ %row.1, %14 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=3 type=i2]
  %horizontalResult.assign = phi i32 [ %summation.1.i6.lcssa, %14 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=2 type=i32]
  %exitcond1.i3 = icmp eq i2 %row.i1, -1, !dbg !76 ; [#uses=1 type=i1] [debug line = 19:23@37:58]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %getHorizontalResult.exit, label %10, !dbg !76 ; [debug line = 19:23@37:58]

; <label>:10                                      ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str) nounwind, !dbg !94 ; [debug line = 19:42@37:58]
  %tmp.2.i4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str) nounwind, !dbg !94 ; [#uses=1 type=i32] [debug line = 19:42@37:58]
  %tmp.i5 = zext i2 %row.i1 to i64, !dbg !96      ; [#uses=2 type=i64] [debug line = 21:4@37:58]
  br label %11, !dbg !99                          ; [debug line = 20:24@37:58]

; <label>:11                                      ; preds = %13, %10
  %summation.1.i6 = phi i32 [ %horizontalResult.assign, %10 ], [ %summation.1, %13 ] ; [#uses=2 type=i32]
  %col.i7 = phi i2 [ 0, %10 ], [ %col.1, %13 ]    ; [#uses=3 type=i2]
  %exitcond.i8 = icmp eq i2 %col.i7, -1, !dbg !99 ; [#uses=1 type=i1] [debug line = 20:24@37:58]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond.i8, label %14, label %13, !dbg !99 ; [debug line = 20:24@37:58]

; <label>:13                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str1) nounwind, !dbg !100 ; [debug line = 20:43@37:58]
  %tmp.7.i = zext i2 %col.i7 to i64, !dbg !96     ; [#uses=2 type=i64] [debug line = 21:4@37:58]
  %array.addr.1 = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i5, i64 %tmp.7.i, !dbg !96 ; [#uses=1 type=i32*] [debug line = 21:4@37:58]
  %array.load.1 = load i32* %array.addr.1, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %_horizontal_sobel_operator.addr = getelementptr inbounds [3 x [3 x i32]]* @_horizontal_sobel_operator, i64 0, i64 %tmp.i5, i64 %tmp.7.i, !dbg !96 ; [#uses=1 type=i32*] [debug line = 21:4@37:58]
  %_horizontal_sobel_operator.load = load i32* %_horizontal_sobel_operator.addr, align 4, !dbg !96 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %tmp.8.i = mul nsw i32 %_horizontal_sobel_operator.load, %array.load.1, !dbg !96 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %summation.1 = add nsw i32 %summation.1.i6, %tmp.8.i, !dbg !96 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  call void @llvm.dbg.value(metadata !{i32 %summation.1}, i64 0, metadata !101) nounwind, !dbg !96 ; [debug line = 21:4@37:58] [debug variable = summation]
  %col.1 = add i2 %col.i7, 1, !dbg !102           ; [#uses=1 type=i2] [debug line = 20:35@37:58]
  call void @llvm.dbg.value(metadata !{i2 %col.1}, i64 0, metadata !103) nounwind, !dbg !102 ; [debug line = 20:35@37:58] [debug variable = col]
  br label %11, !dbg !102                         ; [debug line = 20:35@37:58]

; <label>:14                                      ; preds = %11
  %summation.1.i6.lcssa = phi i32 [ %summation.1.i6, %11 ] ; [#uses=1 type=i32]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str, i32 %tmp.2.i4) nounwind, !dbg !104 ; [#uses=0 type=i32] [debug line = 23:2@37:58]
  %row.1 = add i2 %row.i1, 1, !dbg !105           ; [#uses=1 type=i2] [debug line = 19:34@37:58]
  call void @llvm.dbg.value(metadata !{i2 %row.1}, i64 0, metadata !106) nounwind, !dbg !105 ; [debug line = 19:34@37:58] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !105     ; [debug line = 19:34@37:58]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult.assign.lcssa = phi i32 [ %horizontalResult.assign, %getVerticalResult.exit ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %verticalResult.assign}, i64 0, metadata !107), !dbg !111 ; [debug line = 30:32@37:58] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult.assign}, i64 0, metadata !112), !dbg !113 ; [debug line = 30:52@37:58] [debug variable = horizontalResult]
  %tmp.i1 = add nsw i32 %verticalResult.assign.lcssa, %horizontalResult.assign.lcssa, !dbg !114 ; [#uses=1 type=i32] [debug line = 31:2@37:58]
  ret i32 %tmp.i1, !dbg !80                       ; [debug line = 37:58]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !0, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}
!llvm.dbg.cu = !{!26}

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
!19 = metadata !{metadata !20, [1 x i32]* @llvm.global_ctors.0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"llvm.global_ctors.0", metadata !24, metadata !"", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !27} ; [ DW_TAG_compile_unit ]
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !29, metadata !36, metadata !37}
!29 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_ZL24_vertical_sobel_operator", metadata !30, i32 17, metadata !31, i32 1, i32 1, [3 x [3 x i32]]* @_vertical_sobel_operator} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.h", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !32, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!34 = metadata !{metadata !35, metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!36 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_ZL26_horizontal_sobel_operator", metadata !30, i32 10, metadata !31, i32 1, i32 1, [3 x [3 x i32]]* @_horizontal_sobel_operator} ; [ DW_TAG_variable ]
!37 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !38, i32 47, metadata !39, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !38, i32 40, i64 8, i64 8, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_class_type ]
!40 = metadata !{metadata !41}
!41 = metadata !{i32 786478, i32 0, metadata !39, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !38, i32 42, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !45, i32 42} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !44}
!44 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !39} ; [ DW_TAG_pointer_type ]
!45 = metadata !{metadata !46}
!46 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 31, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"array", metadata !51, metadata !"int", i32 0, i32 31}
!51 = metadata !{metadata !52, metadata !52}
!52 = metadata !{i32 0, i32 2, i32 1}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"return", metadata !57, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 1, i32 0}
!59 = metadata !{i32 786689, metadata !60, metadata !"array", null, i32 36, metadata !66, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 786478, i32 0, metadata !38, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !38, i32 36, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 36} ; [ DW_TAG_subprogram ]
!61 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!62 = metadata !{metadata !33, metadata !63}
!63 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ]
!64 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !33, metadata !65, i32 0, i32 0} ; [ DW_TAG_array_type ]
!65 = metadata !{metadata !35}
!66 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !33, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!67 = metadata !{i32 36, i32 30, metadata !60, null}
!68 = metadata !{i32 786689, metadata !69, metadata !"array", null, i32 5, metadata !66, i32 0, metadata !70} ; [ DW_TAG_arg_variable ]
!69 = metadata !{i32 786478, i32 0, metadata !38, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !38, i32 5, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 5} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 37, i32 32, metadata !71, null}
!71 = metadata !{i32 786443, metadata !60, i32 36, i32 42, metadata !38, i32 11} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 5, i32 27, metadata !69, metadata !70}
!73 = metadata !{i32 7, i32 23, metadata !74, metadata !70}
!74 = metadata !{i32 786443, metadata !75, i32 7, i32 7, metadata !38, i32 1} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 786443, metadata !69, i32 5, i32 40, metadata !38, i32 0} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 19, i32 23, metadata !77, metadata !80}
!77 = metadata !{i32 786443, metadata !78, i32 19, i32 7, metadata !38, i32 6} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 786443, metadata !79, i32 17, i32 42, metadata !38, i32 5} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 786478, i32 0, metadata !38, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !38, i32 17, metadata !61, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 17} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 37, i32 58, metadata !71, null}
!81 = metadata !{i32 7, i32 42, metadata !82, metadata !70}
!82 = metadata !{i32 786443, metadata !74, i32 7, i32 41, metadata !38, i32 2} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 9, i32 4, metadata !84, metadata !70}
!84 = metadata !{i32 786443, metadata !85, i32 8, i32 42, metadata !38, i32 4} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !82, i32 8, i32 8, metadata !38, i32 3} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 8, i32 24, metadata !85, metadata !70}
!87 = metadata !{i32 8, i32 43, metadata !84, metadata !70}
!88 = metadata !{i32 786688, metadata !75, metadata !"summation", metadata !38, i32 6, metadata !33, i32 0, metadata !70} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 8, i32 35, metadata !85, metadata !70}
!90 = metadata !{i32 786688, metadata !85, metadata !"col", metadata !38, i32 8, metadata !33, i32 0, metadata !70} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 11, i32 2, metadata !82, metadata !70}
!92 = metadata !{i32 7, i32 34, metadata !74, metadata !70}
!93 = metadata !{i32 786688, metadata !74, metadata !"row", metadata !38, i32 7, metadata !33, i32 0, metadata !70} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 19, i32 42, metadata !95, metadata !80}
!95 = metadata !{i32 786443, metadata !77, i32 19, i32 41, metadata !38, i32 7} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 21, i32 4, metadata !97, metadata !80}
!97 = metadata !{i32 786443, metadata !98, i32 20, i32 42, metadata !38, i32 9} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !95, i32 20, i32 8, metadata !38, i32 8} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 20, i32 24, metadata !98, metadata !80}
!100 = metadata !{i32 20, i32 43, metadata !97, metadata !80}
!101 = metadata !{i32 786688, metadata !78, metadata !"summation", metadata !38, i32 18, metadata !33, i32 0, metadata !80} ; [ DW_TAG_auto_variable ]
!102 = metadata !{i32 20, i32 35, metadata !98, metadata !80}
!103 = metadata !{i32 786688, metadata !98, metadata !"col", metadata !38, i32 20, metadata !33, i32 0, metadata !80} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 23, i32 2, metadata !95, metadata !80}
!105 = metadata !{i32 19, i32 34, metadata !77, metadata !80}
!106 = metadata !{i32 786688, metadata !77, metadata !"row", metadata !38, i32 19, metadata !33, i32 0, metadata !80} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 786689, metadata !108, metadata !"verticalResult", metadata !38, i32 16777246, metadata !33, i32 0, metadata !80} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 786478, i32 0, metadata !38, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !38, i32 30, metadata !109, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !45, i32 30} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{metadata !33, metadata !33, metadata !33}
!111 = metadata !{i32 30, i32 32, metadata !108, metadata !80}
!112 = metadata !{i32 786689, metadata !108, metadata !"horizontalResult", metadata !38, i32 33554462, metadata !33, i32 0, metadata !80} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 30, i32 52, metadata !108, metadata !80}
!114 = metadata !{i32 31, i32 2, metadata !115, metadata !80}
!115 = metadata !{i32 786443, metadata !108, i32 30, i32 70, metadata !38, i32 10} ; [ DW_TAG_lexical_block ]
