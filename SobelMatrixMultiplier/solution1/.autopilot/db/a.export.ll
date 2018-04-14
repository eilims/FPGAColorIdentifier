; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@p_vertical_sobel_oper = internal constant [9 x i3] [i3 1, i3 0, i3 -1, i3 2, i3 0, i3 -2, i3 1, i3 0, i3 -1]
@p_horizontal_sobel_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1]
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1
@p_str = private unnamed_addr constant [4 x i8] c"Row\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define i32 @getConvolutionResult([9 x i32]* %array_r) nounwind uwtable readonly {
  %verticalResult_assig = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array_r) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  store i32 0, i32* %verticalResult_assig
  br label %1

; <label>:1                                       ; preds = %5, %0
  %row_i = phi i2 [ 0, %0 ], [ %row, %5 ]
  %exitcond1_i = icmp eq i2 %row_i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %row = add i2 %row_i, 1
  br i1 %exitcond1_i, label %getVerticalResult.exit.preheader, label %2

getVerticalResult.exit.preheader:                 ; preds = %1
  %horizontalResult_ass = alloca i32
  store i32 0, i32* %horizontalResult_ass
  br label %getVerticalResult.exit

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str) nounwind
  %tmp_i_cast = zext i2 %row_i to i5
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i, i2 0)
  %p_shl_cast = zext i4 %tmp to i5
  %tmp_1 = sub i5 %p_shl_cast, %tmp_i_cast
  br label %3

; <label>:3                                       ; preds = %4, %2
  %col_i = phi i2 [ 0, %2 ], [ %col, %4 ]
  %exitcond_i = icmp eq i2 %col_i, -1
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %col = add i2 %col_i, 1
  br i1 %exitcond_i, label %5, label %4

; <label>:4                                       ; preds = %3
  %verticalResult_assig_1 = load i32* %verticalResult_assig
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_2_i_cast = zext i2 %col_i to i5
  %tmp_4 = add i5 %tmp_1, %tmp_2_i_cast
  %tmp_4_cast = sext i5 %tmp_4 to i64
  %array_addr = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_4_cast
  %p_vertical_sobel_oper = getelementptr [9 x i3]* @p_vertical_sobel_oper, i64 0, i64 %tmp_4_cast
  %array_load = load i32* %array_addr, align 4
  %p_vertical_sobel_oper_1 = load i3* %p_vertical_sobel_oper, align 1
  %p_vertical_sobel_oper_2 = sext i3 %p_vertical_sobel_oper_1 to i32
  %tmp_3_i = mul nsw i32 %p_vertical_sobel_oper_2, %array_load
  %summation = add nsw i32 %verticalResult_assig_1, %tmp_3_i
  store i32 %summation, i32* %verticalResult_assig
  br label %3

; <label>:5                                       ; preds = %3
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_1_i) nounwind
  br label %1

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader, %9
  %row_i1 = phi i2 [ %row_1, %9 ], [ 0, %getVerticalResult.exit.preheader ]
  %exitcond1_i3 = icmp eq i2 %row_i1, -1
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %row_1 = add i2 %row_i1, 1
  br i1 %exitcond1_i3, label %getHorizontalResult.exit, label %6

; <label>:6                                       ; preds = %getVerticalResult.exit
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str) nounwind
  %tmp_2_i4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str) nounwind
  %tmp_i5_cast = zext i2 %row_i1 to i5
  %tmp_2 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %row_i1, i2 0)
  %p_shl1_cast = zext i4 %tmp_2 to i5
  %tmp_3 = sub i5 %p_shl1_cast, %tmp_i5_cast
  br label %7

; <label>:7                                       ; preds = %8, %6
  %col_i7 = phi i2 [ 0, %6 ], [ %col_1, %8 ]
  %exitcond_i8 = icmp eq i2 %col_i7, -1
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %col_1 = add i2 %col_i7, 1
  br i1 %exitcond_i8, label %9, label %8

; <label>:8                                       ; preds = %7
  %horizontalResult_ass_1 = load i32* %horizontalResult_ass
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_7_i_cast = zext i2 %col_i7 to i5
  %tmp_5 = add i5 %tmp_3, %tmp_7_i_cast
  %tmp_5_cast = sext i5 %tmp_5 to i64
  %array_addr_1 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_5_cast
  %p_horizontal_sobel_op = getelementptr [9 x i3]* @p_horizontal_sobel_op, i64 0, i64 %tmp_5_cast
  %array_load_1 = load i32* %array_addr_1, align 4
  %p_horizontal_sobel_op_1 = load i3* %p_horizontal_sobel_op, align 1
  %p_horizontal_sobel_op_2 = sext i3 %p_horizontal_sobel_op_1 to i32
  %tmp_8_i = mul nsw i32 %p_horizontal_sobel_op_2, %array_load_1
  %summation_1 = add nsw i32 %horizontalResult_ass_1, %tmp_8_i
  store i32 %summation_1, i32* %horizontalResult_ass
  br label %7

; <label>:9                                       ; preds = %7
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str, i32 %tmp_2_i4) nounwind
  br label %getVerticalResult.exit

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit
  %horizontalResult_ass_2 = load i32* %horizontalResult_ass
  %verticalResult_assig_2 = load i32* %verticalResult_assig
  %tmp_i1 = add nsw i32 %horizontalResult_ass_2, %verticalResult_assig_2
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

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_8 = zext i2 %1 to i4
  %empty_9 = shl i4 %empty, 2
  %empty_10 = or i4 %empty_9, %empty_8
  ret i4 %empty_10
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
