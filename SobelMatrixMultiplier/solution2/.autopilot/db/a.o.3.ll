; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution2/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@p_vertical_sobel_oper = internal constant [9 x i3] [i3 1, i3 0, i3 -1, i3 2, i3 0, i3 -2, i3 1, i3 0, i3 -1] ; [#uses=1 type=[9 x i3]*]
@p_horizontal_sobel_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1] ; [#uses=1 type=[9 x i3]*]
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00" ; [#uses=2 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1 ; [#uses=6 type=[4 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([9 x i32]* %array) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !38), !dbg !52 ; [debug line = 36:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !53) nounwind, !dbg !57 ; [debug line = 5:27@37:32] [debug variable = array]
  br label %1, !dbg !58                           ; [debug line = 7:23@37:32]

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ] ; [#uses=2 type=i4]
  %row_i = phi i2 [ 0, %0 ], [ %tmp_i_mid2_v, %.reset ] ; [#uses=2 type=i2]
  %summation_1_i = phi i32 [ 0, %0 ], [ %summation, %.reset ] ; [#uses=2 type=i32]
  %col_i = phi i2 [ 0, %0 ], [ %col, %.reset ]    ; [#uses=2 type=i2]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i4 %indvar_flatten, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten, label %getVerticalResult.exit.preheader.preheader, label %.reset

getVerticalResult.exit.preheader.preheader:       ; preds = %1
  br label %getVerticalResult.exit.preheader

.reset:                                           ; preds = %1
  %row = add i2 %row_i, 1, !dbg !61               ; [#uses=1 type=i2] [debug line = 7:34@37:32]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !62) nounwind, !dbg !61 ; [debug line = 7:34@37:32] [debug variable = row]
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  %exitcond_i3 = icmp eq i2 %col_i, -1, !dbg !63  ; [#uses=2 type=i1] [debug line = 8:24@37:32]
  %col_i_mid2 = select i1 %exitcond_i3, i2 0, i2 %col_i ; [#uses=2 type=i2]
  %tmp_i_mid2_v = select i1 %exitcond_i3, i2 %row, i2 %row_i, !dbg !66 ; [#uses=3 type=i2] [debug line = 9:4@37:32]
  %tmp_i_mid2_cast = zext i2 %tmp_i_mid2_v to i5  ; [#uses=1 type=i5]
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_i_mid2_v, i2 0) ; [#uses=1 type=i4]
  %p_shl_cast = zext i4 %tmp to i5, !dbg !66      ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_1 = sub i5 %p_shl_cast, %tmp_i_mid2_cast, !dbg !66 ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !68 ; [debug line = 8:43@37:32]
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind, !dbg !68 ; [#uses=1 type=i32] [debug line = 8:43@37:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !69 ; [debug line = 9:1@37:32]
  %tmp_2_i_cast = zext i2 %col_i_mid2 to i5, !dbg !66 ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_2 = add i5 %tmp_1, %tmp_2_i_cast, !dbg !66 ; [#uses=1 type=i5] [debug line = 9:4@37:32]
  %tmp_2_cast = sext i5 %tmp_2 to i64, !dbg !66   ; [#uses=2 type=i64] [debug line = 9:4@37:32]
  %array_addr = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_2_cast, !dbg !66 ; [#uses=1 type=i32*] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper = getelementptr [9 x i3]* @p_vertical_sobel_oper, i64 0, i64 %tmp_2_cast, !dbg !66 ; [#uses=1 type=i3*] [debug line = 9:4@37:32]
  %array_load = load i32* %array_addr, align 4, !dbg !66 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper_1 = load i3* %p_vertical_sobel_oper, align 1, !dbg !66 ; [#uses=1 type=i3] [debug line = 9:4@37:32]
  %p_vertical_sobel_oper_2 = sext i3 %p_vertical_sobel_oper_1 to i32, !dbg !66 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %tmp_3_i = mul nsw i32 %p_vertical_sobel_oper_2, %array_load, !dbg !66 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  %summation = add nsw i32 %summation_1_i, %tmp_3_i, !dbg !66 ; [#uses=1 type=i32] [debug line = 9:4@37:32]
  call void @llvm.dbg.value(metadata !{i32 %summation}, i64 0, metadata !70) nounwind, !dbg !66 ; [debug line = 9:4@37:32] [debug variable = summation]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_4_i) nounwind, !dbg !71 ; [#uses=0 type=i32] [debug line = 10:3@37:32]
  %col = add i2 %col_i_mid2, 1, !dbg !72          ; [#uses=1 type=i2] [debug line = 8:35@37:32]
  call void @llvm.dbg.value(metadata !{i2 %col}, i64 0, metadata !73) nounwind, !dbg !72 ; [debug line = 8:35@37:32] [debug variable = col]
  br label %1

getVerticalResult.exit.preheader:                 ; preds = %getVerticalResult.exit, %getVerticalResult.exit.preheader.preheader
  %indvar_flatten1 = phi i4 [ %indvar_flatten_next1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i4]
  %row_i1 = phi i2 [ %tmp_i4_mid2_v, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i2]
  %summation_1_i5 = phi i32 [ %summation_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i32]
  %col_i6 = phi i2 [ %col_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ] ; [#uses=2 type=i2]
  %exitcond_flatten1 = icmp eq i4 %indvar_flatten1, -7 ; [#uses=1 type=i1]
  %indvar_flatten_next1 = add i4 %indvar_flatten1, 1 ; [#uses=1 type=i4]
  br i1 %exitcond_flatten1, label %getHorizontalResult.exit, label %getVerticalResult.exit

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader
  %row_1 = add i2 %row_i1, 1, !dbg !74            ; [#uses=1 type=i2] [debug line = 19:34@37:58]
  call void @llvm.dbg.value(metadata !{i2 %row_1}, i64 0, metadata !79) nounwind, !dbg !74 ; [debug line = 19:34@37:58] [debug variable = row]
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind ; [#uses=0 type=i32]
  %exitcond_i = icmp eq i2 %col_i6, -1, !dbg !80  ; [#uses=2 type=i1] [debug line = 20:24@37:58]
  %col_i6_mid2 = select i1 %exitcond_i, i2 0, i2 %col_i6 ; [#uses=2 type=i2]
  %tmp_i4_mid2_v = select i1 %exitcond_i, i2 %row_1, i2 %row_i1, !dbg !83 ; [#uses=3 type=i2] [debug line = 21:4@37:58]
  %tmp_i4_mid2_cast = zext i2 %tmp_i4_mid2_v to i5 ; [#uses=1 type=i5]
  %tmp_3 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_i4_mid2_v, i2 0) ; [#uses=1 type=i4]
  %p_shl1_cast = zext i4 %tmp_3 to i5, !dbg !83   ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_4 = sub i5 %p_shl1_cast, %tmp_i4_mid2_cast, !dbg !83 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind, !dbg !85 ; [debug line = 20:43@37:58]
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind, !dbg !85 ; [#uses=1 type=i32] [debug line = 20:43@37:58]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind, !dbg !86 ; [debug line = 21:1@37:58]
  %tmp_7_i_cast = zext i2 %col_i6_mid2 to i5, !dbg !83 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_5 = add i5 %tmp_4, %tmp_7_i_cast, !dbg !83 ; [#uses=1 type=i5] [debug line = 21:4@37:58]
  %tmp_5_cast = sext i5 %tmp_5 to i64, !dbg !83   ; [#uses=2 type=i64] [debug line = 21:4@37:58]
  %array_addr_1 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_5_cast, !dbg !83 ; [#uses=1 type=i32*] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op = getelementptr [9 x i3]* @p_horizontal_sobel_op, i64 0, i64 %tmp_5_cast, !dbg !83 ; [#uses=1 type=i3*] [debug line = 21:4@37:58]
  %array_load_1 = load i32* %array_addr_1, align 4, !dbg !83 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op_1 = load i3* %p_horizontal_sobel_op, align 1, !dbg !83 ; [#uses=1 type=i3] [debug line = 21:4@37:58]
  %p_horizontal_sobel_op_2 = sext i3 %p_horizontal_sobel_op_1 to i32, !dbg !83 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %tmp_8_i = mul nsw i32 %p_horizontal_sobel_op_2, %array_load_1, !dbg !83 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  %summation_1 = add nsw i32 %summation_1_i5, %tmp_8_i, !dbg !83 ; [#uses=1 type=i32] [debug line = 21:4@37:58]
  call void @llvm.dbg.value(metadata !{i32 %summation_1}, i64 0, metadata !87) nounwind, !dbg !83 ; [debug line = 21:4@37:58] [debug variable = summation]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_6_i) nounwind, !dbg !88 ; [#uses=0 type=i32] [debug line = 22:3@37:58]
  %col_1 = add i2 %col_i6_mid2, 1, !dbg !89       ; [#uses=1 type=i2] [debug line = 20:35@37:58]
  call void @llvm.dbg.value(metadata !{i2 %col_1}, i64 0, metadata !90) nounwind, !dbg !89 ; [debug line = 20:35@37:58] [debug variable = col]
  br label %getVerticalResult.exit.preheader

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit.preheader
  %tmp_i1 = add nsw i32 %summation_1_i5, %summation_1_i, !dbg !91 ; [#uses=1 type=i32] [debug line = 31:2@37:58]
  ret i32 %tmp_i1, !dbg !78                       ; [debug line = 37:58]
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

; [#uses=2]
define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4                       ; [#uses=1 type=i4]
  %empty_5 = zext i2 %1 to i4                     ; [#uses=1 type=i4]
  %empty_6 = shl i4 %empty, 2                     ; [#uses=1 type=i4]
  %empty_7 = or i4 %empty_6, %empty_5             ; [#uses=1 type=i4]
  ret i4 %empty_7
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
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"array", metadata !30, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31, metadata !31}
!31 = metadata !{i32 0, i32 2, i32 1}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 31, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"return", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 1, i32 0}
!38 = metadata !{i32 786689, metadata !39, metadata !"array", null, i32 36, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !40, i32 36, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 36} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{metadata !43, metadata !44}
!43 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !43, metadata !46, i32 0, i32 0} ; [ DW_TAG_array_type ]
!46 = metadata !{metadata !47}
!47 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!48 = metadata !{metadata !49}
!49 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !43, metadata !51, i32 0, i32 0} ; [ DW_TAG_array_type ]
!51 = metadata !{metadata !47, metadata !47}
!52 = metadata !{i32 36, i32 30, metadata !39, null}
!53 = metadata !{i32 786689, metadata !54, metadata !"array", null, i32 5, metadata !50, i32 0, metadata !55} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !40, i32 5, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 5} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 37, i32 32, metadata !56, null}
!56 = metadata !{i32 786443, metadata !39, i32 36, i32 42, metadata !40, i32 11} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 5, i32 27, metadata !54, metadata !55}
!58 = metadata !{i32 7, i32 23, metadata !59, metadata !55}
!59 = metadata !{i32 786443, metadata !60, i32 7, i32 7, metadata !40, i32 1} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !54, i32 5, i32 40, metadata !40, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 7, i32 34, metadata !59, metadata !55}
!62 = metadata !{i32 786688, metadata !59, metadata !"row", metadata !40, i32 7, metadata !43, i32 0, metadata !55} ; [ DW_TAG_auto_variable ]
!63 = metadata !{i32 8, i32 24, metadata !64, metadata !55}
!64 = metadata !{i32 786443, metadata !65, i32 8, i32 8, metadata !40, i32 3} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786443, metadata !59, i32 7, i32 41, metadata !40, i32 2} ; [ DW_TAG_lexical_block ]
!66 = metadata !{i32 9, i32 4, metadata !67, metadata !55}
!67 = metadata !{i32 786443, metadata !64, i32 8, i32 42, metadata !40, i32 4} ; [ DW_TAG_lexical_block ]
!68 = metadata !{i32 8, i32 43, metadata !67, metadata !55}
!69 = metadata !{i32 9, i32 1, metadata !67, metadata !55}
!70 = metadata !{i32 786688, metadata !60, metadata !"summation", metadata !40, i32 6, metadata !43, i32 0, metadata !55} ; [ DW_TAG_auto_variable ]
!71 = metadata !{i32 10, i32 3, metadata !67, metadata !55}
!72 = metadata !{i32 8, i32 35, metadata !64, metadata !55}
!73 = metadata !{i32 786688, metadata !64, metadata !"col", metadata !40, i32 8, metadata !43, i32 0, metadata !55} ; [ DW_TAG_auto_variable ]
!74 = metadata !{i32 19, i32 34, metadata !75, metadata !78}
!75 = metadata !{i32 786443, metadata !76, i32 19, i32 7, metadata !40, i32 6} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 786443, metadata !77, i32 17, i32 42, metadata !40, i32 5} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !40, i32 17, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 17} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 37, i32 58, metadata !56, null}
!79 = metadata !{i32 786688, metadata !75, metadata !"row", metadata !40, i32 19, metadata !43, i32 0, metadata !78} ; [ DW_TAG_auto_variable ]
!80 = metadata !{i32 20, i32 24, metadata !81, metadata !78}
!81 = metadata !{i32 786443, metadata !82, i32 20, i32 8, metadata !40, i32 8} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 786443, metadata !75, i32 19, i32 41, metadata !40, i32 7} ; [ DW_TAG_lexical_block ]
!83 = metadata !{i32 21, i32 4, metadata !84, metadata !78}
!84 = metadata !{i32 786443, metadata !81, i32 20, i32 42, metadata !40, i32 9} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 20, i32 43, metadata !84, metadata !78}
!86 = metadata !{i32 21, i32 1, metadata !84, metadata !78}
!87 = metadata !{i32 786688, metadata !76, metadata !"summation", metadata !40, i32 18, metadata !43, i32 0, metadata !78} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 22, i32 3, metadata !84, metadata !78}
!89 = metadata !{i32 20, i32 35, metadata !81, metadata !78}
!90 = metadata !{i32 786688, metadata !81, metadata !"col", metadata !40, i32 20, metadata !43, i32 0, metadata !78} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 31, i32 2, metadata !92, metadata !78}
!92 = metadata !{i32 786443, metadata !93, i32 30, i32 70, metadata !40, i32 10} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786478, i32 0, metadata !40, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !40, i32 30, metadata !94, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 30} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !95, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!95 = metadata !{metadata !43, metadata !43, metadata !43}
