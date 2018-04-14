; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@.str3 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str2 = private unnamed_addr constant [4 x i8] c"Row\00", align 1 ; [#uses=6 type=[4 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x i96]* %array) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %array), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !75), !dbg !78 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !79), !dbg !80 ; [debug line = 20:27] [debug variable = array]
  br label %1, !dbg !81                           ; [debug line = 22:23]

; <label>:1                                       ; preds = %8, %0
  %row.i = phi i2 [ 0, %0 ], [ %row, %8 ]         ; [#uses=3 type=i2]
  %verticalResult.assign = phi i32 [ 0, %0 ], [ %summation.1.i.lcssa, %8 ] ; [#uses=2 type=i32]
  %exitcond1.i = icmp eq i2 %row.i, -1, !dbg !81  ; [#uses=1 type=i1] [debug line = 22:23]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %getVerticalResult.exit.preheader, label %3, !dbg !81 ; [debug line = 22:23]

getVerticalResult.exit.preheader:                 ; preds = %1
  %verticalResult.assign.lcssa = phi i32 [ %verticalResult.assign, %1 ] ; [#uses=1 type=i32]
  br label %getVerticalResult.exit, !dbg !84      ; [debug line = 34:23]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str2) nounwind, !dbg !88 ; [debug line = 22:42]
  %tmp.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str2), !dbg !88 ; [#uses=1 type=i32] [debug line = 22:42]
  %tmp.5.i.cast = zext i2 %row.i to i7            ; [#uses=1 type=i7]
  %tmp.6.i = shl nuw i7 %tmp.5.i.cast, 5          ; [#uses=2 type=i7]
  %tmp.6.i.cast = zext i7 %tmp.6.i to i8          ; [#uses=2 type=i8]
  %tmp.7.i = or i7 %tmp.6.i, 31                   ; [#uses=1 type=i7]
  %tmp.7.i.cast = zext i7 %tmp.7.i to i8          ; [#uses=2 type=i8]
  br label %4, !dbg !90                           ; [debug line = 23:24]

; <label>:4                                       ; preds = %6, %3
  %summation.1.i = phi i32 [ %verticalResult.assign, %3 ], [ %summation, %6 ] ; [#uses=2 type=i32]
  %col.i = phi i2 [ 0, %3 ], [ %col, %6 ]         ; [#uses=4 type=i2]
  %exitcond.i = icmp eq i2 %col.i, -1, !dbg !90   ; [#uses=1 type=i1] [debug line = 23:24]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %8, label %6, !dbg !90 ; [debug line = 23:24]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str3) nounwind, !dbg !92 ; [debug line = 23:43]
  %tmp.1.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str3), !dbg !92 ; [#uses=1 type=i32] [debug line = 23:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !94 ; [debug line = 24:1]
  %tmp.2.i = zext i2 %col.i to i64, !dbg !95      ; [#uses=1 type=i64] [debug line = 24:4]
  %array.addr = getelementptr [3 x i96]* %array, i64 0, i64 %tmp.2.i, !dbg !95 ; [#uses=1 type=i96*] [debug line = 24:4]
  %array.load = load i96* %array.addr, align 8, !dbg !95 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp.8.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %array.load, i8 %tmp.6.i.cast, i8 %tmp.7.i.cast), !dbg !95 ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 18446744082299486209, i96 0, i96 -4294967297, i2 %col.i) ; [#uses=1 type=i96]
  %tmp.10.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %tmp, i8 %tmp.6.i.cast, i8 %tmp.7.i.cast), !dbg !95 ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp.3.i = mul nsw i32 %tmp.10.i, %tmp.8.i, !dbg !95 ; [#uses=1 type=i32] [debug line = 24:4]
  %summation = add nsw i32 %summation.1.i, %tmp.3.i, !dbg !95 ; [#uses=1 type=i32] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !96), !dbg !95 ; [debug line = 24:4] [debug variable = summation]
  %7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str3, i32 %tmp.1.i), !dbg !97 ; [#uses=0 type=i32] [debug line = 25:3]
  %col = add i2 %col.i, 1, !dbg !98               ; [#uses=1 type=i2] [debug line = 23:35]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !99), !dbg !98 ; [debug line = 23:35] [debug variable = col]
  br label %4, !dbg !98                           ; [debug line = 23:35]

; <label>:8                                       ; preds = %4
  %summation.1.i.lcssa = phi i32 [ %summation.1.i, %4 ] ; [#uses=1 type=i32]
  %9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str2, i32 %tmp.i), !dbg !100 ; [#uses=0 type=i32] [debug line = 26:2]
  %row = add i2 %row.i, 1, !dbg !101              ; [#uses=1 type=i2] [debug line = 22:34]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !102), !dbg !101 ; [debug line = 22:34] [debug variable = row]
  br label %1, !dbg !101                          ; [debug line = 22:34]

getVerticalResult.exit:                           ; preds = %16, %getVerticalResult.exit.preheader
  %row.i2 = phi i2 [ %row.1, %16 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=3 type=i2]
  %horizontalResult.assign = phi i32 [ %summation.1.i6.lcssa, %16 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=2 type=i32]
  %exitcond1.i4 = icmp eq i2 %row.i2, -1, !dbg !84 ; [#uses=1 type=i1] [debug line = 34:23]
  %10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1.i4, label %getHorizontalResult.exit, label %11, !dbg !84 ; [debug line = 34:23]

; <label>:11                                      ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str2) nounwind, !dbg !103 ; [debug line = 34:42]
  %tmp.i5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str2), !dbg !103 ; [#uses=1 type=i32] [debug line = 34:42]
  %tmp.13.i.cast = zext i2 %row.i2 to i7          ; [#uses=1 type=i7]
  %tmp.14.i = shl nuw i7 %tmp.13.i.cast, 5        ; [#uses=2 type=i7]
  %tmp.14.i.cast = zext i7 %tmp.14.i to i8        ; [#uses=2 type=i8]
  %tmp.15.i = or i7 %tmp.14.i, 31                 ; [#uses=1 type=i7]
  %tmp.15.i.cast = zext i7 %tmp.15.i to i8        ; [#uses=2 type=i8]
  br label %12, !dbg !105                         ; [debug line = 35:24]

; <label>:12                                      ; preds = %14, %11
  %summation.1.i6 = phi i32 [ %horizontalResult.assign, %11 ], [ %summation.1, %14 ] ; [#uses=2 type=i32]
  %col.i7 = phi i2 [ 0, %11 ], [ %col.1, %14 ]    ; [#uses=4 type=i2]
  %exitcond.i8 = icmp eq i2 %col.i7, -1, !dbg !105 ; [#uses=1 type=i1] [debug line = 35:24]
  %13 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond.i8, label %16, label %14, !dbg !105 ; [debug line = 35:24]

; <label>:14                                      ; preds = %12
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @.str3) nounwind, !dbg !107 ; [debug line = 35:43]
  %tmp.11.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @.str3), !dbg !107 ; [#uses=1 type=i32] [debug line = 35:43]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str1) nounwind, !dbg !109 ; [debug line = 36:1]
  %tmp.7.i9 = zext i2 %col.i7 to i64, !dbg !110   ; [#uses=1 type=i64] [debug line = 36:4]
  %array.addr.1 = getelementptr [3 x i96]* %array, i64 0, i64 %tmp.7.i9, !dbg !110 ; [#uses=1 type=i96*] [debug line = 36:4]
  %array.load.1 = load i96* %array.addr.1, align 8, !dbg !110 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp.16.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %array.load.1, i8 %tmp.14.i.cast, i8 %tmp.15.i.cast), !dbg !110 ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.1 = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 -18446744073709551615, i96 -36893488147419103230, i96 -18446744073709551615, i2 %col.i7) ; [#uses=1 type=i96]
  %tmp.18.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %tmp.1, i8 %tmp.14.i.cast, i8 %tmp.15.i.cast), !dbg !110 ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.8.i1 = mul nsw i32 %tmp.18.i, %tmp.16.i, !dbg !110 ; [#uses=1 type=i32] [debug line = 36:4]
  %summation.1 = add nsw i32 %summation.1.i6, %tmp.8.i1, !dbg !110 ; [#uses=1 type=i32] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.1}, i64 0, metadata !111), !dbg !110 ; [debug line = 36:4] [debug variable = summation]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str3, i32 %tmp.11.i), !dbg !112 ; [#uses=0 type=i32] [debug line = 37:3]
  %col.1 = add i2 %col.i7, 1, !dbg !113           ; [#uses=1 type=i2] [debug line = 35:35]
  call void @llvm.dbg.value(metadata !{i2 %col.1}, i64 0, metadata !114), !dbg !113 ; [debug line = 35:35] [debug variable = col]
  br label %12, !dbg !113                         ; [debug line = 35:35]

; <label>:16                                      ; preds = %12
  %summation.1.i6.lcssa = phi i32 [ %summation.1.i6, %12 ] ; [#uses=1 type=i32]
  %17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @.str2, i32 %tmp.i5), !dbg !115 ; [#uses=0 type=i32] [debug line = 38:2]
  %row.1 = add i2 %row.i2, 1, !dbg !116           ; [#uses=1 type=i2] [debug line = 34:34]
  call void @llvm.dbg.value(metadata !{i2 %row.1}, i64 0, metadata !117), !dbg !116 ; [debug line = 34:34] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !116     ; [debug line = 34:34]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult.assign.lcssa = phi i32 [ %horizontalResult.assign, %getVerticalResult.exit ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %verticalResult.assign}, i64 0, metadata !118), !dbg !124 ; [debug line = 45:32@52:58] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult.assign}, i64 0, metadata !125), !dbg !126 ; [debug line = 45:52@52:58] [debug variable = horizontalResult]
  %tmp.i1 = add nsw i32 %verticalResult.assign.lcssa, %horizontalResult.assign.lcssa, !dbg !127 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp.i1, !dbg !122                      ; [debug line = 52:58]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=4]
declare i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96, i8, i8) nounwind readnone

; [#uses=2]
declare i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96, i96, i96, i2)

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
!26 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution3/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, metadata !27, metadata !38} ; [ DW_TAG_compile_unit ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !28, i32 20, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 20} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!32 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !33} ; [ DW_TAG_pointer_type ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !31, metadata !34, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{metadata !35}
!35 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !40, metadata !44, metadata !45}
!40 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !28, i32 4, metadata !41, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !42, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!42 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ]
!43 = metadata !{metadata !35, metadata !35}
!44 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !28, i32 11, metadata !41, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!45 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !28, i32 62, metadata !46, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!46 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !28, i32 55, i64 8, i64 8, i32 0, i32 0, null, metadata !47, i32 0, null, null} ; [ DW_TAG_class_type ]
!47 = metadata !{metadata !48}
!48 = metadata !{i32 786478, i32 0, metadata !46, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !28, i32 57, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !36, i32 57} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{null, metadata !51}
!51 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !46} ; [ DW_TAG_pointer_type ]
!52 = metadata !{metadata !53, metadata !59, metadata !64}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"array", metadata !56, metadata !"int", i32 0, i32 31}
!56 = metadata !{metadata !57, metadata !58}
!57 = metadata !{i32 0, i32 0, i32 2}
!58 = metadata !{i32 0, i32 2, i32 1}
!59 = metadata !{i32 32, i32 63, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"array", metadata !62, metadata !"int", i32 0, i32 31}
!62 = metadata !{metadata !63, metadata !58}
!63 = metadata !{i32 1, i32 1, i32 2}
!64 = metadata !{i32 64, i32 95, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"array", metadata !67, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68, metadata !58}
!68 = metadata !{i32 2, i32 2, i32 2}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"return", metadata !73, metadata !"int", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 1, i32 0}
!75 = metadata !{i32 786689, metadata !76, metadata !"array", null, i32 51, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !28, i32 51, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 51} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !31, metadata !43, i32 0, i32 0} ; [ DW_TAG_array_type ]
!78 = metadata !{i32 51, i32 30, metadata !76, null}
!79 = metadata !{i32 786689, metadata !27, metadata !"array", null, i32 20, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 20, i32 27, metadata !27, null}
!81 = metadata !{i32 22, i32 23, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 22, i32 7, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !27, i32 20, i32 40, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 34, i32 23, metadata !85, null}
!85 = metadata !{i32 786443, metadata !86, i32 34, i32 7, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 32, i32 42, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !28, i32 32, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 32} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 22, i32 42, metadata !89, null}
!89 = metadata !{i32 786443, metadata !82, i32 22, i32 41, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 23, i32 24, metadata !91, null}
!91 = metadata !{i32 786443, metadata !89, i32 23, i32 8, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 23, i32 43, metadata !93, null}
!93 = metadata !{i32 786443, metadata !91, i32 23, i32 42, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 24, i32 1, metadata !93, null}
!95 = metadata !{i32 24, i32 4, metadata !93, null}
!96 = metadata !{i32 786688, metadata !83, metadata !"summation", metadata !28, i32 21, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 25, i32 3, metadata !93, null}
!98 = metadata !{i32 23, i32 35, metadata !91, null}
!99 = metadata !{i32 786688, metadata !91, metadata !"col", metadata !28, i32 23, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 26, i32 2, metadata !89, null}
!101 = metadata !{i32 22, i32 34, metadata !82, null}
!102 = metadata !{i32 786688, metadata !82, metadata !"row", metadata !28, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 34, i32 42, metadata !104, null}
!104 = metadata !{i32 786443, metadata !85, i32 34, i32 41, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 35, i32 24, metadata !106, null}
!106 = metadata !{i32 786443, metadata !104, i32 35, i32 8, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 35, i32 43, metadata !108, null}
!108 = metadata !{i32 786443, metadata !106, i32 35, i32 42, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!109 = metadata !{i32 36, i32 1, metadata !108, null}
!110 = metadata !{i32 36, i32 4, metadata !108, null}
!111 = metadata !{i32 786688, metadata !86, metadata !"summation", metadata !28, i32 33, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!112 = metadata !{i32 37, i32 3, metadata !108, null}
!113 = metadata !{i32 35, i32 35, metadata !106, null}
!114 = metadata !{i32 786688, metadata !106, metadata !"col", metadata !28, i32 35, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!115 = metadata !{i32 38, i32 2, metadata !104, null}
!116 = metadata !{i32 34, i32 34, metadata !85, null}
!117 = metadata !{i32 786688, metadata !85, metadata !"row", metadata !28, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 786689, metadata !119, metadata !"verticalResult", metadata !28, i32 16777261, metadata !31, i32 0, metadata !122} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 786478, i32 0, metadata !28, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !28, i32 45, metadata !120, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 45} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{metadata !31, metadata !31, metadata !31}
!122 = metadata !{i32 52, i32 58, metadata !123, null}
!123 = metadata !{i32 786443, metadata !76, i32 51, i32 42, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 45, i32 32, metadata !119, metadata !122}
!125 = metadata !{i32 786689, metadata !119, metadata !"horizontalResult", metadata !28, i32 33554477, metadata !31, i32 0, metadata !122} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 45, i32 52, metadata !119, metadata !122}
!127 = metadata !{i32 46, i32 2, metadata !128, metadata !122}
!128 = metadata !{i32 786443, metadata !119, i32 45, i32 70, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
