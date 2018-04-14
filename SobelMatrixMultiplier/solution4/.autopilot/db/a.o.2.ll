; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=3 type=[9 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x [3 x i32]]* %array) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x [3 x i32]]* %array) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !67
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x [3 x i32]]* %array}, i64 0, metadata !73), !dbg !75 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x [3 x i32]]* %array}, i64 0, metadata !76) nounwind, !dbg !79 ; [debug line = 20:27@52:32] [debug variable = array]
  br label %1, !dbg !80                           ; [debug line = 22:28@52:32]

; <label>:1                                       ; preds = %3, %0
  %row.i = phi i2 [ 0, %0 ], [ %row, %3 ]         ; [#uses=5 type=i2]
  %verticalResult.assign = phi i32 [ 0, %0 ], [ %summation.2.2.i, %3 ] ; [#uses=2 type=i32]
  %exitcond1.i = icmp eq i2 %row.i, -1, !dbg !80  ; [#uses=1 type=i1] [debug line = 22:28@52:32]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %getVerticalResult.exit.preheader, label %3, !dbg !80 ; [debug line = 22:28@52:32]

getVerticalResult.exit.preheader:                 ; preds = %1
  %verticalResult.assign.lcssa = phi i32 [ %verticalResult.assign, %1 ] ; [#uses=1 type=i32]
  br label %getVerticalResult.exit, !dbg !83      ; [debug line = 34:29@52:58]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str1) nounwind, !dbg !87 ; [debug line = 22:47@52:32]
  %tmp.1.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @.str1) nounwind, !dbg !87 ; [#uses=1 type=i32] [debug line = 22:47@52:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !89 ; [debug line = 23:1@52:32]
  %tmp.i = zext i2 %row.i to i64, !dbg !90        ; [#uses=2 type=i64] [debug line = 24:4@52:32]
  %array.addr = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i, i64 0, !dbg !90 ; [#uses=1 type=i32*] [debug line = 24:4@52:32]
  %array.load = load i32* %array.addr, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp.1 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 2, i32 1, i2 %row.i) nounwind ; [#uses=1 type=i32]
  %tmp.3.i = mul nsw i32 %tmp.1, %array.load, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %array.addr.1 = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i, i64 2, !dbg !90 ; [#uses=1 type=i32*] [debug line = 24:4@52:32]
  %array.load.1 = load i32* %array.addr.1, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp.2 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 -1, i32 -2, i32 -1, i2 %row.i) nounwind ; [#uses=1 type=i32]
  %tmp.3.2.i = mul nsw i32 %tmp.2, %array.load.1, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp.3 = add nsw i32 %tmp.3.i, %tmp.3.2.i, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %summation.2.2.i = add nsw i32 %tmp.3, %verticalResult.assign, !dbg !90 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @.str1, i32 %tmp.1.i) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 26:2@52:32]
  %row = add i2 %row.i, 1, !dbg !94               ; [#uses=1 type=i2] [debug line = 22:39@52:32]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !95) nounwind, !dbg !94 ; [debug line = 22:39@52:32] [debug variable = row]
  br label %1, !dbg !94                           ; [debug line = 22:39@52:32]

getVerticalResult.exit:                           ; preds = %6, %getVerticalResult.exit.preheader
  %row.i1 = phi i2 [ %row.1, %6 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=5 type=i2]
  %horizontalResult.assign = phi i32 [ %summation.3.2.i, %6 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=2 type=i32]
  %exitcond1.i3 = icmp eq i2 %row.i1, -1, !dbg !83 ; [#uses=1 type=i1] [debug line = 34:29@52:58]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond1.i3, label %getHorizontalResult.exit, label %6, !dbg !83 ; [debug line = 34:29@52:58]

; <label>:6                                       ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @.str3) nounwind, !dbg !96 ; [debug line = 34:48@52:58]
  %tmp.5.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @.str3) nounwind, !dbg !96 ; [#uses=1 type=i32] [debug line = 34:48@52:58]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !98 ; [debug line = 35:1@52:58]
  %tmp.i4 = zext i2 %row.i1 to i64, !dbg !99      ; [#uses=3 type=i64] [debug line = 36:4@52:58]
  %array.addr.2 = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i4, i64 0, !dbg !99 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %array.load.2 = load i32* %array.addr.2, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp.4 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 0, i32 -1, i2 %row.i1) nounwind ; [#uses=2 type=i32]
  %tmp.8.i = mul nsw i32 %tmp.4, %array.load.2, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %array.addr.3 = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i4, i64 1, !dbg !99 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %array.load.3 = load i32* %array.addr.3, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp.5 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 2, i32 0, i32 -2, i2 %row.i1) nounwind ; [#uses=1 type=i32]
  %tmp.8.1.i = mul nsw i32 %tmp.5, %array.load.3, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %array.addr.4 = getelementptr [3 x [3 x i32]]* %array, i64 0, i64 %tmp.i4, i64 2, !dbg !99 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %array.load.4 = load i32* %array.addr.4, align 4, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp.8.2.i = mul nsw i32 %tmp.4, %array.load.4, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp = add i32 %tmp.8.2.i, %tmp.8.1.i, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp.6 = add nsw i32 %tmp.8.i, %tmp, !dbg !99   ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %summation.3.2.i = add nsw i32 %tmp.6, %horizontalResult.assign, !dbg !99 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @.str3, i32 %tmp.5.i) nounwind, !dbg !102 ; [#uses=0 type=i32] [debug line = 38:2@52:58]
  %row.1 = add i2 %row.i1, 1, !dbg !103           ; [#uses=1 type=i2] [debug line = 34:40@52:58]
  call void @llvm.dbg.value(metadata !{i2 %row.1}, i64 0, metadata !104) nounwind, !dbg !103 ; [debug line = 34:40@52:58] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !103     ; [debug line = 34:40@52:58]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult.assign.lcssa = phi i32 [ %horizontalResult.assign, %getVerticalResult.exit ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %verticalResult.assign}, i64 0, metadata !105), !dbg !106 ; [debug line = 45:32@52:58] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult.assign}, i64 0, metadata !107), !dbg !108 ; [debug line = 45:52@52:58] [debug variable = horizontalResult]
  %tmp.i1 = add nsw i32 %verticalResult.assign.lcssa, %horizontalResult.assign.lcssa, !dbg !109 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp.i1, !dbg !86                       ; [debug line = 52:58]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32, i32, i32, i2)

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !0, !13, !13}
!hls.encrypted.func = !{}
!llvm.dbg.cu = !{!19}
!llvm.map.gv = !{!54}

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
!19 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !20, metadata !20, metadata !21, metadata !46} ; [ DW_TAG_compile_unit ]
!20 = metadata !{i32 0}
!21 = metadata !{metadata !22, metadata !33, metadata !34, metadata !37, metadata !38, metadata !45}
!22 = metadata !{i32 786478, i32 0, metadata !23, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !23, i32 20, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 20} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!24 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!25 = metadata !{metadata !26, metadata !27}
!26 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ]
!28 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !26, metadata !29, i32 0, i32 0} ; [ DW_TAG_array_type ]
!29 = metadata !{metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!31 = metadata !{metadata !32}
!32 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!33 = metadata !{i32 786478, i32 0, metadata !23, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !23, i32 32, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 32} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786478, i32 0, metadata !23, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !23, i32 45, metadata !35, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 45} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{metadata !26, metadata !26, metadata !26}
!37 = metadata !{i32 786478, i32 0, metadata !23, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !23, i32 51, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !31, i32 51} ; [ DW_TAG_subprogram ]
!38 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev", metadata !23, i32 57, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !44, metadata !31, i32 57} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !42} ; [ DW_TAG_pointer_type ]
!42 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !23, i32 55, i64 8, i64 8, i32 0, i32 0, null, metadata !43, i32 0, null, null} ; [ DW_TAG_class_type ]
!43 = metadata !{metadata !44}
!44 = metadata !{i32 786478, i32 0, metadata !42, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !23, i32 57, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !31, i32 57} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev", metadata !23, i32 57, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !44, metadata !31, i32 57} ; [ DW_TAG_subprogram ]
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !48, metadata !52, metadata !53}
!48 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_ZL24_vertical_sobel_operator", metadata !23, i32 11, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!49 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !50, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!51 = metadata !{metadata !30, metadata !30}
!52 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_ZL26_horizontal_sobel_operator", metadata !23, i32 4, metadata !49, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!53 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !23, i32 62, metadata !42, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!54 = metadata !{metadata !55, [1 x i32]* @llvm.global_ctors.0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"llvm.global_ctors.0", metadata !59, metadata !"", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, i32 1}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"array", metadata !65, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66, metadata !66}
!66 = metadata !{i32 0, i32 2, i32 1}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 31, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"return", metadata !71, metadata !"int", i32 0, i32 31}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 1, i32 0}
!73 = metadata !{i32 786689, metadata !37, metadata !"array", null, i32 51, metadata !74, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!74 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !26, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!75 = metadata !{i32 51, i32 30, metadata !37, null}
!76 = metadata !{i32 786689, metadata !22, metadata !"array", null, i32 20, metadata !74, i32 0, metadata !77} ; [ DW_TAG_arg_variable ]
!77 = metadata !{i32 52, i32 32, metadata !78, null}
!78 = metadata !{i32 786443, metadata !37, i32 51, i32 42, metadata !23, i32 11} ; [ DW_TAG_lexical_block ]
!79 = metadata !{i32 20, i32 27, metadata !22, metadata !77}
!80 = metadata !{i32 22, i32 28, metadata !81, metadata !77}
!81 = metadata !{i32 786443, metadata !82, i32 22, i32 12, metadata !23, i32 1} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !22, i32 20, i32 40, metadata !23, i32 0} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 34, i32 29, metadata !84, metadata !86}
!84 = metadata !{i32 786443, metadata !85, i32 34, i32 13, metadata !23, i32 6} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !33, i32 32, i32 42, metadata !23, i32 5} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 52, i32 58, metadata !78, null}
!87 = metadata !{i32 22, i32 47, metadata !88, metadata !77}
!88 = metadata !{i32 786443, metadata !81, i32 22, i32 46, metadata !23, i32 2} ; [ DW_TAG_lexical_block ]
!89 = metadata !{i32 23, i32 1, metadata !88, metadata !77}
!90 = metadata !{i32 24, i32 4, metadata !91, metadata !77}
!91 = metadata !{i32 786443, metadata !92, i32 23, i32 47, metadata !23, i32 4} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 786443, metadata !88, i32 23, i32 13, metadata !23, i32 3} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 26, i32 2, metadata !88, metadata !77}
!94 = metadata !{i32 22, i32 39, metadata !81, metadata !77}
!95 = metadata !{i32 786688, metadata !81, metadata !"row", metadata !23, i32 22, metadata !26, i32 0, metadata !77} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 34, i32 48, metadata !97, metadata !86}
!97 = metadata !{i32 786443, metadata !84, i32 34, i32 47, metadata !23, i32 7} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 35, i32 1, metadata !97, metadata !86}
!99 = metadata !{i32 36, i32 4, metadata !100, metadata !86}
!100 = metadata !{i32 786443, metadata !101, i32 35, i32 48, metadata !23, i32 9} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 786443, metadata !97, i32 35, i32 14, metadata !23, i32 8} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 38, i32 2, metadata !97, metadata !86}
!103 = metadata !{i32 34, i32 40, metadata !84, metadata !86}
!104 = metadata !{i32 786688, metadata !84, metadata !"row", metadata !23, i32 34, metadata !26, i32 0, metadata !86} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 786689, metadata !34, metadata !"verticalResult", metadata !23, i32 16777261, metadata !26, i32 0, metadata !86} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 45, i32 32, metadata !34, metadata !86}
!107 = metadata !{i32 786689, metadata !34, metadata !"horizontalResult", metadata !23, i32 33554477, metadata !26, i32 0, metadata !86} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 45, i32 52, metadata !34, metadata !86}
!109 = metadata !{i32 46, i32 2, metadata !110, metadata !86}
!110 = metadata !{i32 786443, metadata !34, i32 45, i32 70, metadata !23, i32 10} ; [ DW_TAG_lexical_block ]
