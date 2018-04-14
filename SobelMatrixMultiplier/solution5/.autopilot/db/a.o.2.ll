; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution5/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm.global_ctors.1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm.global_ctors.0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult.str = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"Col_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=3 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"Col_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=3 type=[9 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([3 x i96]* %array) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %array), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult.str) nounwind
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !75), !dbg !78 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[3 x i96]* %array}, i64 0, metadata !79), !dbg !80 ; [debug line = 20:27] [debug variable = array]
  br label %1, !dbg !81                           ; [debug line = 22:28]

; <label>:1                                       ; preds = %7, %0
  %row.i = phi i2 [ 0, %0 ], [ %row, %7 ]         ; [#uses=3 type=i2]
  %verticalResult.assign = phi i32 [ 0, %0 ], [ %summation.1.i.lcssa, %7 ] ; [#uses=2 type=i32]
  %exitcond1.i = icmp eq i2 %row.i, -1, !dbg !81  ; [#uses=1 type=i1] [debug line = 22:28]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1.i, label %getVerticalResult.exit.preheader, label %3, !dbg !81 ; [debug line = 22:28]

getVerticalResult.exit.preheader:                 ; preds = %1
  %verticalResult.assign.lcssa = phi i32 [ %verticalResult.assign, %1 ] ; [#uses=1 type=i32]
  br label %getVerticalResult.exit, !dbg !84      ; [debug line = 34:29]

; <label>:3                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str2) nounwind, !dbg !88 ; [debug line = 22:47]
  %tmp.i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @.str2), !dbg !88 ; [#uses=1 type=i32] [debug line = 22:47]
  %tmp.4.i.cast = zext i2 %row.i to i7            ; [#uses=1 type=i7]
  %tmp.5.i = shl nuw i7 %tmp.4.i.cast, 5          ; [#uses=2 type=i7]
  %tmp.5.i.cast = zext i7 %tmp.5.i to i8          ; [#uses=2 type=i8]
  %tmp.6.i = or i7 %tmp.5.i, 31                   ; [#uses=1 type=i7]
  %tmp.6.i.cast = zext i7 %tmp.6.i to i8          ; [#uses=2 type=i8]
  br label %4, !dbg !90                           ; [debug line = 23:29]

; <label>:4                                       ; preds = %6, %3
  %summation.1.i = phi i32 [ %verticalResult.assign, %3 ], [ %summation, %6 ] ; [#uses=2 type=i32]
  %col.i = phi i2 [ 0, %3 ], [ %col, %6 ]         ; [#uses=4 type=i2]
  %exitcond.i = icmp eq i2 %col.i, -1, !dbg !90   ; [#uses=1 type=i1] [debug line = 23:29]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond.i, label %7, label %6, !dbg !90 ; [debug line = 23:29]

; <label>:6                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @.str3) nounwind, !dbg !92 ; [debug line = 23:48]
  %tmp.2.i = zext i2 %col.i to i64, !dbg !94      ; [#uses=1 type=i64] [debug line = 24:4]
  %array.addr = getelementptr [3 x i96]* %array, i64 0, i64 %tmp.2.i, !dbg !94 ; [#uses=1 type=i96*] [debug line = 24:4]
  %array.load = load i96* %array.addr, align 8, !dbg !94 ; [#uses=1 type=i96] [debug line = 24:4]
  %tmp.7.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %array.load, i8 %tmp.5.i.cast, i8 %tmp.6.i.cast), !dbg !94 ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 18446744082299486209, i96 0, i96 -4294967297, i2 %col.i) ; [#uses=1 type=i96]
  %tmp.9.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %tmp, i8 %tmp.5.i.cast, i8 %tmp.6.i.cast), !dbg !94 ; [#uses=1 type=i32] [debug line = 24:4]
  %tmp.3.i = mul nsw i32 %tmp.9.i, %tmp.7.i, !dbg !94 ; [#uses=1 type=i32] [debug line = 24:4]
  %summation = add nsw i32 %summation.1.i, %tmp.3.i, !dbg !94 ; [#uses=1 type=i32] [debug line = 24:4]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !95), !dbg !94 ; [debug line = 24:4] [debug variable = summation]
  %col = add i2 %col.i, 1, !dbg !96               ; [#uses=1 type=i2] [debug line = 23:40]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !97), !dbg !96 ; [debug line = 23:40] [debug variable = col]
  br label %4, !dbg !96                           ; [debug line = 23:40]

; <label>:7                                       ; preds = %4
  %summation.1.i.lcssa = phi i32 [ %summation.1.i, %4 ] ; [#uses=1 type=i32]
  %8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @.str2, i32 %tmp.i), !dbg !98 ; [#uses=0 type=i32] [debug line = 26:2]
  %row = add i2 %row.i, 1, !dbg !99               ; [#uses=1 type=i2] [debug line = 22:39]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !100), !dbg !99 ; [debug line = 22:39] [debug variable = row]
  br label %1, !dbg !99                           ; [debug line = 22:39]

getVerticalResult.exit:                           ; preds = %14, %getVerticalResult.exit.preheader
  %row.i2 = phi i2 [ %row.1, %14 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=3 type=i2]
  %horizontalResult.assign = phi i32 [ %summation.1.i6.lcssa, %14 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=2 type=i32]
  %exitcond1.i4 = icmp eq i2 %row.i2, -1, !dbg !84 ; [#uses=1 type=i1] [debug line = 34:29]
  %9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond1.i4, label %getHorizontalResult.exit, label %10, !dbg !84 ; [debug line = 34:29]

; <label>:10                                      ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @.str4) nounwind, !dbg !101 ; [debug line = 34:48]
  %tmp.i5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @.str4), !dbg !101 ; [#uses=1 type=i32] [debug line = 34:48]
  %tmp.11.i.cast = zext i2 %row.i2 to i7          ; [#uses=1 type=i7]
  %tmp.12.i = shl nuw i7 %tmp.11.i.cast, 5        ; [#uses=2 type=i7]
  %tmp.12.i.cast = zext i7 %tmp.12.i to i8        ; [#uses=2 type=i8]
  %tmp.13.i = or i7 %tmp.12.i, 31                 ; [#uses=1 type=i7]
  %tmp.13.i.cast = zext i7 %tmp.13.i to i8        ; [#uses=2 type=i8]
  br label %11, !dbg !103                         ; [debug line = 35:30]

; <label>:11                                      ; preds = %13, %10
  %summation.1.i6 = phi i32 [ %horizontalResult.assign, %10 ], [ %summation.1, %13 ] ; [#uses=2 type=i32]
  %col.i7 = phi i2 [ 0, %10 ], [ %col.1, %13 ]    ; [#uses=4 type=i2]
  %exitcond.i8 = icmp eq i2 %col.i7, -1, !dbg !103 ; [#uses=1 type=i1] [debug line = 35:30]
  %12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) ; [#uses=0 type=i32]
  br i1 %exitcond.i8, label %14, label %13, !dbg !103 ; [debug line = 35:30]

; <label>:13                                      ; preds = %11
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @.str5) nounwind, !dbg !105 ; [debug line = 35:49]
  %tmp.7.i9 = zext i2 %col.i7 to i64, !dbg !107   ; [#uses=1 type=i64] [debug line = 36:4]
  %array.addr.1 = getelementptr [3 x i96]* %array, i64 0, i64 %tmp.7.i9, !dbg !107 ; [#uses=1 type=i96*] [debug line = 36:4]
  %array.load.1 = load i96* %array.addr.1, align 8, !dbg !107 ; [#uses=1 type=i96] [debug line = 36:4]
  %tmp.14.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %array.load.1, i8 %tmp.12.i.cast, i8 %tmp.13.i.cast), !dbg !107 ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.1 = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 -18446744073709551615, i96 -36893488147419103230, i96 -18446744073709551615, i2 %col.i7) ; [#uses=1 type=i96]
  %tmp.16.i = call i32 @_ssdm_op_PartSelect.i32.i96.i8.i8(i96 %tmp.1, i8 %tmp.12.i.cast, i8 %tmp.13.i.cast), !dbg !107 ; [#uses=1 type=i32] [debug line = 36:4]
  %tmp.8.i1 = mul nsw i32 %tmp.16.i, %tmp.14.i, !dbg !107 ; [#uses=1 type=i32] [debug line = 36:4]
  %summation.1 = add nsw i32 %summation.1.i6, %tmp.8.i1, !dbg !107 ; [#uses=1 type=i32] [debug line = 36:4]
  call void @llvm.dbg.value(metadata !{i32 %summation.1}, i64 0, metadata !108), !dbg !107 ; [debug line = 36:4] [debug variable = summation]
  %col.1 = add i2 %col.i7, 1, !dbg !109           ; [#uses=1 type=i2] [debug line = 35:41]
  call void @llvm.dbg.value(metadata !{i2 %col.1}, i64 0, metadata !110), !dbg !109 ; [debug line = 35:41] [debug variable = col]
  br label %11, !dbg !109                         ; [debug line = 35:41]

; <label>:14                                      ; preds = %11
  %summation.1.i6.lcssa = phi i32 [ %summation.1.i6, %11 ] ; [#uses=1 type=i32]
  %15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @.str4, i32 %tmp.i5), !dbg !111 ; [#uses=0 type=i32] [debug line = 38:2]
  %row.1 = add i2 %row.i2, 1, !dbg !112           ; [#uses=1 type=i2] [debug line = 34:40]
  call void @llvm.dbg.value(metadata !{i2 %row.1}, i64 0, metadata !113), !dbg !112 ; [debug line = 34:40] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !112     ; [debug line = 34:40]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult.assign.lcssa = phi i32 [ %horizontalResult.assign, %getVerticalResult.exit ] ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %verticalResult.assign}, i64 0, metadata !114), !dbg !120 ; [debug line = 45:32@52:58] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult.assign}, i64 0, metadata !121), !dbg !122 ; [debug line = 45:52@52:58] [debug variable = horizontalResult]
  %tmp.i1 = add nsw i32 %verticalResult.assign.lcssa, %horizontalResult.assign.lcssa, !dbg !123 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp.i1, !dbg !118                      ; [debug line = 52:58]
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
!26 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution5/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, metadata !27, metadata !38} ; [ DW_TAG_compile_unit ]
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
!81 = metadata !{i32 22, i32 28, metadata !82, null}
!82 = metadata !{i32 786443, metadata !83, i32 22, i32 12, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 786443, metadata !27, i32 20, i32 40, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 34, i32 29, metadata !85, null}
!85 = metadata !{i32 786443, metadata !86, i32 34, i32 13, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !87, i32 32, i32 42, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 786478, i32 0, metadata !28, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !28, i32 32, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 32} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 22, i32 47, metadata !89, null}
!89 = metadata !{i32 786443, metadata !82, i32 22, i32 46, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 23, i32 29, metadata !91, null}
!91 = metadata !{i32 786443, metadata !89, i32 23, i32 13, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!92 = metadata !{i32 23, i32 48, metadata !93, null}
!93 = metadata !{i32 786443, metadata !91, i32 23, i32 47, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 24, i32 4, metadata !93, null}
!95 = metadata !{i32 786688, metadata !83, metadata !"summation", metadata !28, i32 21, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 23, i32 40, metadata !91, null}
!97 = metadata !{i32 786688, metadata !91, metadata !"col", metadata !28, i32 23, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 26, i32 2, metadata !89, null}
!99 = metadata !{i32 22, i32 39, metadata !82, null}
!100 = metadata !{i32 786688, metadata !82, metadata !"row", metadata !28, i32 22, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 34, i32 48, metadata !102, null}
!102 = metadata !{i32 786443, metadata !85, i32 34, i32 47, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 35, i32 30, metadata !104, null}
!104 = metadata !{i32 786443, metadata !102, i32 35, i32 14, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 35, i32 49, metadata !106, null}
!106 = metadata !{i32 786443, metadata !104, i32 35, i32 48, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 36, i32 4, metadata !106, null}
!108 = metadata !{i32 786688, metadata !86, metadata !"summation", metadata !28, i32 33, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 35, i32 41, metadata !104, null}
!110 = metadata !{i32 786688, metadata !104, metadata !"col", metadata !28, i32 35, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 38, i32 2, metadata !102, null}
!112 = metadata !{i32 34, i32 40, metadata !85, null}
!113 = metadata !{i32 786688, metadata !85, metadata !"row", metadata !28, i32 34, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786689, metadata !115, metadata !"verticalResult", metadata !28, i32 16777261, metadata !31, i32 0, metadata !118} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 786478, i32 0, metadata !28, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !28, i32 45, metadata !116, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !36, i32 45} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !31, metadata !31, metadata !31}
!118 = metadata !{i32 52, i32 58, metadata !119, null}
!119 = metadata !{i32 786443, metadata !76, i32 51, i32 42, metadata !28, i32 11} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 45, i32 32, metadata !115, metadata !118}
!121 = metadata !{i32 786689, metadata !115, metadata !"horizontalResult", metadata !28, i32 33554477, metadata !31, i32 0, metadata !118} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 45, i32 52, metadata !115, metadata !118}
!123 = metadata !{i32 46, i32 2, metadata !124, metadata !118}
!124 = metadata !{i32 786443, metadata !115, i32 45, i32 70, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
