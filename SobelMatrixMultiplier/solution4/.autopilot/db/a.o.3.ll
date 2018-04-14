; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00" ; [#uses=1 type=[21 x i8]*]
@p_str3 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=3 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=3 type=[9 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=2 type=[1 x i8]*]

; [#uses=6]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define i32 @getConvolutionResult([9 x i32]* %array) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !38), !dbg !52 ; [debug line = 51:30] [debug variable = array]
  call void @llvm.dbg.value(metadata !{[9 x i32]* %array}, i64 0, metadata !53) nounwind, !dbg !57 ; [debug line = 20:27@52:32] [debug variable = array]
  br label %1, !dbg !58                           ; [debug line = 22:28@52:32]

; <label>:1                                       ; preds = %2, %0
  %row_i = phi i2 [ 0, %0 ], [ %row, %2 ]         ; [#uses=6 type=i2]
  %verticalResult_assig = phi i32 [ 0, %0 ], [ %summation_2_2_i, %2 ] ; [#uses=2 type=i32]
  %exitcond1_i = icmp eq i2 %row_i, -1, !dbg !58  ; [#uses=1 type=i1] [debug line = 22:28@52:32]
  %row = add i2 %row_i, 1, !dbg !61               ; [#uses=1 type=i2] [debug line = 22:39@52:32]
  br i1 %exitcond1_i, label %getVerticalResult.exit.preheader, label %2, !dbg !58 ; [debug line = 22:28@52:32]

getVerticalResult.exit.preheader:                 ; preds = %1
  br label %getVerticalResult.exit, !dbg !62      ; [debug line = 34:29@52:58]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1) nounwind, !dbg !67 ; [debug line = 22:47@52:32]
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 22:47@52:32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !69 ; [debug line = 23:1@52:32]
  %tmp_i_cast = zext i2 %row_i to i5              ; [#uses=1 type=i5]
  %tmp_7 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i, i2 0) ; [#uses=1 type=i4]
  %p_shl_cast = zext i4 %tmp_7 to i5, !dbg !70    ; [#uses=1 type=i5] [debug line = 24:4@52:32]
  %tmp_8 = sub i5 %p_shl_cast, %tmp_i_cast, !dbg !70 ; [#uses=2 type=i5] [debug line = 24:4@52:32]
  %tmp_8_cast = sext i5 %tmp_8 to i64, !dbg !70   ; [#uses=1 type=i64] [debug line = 24:4@52:32]
  %array_addr = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_8_cast, !dbg !70 ; [#uses=1 type=i32*] [debug line = 24:4@52:32]
  %tmp_9 = add i5 %tmp_8, 2, !dbg !70             ; [#uses=1 type=i5] [debug line = 24:4@52:32]
  %tmp_9_cast = sext i5 %tmp_9 to i64, !dbg !70   ; [#uses=1 type=i64] [debug line = 24:4@52:32]
  %array_addr_1 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_9_cast, !dbg !70 ; [#uses=1 type=i32*] [debug line = 24:4@52:32]
  %array_load = load i32* %array_addr, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp_1 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 2, i32 1, i2 %row_i) nounwind ; [#uses=1 type=i32]
  %tmp_3_i = mul nsw i32 %tmp_1, %array_load, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %array_load_1 = load i32* %array_addr_1, align 4, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp_2 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 -1, i32 -2, i32 -1, i2 %row_i) nounwind ; [#uses=1 type=i32]
  %tmp_3_2_i = mul nsw i32 %tmp_2, %array_load_1, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %tmp_3 = add nsw i32 %tmp_3_i, %tmp_3_2_i, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %summation_2_2_i = add nsw i32 %tmp_3, %verticalResult_assig, !dbg !70 ; [#uses=1 type=i32] [debug line = 24:4@52:32]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1, i32 %tmp_1_i) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 26:2@52:32]
  call void @llvm.dbg.value(metadata !{i2 %row}, i64 0, metadata !74) nounwind, !dbg !61 ; [debug line = 22:39@52:32] [debug variable = row]
  br label %1, !dbg !61                           ; [debug line = 22:39@52:32]

getVerticalResult.exit:                           ; preds = %3, %getVerticalResult.exit.preheader
  %row_i1 = phi i2 [ %row_1, %3 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=6 type=i2]
  %horizontalResult_ass = phi i32 [ %summation_3_2_i, %3 ], [ 0, %getVerticalResult.exit.preheader ] ; [#uses=2 type=i32]
  %exitcond1_i3 = icmp eq i2 %row_i1, -1, !dbg !62 ; [#uses=1 type=i1] [debug line = 34:29@52:58]
  %row_1 = add i2 %row_i1, 1, !dbg !75            ; [#uses=1 type=i2] [debug line = 34:40@52:58]
  br i1 %exitcond1_i3, label %getHorizontalResult.exit, label %3, !dbg !62 ; [debug line = 34:29@52:58]

; <label>:3                                       ; preds = %getVerticalResult.exit
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str3) nounwind, !dbg !76 ; [debug line = 34:48@52:58]
  %tmp_5_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str3) nounwind, !dbg !76 ; [#uses=1 type=i32] [debug line = 34:48@52:58]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !78 ; [debug line = 35:1@52:58]
  %tmp_i4_cast = zext i2 %row_i1 to i5            ; [#uses=1 type=i5]
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i1, i2 0) ; [#uses=1 type=i4]
  %p_shl1_cast = zext i4 %tmp_s to i5, !dbg !79   ; [#uses=1 type=i5] [debug line = 36:4@52:58]
  %tmp_10 = sub i5 %p_shl1_cast, %tmp_i4_cast, !dbg !79 ; [#uses=3 type=i5] [debug line = 36:4@52:58]
  %tmp_11_cast = sext i5 %tmp_10 to i64, !dbg !79 ; [#uses=1 type=i64] [debug line = 36:4@52:58]
  %array_addr_2 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_11_cast, !dbg !79 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %tmp_11 = add i5 %tmp_10, 1, !dbg !79           ; [#uses=1 type=i5] [debug line = 36:4@52:58]
  %tmp_12_cast = sext i5 %tmp_11 to i64, !dbg !79 ; [#uses=1 type=i64] [debug line = 36:4@52:58]
  %array_addr_3 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_12_cast, !dbg !79 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %tmp_12 = add i5 %tmp_10, 2, !dbg !79           ; [#uses=1 type=i5] [debug line = 36:4@52:58]
  %tmp_13_cast = sext i5 %tmp_12 to i64, !dbg !79 ; [#uses=1 type=i64] [debug line = 36:4@52:58]
  %array_addr_4 = getelementptr [9 x i32]* %array, i64 0, i64 %tmp_13_cast, !dbg !79 ; [#uses=1 type=i32*] [debug line = 36:4@52:58]
  %array_load_2 = load i32* %array_addr_2, align 4, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp_4 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 0, i32 -1, i2 %row_i1) nounwind ; [#uses=2 type=i32]
  %tmp_8_i = mul nsw i32 %tmp_4, %array_load_2, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %array_load_3 = load i32* %array_addr_3, align 4, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp_5 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 2, i32 0, i32 -2, i2 %row_i1) nounwind ; [#uses=1 type=i32]
  %tmp_8_1_i = mul nsw i32 %tmp_5, %array_load_3, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %array_load_4 = load i32* %array_addr_4, align 4, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp_8_2_i = mul nsw i32 %tmp_4, %array_load_4, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp = add i32 %tmp_8_2_i, %tmp_8_1_i, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %tmp_6 = add nsw i32 %tmp_8_i, %tmp, !dbg !79   ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %summation_3_2_i = add nsw i32 %tmp_6, %horizontalResult_ass, !dbg !79 ; [#uses=1 type=i32] [debug line = 36:4@52:58]
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str3, i32 %tmp_5_i) nounwind, !dbg !82 ; [#uses=0 type=i32] [debug line = 38:2@52:58]
  call void @llvm.dbg.value(metadata !{i2 %row_1}, i64 0, metadata !83) nounwind, !dbg !75 ; [debug line = 34:40@52:58] [debug variable = row]
  br label %getVerticalResult.exit, !dbg !75      ; [debug line = 34:40@52:58]

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  call void @llvm.dbg.value(metadata !{i32 %verticalResult_assig}, i64 0, metadata !84), !dbg !88 ; [debug line = 45:32@52:58] [debug variable = verticalResult]
  call void @llvm.dbg.value(metadata !{i32 %horizontalResult_ass}, i64 0, metadata !89), !dbg !90 ; [debug line = 45:52@52:58] [debug variable = horizontalResult]
  %tmp_i1 = add nsw i32 %horizontalResult_ass, %verticalResult_assig, !dbg !91 ; [#uses=1 type=i32] [debug line = 46:2@52:58]
  ret i32 %tmp_i1, !dbg !66                       ; [debug line = 52:58]
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

; [#uses=2]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=4]
define weak i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32, i32, i32, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ] ; [#uses=1 type=i32]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
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
!38 = metadata !{i32 786689, metadata !39, metadata !"array", null, i32 51, metadata !50, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!39 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !40, i32 51, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 51} ; [ DW_TAG_subprogram ]
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
!52 = metadata !{i32 51, i32 30, metadata !39, null}
!53 = metadata !{i32 786689, metadata !54, metadata !"array", null, i32 20, metadata !50, i32 0, metadata !55} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !40, i32 20, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 20} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 52, i32 32, metadata !56, null}
!56 = metadata !{i32 786443, metadata !39, i32 51, i32 42, metadata !40, i32 11} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 20, i32 27, metadata !54, metadata !55}
!58 = metadata !{i32 22, i32 28, metadata !59, metadata !55}
!59 = metadata !{i32 786443, metadata !60, i32 22, i32 12, metadata !40, i32 1} ; [ DW_TAG_lexical_block ]
!60 = metadata !{i32 786443, metadata !54, i32 20, i32 40, metadata !40, i32 0} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 22, i32 39, metadata !59, metadata !55}
!62 = metadata !{i32 34, i32 29, metadata !63, metadata !66}
!63 = metadata !{i32 786443, metadata !64, i32 34, i32 13, metadata !40, i32 6} ; [ DW_TAG_lexical_block ]
!64 = metadata !{i32 786443, metadata !65, i32 32, i32 42, metadata !40, i32 5} ; [ DW_TAG_lexical_block ]
!65 = metadata !{i32 786478, i32 0, metadata !40, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !40, i32 32, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 32} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 52, i32 58, metadata !56, null}
!67 = metadata !{i32 22, i32 47, metadata !68, metadata !55}
!68 = metadata !{i32 786443, metadata !59, i32 22, i32 46, metadata !40, i32 2} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 23, i32 1, metadata !68, metadata !55}
!70 = metadata !{i32 24, i32 4, metadata !71, metadata !55}
!71 = metadata !{i32 786443, metadata !72, i32 23, i32 47, metadata !40, i32 4} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 786443, metadata !68, i32 23, i32 13, metadata !40, i32 3} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 26, i32 2, metadata !68, metadata !55}
!74 = metadata !{i32 786688, metadata !59, metadata !"row", metadata !40, i32 22, metadata !43, i32 0, metadata !55} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 34, i32 40, metadata !63, metadata !66}
!76 = metadata !{i32 34, i32 48, metadata !77, metadata !66}
!77 = metadata !{i32 786443, metadata !63, i32 34, i32 47, metadata !40, i32 7} ; [ DW_TAG_lexical_block ]
!78 = metadata !{i32 35, i32 1, metadata !77, metadata !66}
!79 = metadata !{i32 36, i32 4, metadata !80, metadata !66}
!80 = metadata !{i32 786443, metadata !81, i32 35, i32 48, metadata !40, i32 9} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786443, metadata !77, i32 35, i32 14, metadata !40, i32 8} ; [ DW_TAG_lexical_block ]
!82 = metadata !{i32 38, i32 2, metadata !77, metadata !66}
!83 = metadata !{i32 786688, metadata !63, metadata !"row", metadata !40, i32 34, metadata !43, i32 0, metadata !66} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786689, metadata !85, metadata !"verticalResult", metadata !40, i32 16777261, metadata !43, i32 0, metadata !66} ; [ DW_TAG_arg_variable ]
!85 = metadata !{i32 786478, i32 0, metadata !40, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !40, i32 45, metadata !86, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !48, i32 45} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !43, metadata !43, metadata !43}
!88 = metadata !{i32 45, i32 32, metadata !85, metadata !66}
!89 = metadata !{i32 786689, metadata !85, metadata !"horizontalResult", metadata !40, i32 33554477, metadata !43, i32 0, metadata !66} ; [ DW_TAG_arg_variable ]
!90 = metadata !{i32 45, i32 52, metadata !85, metadata !66}
!91 = metadata !{i32 46, i32 2, metadata !92, metadata !66}
!92 = metadata !{i32 786443, metadata !85, i32 45, i32 70, metadata !40, i32 10} ; [ DW_TAG_lexical_block ]
