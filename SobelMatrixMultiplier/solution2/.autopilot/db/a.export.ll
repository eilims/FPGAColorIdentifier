; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution2/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@p_vertical_sobel_oper = internal constant [9 x i3] [i3 1, i3 0, i3 -1, i3 2, i3 0, i3 -2, i3 1, i3 0, i3 -1]
@p_horizontal_sobel_op = internal constant [9 x i3] [i3 1, i3 2, i3 1, i3 0, i3 0, i3 0, i3 -1, i3 -2, i3 -1]
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00"
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [4 x i8] c"Col\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getConvolutionResult([9 x i32]* %array_r) nounwind uwtable readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([9 x i32]* %array_r) nounwind, !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !32
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  br label %1

; <label>:1                                       ; preds = %.reset, %0
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %row_i = phi i2 [ 0, %0 ], [ %tmp_i_mid2_v, %.reset ]
  %summation_1_i = phi i32 [ 0, %0 ], [ %summation, %.reset ]
  %col_i = phi i2 [ 0, %0 ], [ %col, %.reset ]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7
  %indvar_flatten_next = add i4 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %getVerticalResult.exit.preheader.preheader, label %.reset

getVerticalResult.exit.preheader.preheader:       ; preds = %1
  br label %getVerticalResult.exit.preheader

.reset:                                           ; preds = %1
  %row = add i2 %row_i, 1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  %exitcond_i3 = icmp eq i2 %col_i, -1
  %col_i_mid2 = select i1 %exitcond_i3, i2 0, i2 %col_i
  %tmp_i_mid2_v = select i1 %exitcond_i3, i2 %row, i2 %row_i
  %tmp_i_mid2_cast = zext i2 %tmp_i_mid2_v to i5
  %tmp = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_i_mid2_v, i2 0)
  %p_shl_cast = zext i4 %tmp to i5
  %tmp_1 = sub i5 %p_shl_cast, %tmp_i_mid2_cast
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_4_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_2_i_cast = zext i2 %col_i_mid2 to i5
  %tmp_2 = add i5 %tmp_1, %tmp_2_i_cast
  %tmp_2_cast = sext i5 %tmp_2 to i64
  %array_addr = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_2_cast
  %p_vertical_sobel_oper = getelementptr [9 x i3]* @p_vertical_sobel_oper, i64 0, i64 %tmp_2_cast
  %array_load = load i32* %array_addr, align 4
  %p_vertical_sobel_oper_1 = load i3* %p_vertical_sobel_oper, align 1
  %p_vertical_sobel_oper_2 = sext i3 %p_vertical_sobel_oper_1 to i32
  %tmp_3_i = mul nsw i32 %p_vertical_sobel_oper_2, %array_load
  %summation = add nsw i32 %summation_1_i, %tmp_3_i
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_4_i) nounwind
  %col = add i2 %col_i_mid2, 1
  br label %1

getVerticalResult.exit.preheader:                 ; preds = %getVerticalResult.exit.preheader.preheader, %getVerticalResult.exit
  %indvar_flatten1 = phi i4 [ %indvar_flatten_next1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %row_i1 = phi i2 [ %tmp_i4_mid2_v, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %summation_1_i5 = phi i32 [ %summation_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %col_i6 = phi i2 [ %col_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %exitcond_flatten1 = icmp eq i4 %indvar_flatten1, -7
  %indvar_flatten_next1 = add i4 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %getHorizontalResult.exit, label %getVerticalResult.exit

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader
  %row_1 = add i2 %row_i1, 1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9) nounwind
  %exitcond_i = icmp eq i2 %col_i6, -1
  %col_i6_mid2 = select i1 %exitcond_i, i2 0, i2 %col_i6
  %tmp_i4_mid2_v = select i1 %exitcond_i, i2 %row_1, i2 %row_i1
  %tmp_i4_mid2_cast = zext i2 %tmp_i4_mid2_v to i5
  %tmp_3 = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %tmp_i4_mid2_v, i2 0)
  %p_shl1_cast = zext i4 %tmp_3 to i5
  %tmp_4 = sub i5 %p_shl1_cast, %tmp_i4_mid2_cast
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str1) nounwind
  %tmp_6_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_7_i_cast = zext i2 %col_i6_mid2 to i5
  %tmp_5 = add i5 %tmp_4, %tmp_7_i_cast
  %tmp_5_cast = sext i5 %tmp_5 to i64
  %array_addr_1 = getelementptr [9 x i32]* %array_r, i64 0, i64 %tmp_5_cast
  %p_horizontal_sobel_op = getelementptr [9 x i3]* @p_horizontal_sobel_op, i64 0, i64 %tmp_5_cast
  %array_load_1 = load i32* %array_addr_1, align 4
  %p_horizontal_sobel_op_1 = load i3* %p_horizontal_sobel_op, align 1
  %p_horizontal_sobel_op_2 = sext i3 %p_horizontal_sobel_op_1 to i32
  %tmp_8_i = mul nsw i32 %p_horizontal_sobel_op_2, %array_load_1
  %summation_1 = add nsw i32 %summation_1_i5, %tmp_8_i
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str1, i32 %tmp_6_i) nounwind
  %col_1 = add i2 %col_i6_mid2, 1
  br label %getVerticalResult.exit.preheader

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit.preheader
  %tmp_i1 = add nsw i32 %summation_1_i5, %summation_1_i
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
