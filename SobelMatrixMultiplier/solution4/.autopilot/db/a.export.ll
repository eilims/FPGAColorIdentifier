; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@p_str3 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1
@p_str1 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getConvolutionResult([9 x i32]* %array_r) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array_r) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %row_i = phi i2 [ 0, %0 ], [ %row, %2 ]
  %verticalResult_assig = phi i32 [ 0, %0 ], [ %summation_2_2_i, %2 ]
  %exitcond1_i = icmp eq i2 %row_i, -1
  %row = add i2 %row_i, 1
  br i1 %exitcond1_i, label %getVerticalResult.exit.preheader, label %2

getVerticalResult.exit.preheader:                 ; preds = %1
  br label %getVerticalResult.exit

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str1) nounwind
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i_cast = zext i2 %row_i to i5
  %tmp_7 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i, i2 0)
  %p_shl_cast = zext i4 %tmp_7 to i5
  %tmp_8 = sub i5 %p_shl_cast, %tmp_i_cast
  %tmp_8_cast = sext i5 %tmp_8 to i64
  %array_addr = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_8_cast
  %tmp_9 = add i5 %tmp_8, 2
  %tmp_9_cast = sext i5 %tmp_9 to i64
  %array_addr_1 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_9_cast
  %array_load = load i32* %array_addr, align 4
  %tmp_1 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 2, i32 1, i2 %row_i) nounwind
  %tmp_3_i = mul nsw i32 %tmp_1, %array_load
  %array_load_1 = load i32* %array_addr_1, align 4
  %tmp_2 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 -1, i32 -2, i32 -1, i2 %row_i) nounwind
  %tmp_3_2_i = mul nsw i32 %tmp_2, %array_load_1
  %tmp_3 = add nsw i32 %tmp_3_i, %tmp_3_2_i
  %summation_2_2_i = add nsw i32 %tmp_3, %verticalResult_assig
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str1, i32 %tmp_1_i) nounwind
  br label %1

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader, %3
  %row_i1 = phi i2 [ %row_1, %3 ], [ 0, %getVerticalResult.exit.preheader ]
  %horizontalResult_ass = phi i32 [ %summation_3_2_i, %3 ], [ 0, %getVerticalResult.exit.preheader ]
  %exitcond1_i3 = icmp eq i2 %row_i1, -1
  %row_1 = add i2 %row_i1, 1
  br i1 %exitcond1_i3, label %getHorizontalResult.exit, label %3

; <label>:3                                       ; preds = %getVerticalResult.exit
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str3) nounwind
  %tmp_5_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str3) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_i4_cast = zext i2 %row_i1 to i5
  %tmp_s = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i1, i2 0)
  %p_shl1_cast = zext i4 %tmp_s to i5
  %tmp_10 = sub i5 %p_shl1_cast, %tmp_i4_cast
  %tmp_11_cast = sext i5 %tmp_10 to i64
  %array_addr_2 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_11_cast
  %tmp_11 = add i5 %tmp_10, 1
  %tmp_12_cast = sext i5 %tmp_11 to i64
  %array_addr_3 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_12_cast
  %tmp_12 = add i5 %tmp_10, 2
  %tmp_13_cast = sext i5 %tmp_12 to i64
  %array_addr_4 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_13_cast
  %array_load_2 = load i32* %array_addr_2, align 4
  %tmp_4 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 0, i32 -1, i2 %row_i1) nounwind
  %tmp_8_i = mul nsw i32 %tmp_4, %array_load_2
  %array_load_3 = load i32* %array_addr_3, align 4
  %tmp_5 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 2, i32 0, i32 -2, i2 %row_i1) nounwind
  %tmp_8_1_i = mul nsw i32 %tmp_5, %array_load_3
  %array_load_4 = load i32* %array_addr_4, align 4
  %tmp_8_2_i = mul nsw i32 %tmp_4, %array_load_4
  %tmp = add i32 %tmp_8_2_i, %tmp_8_1_i
  %tmp_6 = add nsw i32 %tmp_8_i, %tmp
  %summation_3_2_i = add nsw i32 %tmp_6, %horizontalResult_ass
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str3, i32 %tmp_5_i) nounwind
  br label %getVerticalResult.exit

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %tmp_i1 = add nsw i32 %horizontalResult_ass, %verticalResult_assig
  ret i32 %tmp_i1
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32, i32, i32, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i32 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i32 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_5 = zext i2 %1 to i4
  %empty_6 = shl i4 %empty, 2
  %empty_7 = or i4 %empty_6, %empty_5
  ret i4 %empty_7
}

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
