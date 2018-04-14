; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@Row_Col_str = internal unnamed_addr constant [8 x i8] c"Row_Col\00"
@p_str3 = private unnamed_addr constant [4 x i8] c"Col\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i96 @llvm.part.select.i96(i96, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getConvolutionResult([3 x i96]* %array_r) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i96]* %array_r), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !43
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i4 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %row_i = phi i2 [ 0, %0 ], [ %tmp_6_i_cast_mid2_v_s, %.reset ]
  %summation_1_i = phi i32 [ 0, %0 ], [ %summation, %.reset ]
  %col_i = phi i2 [ 0, %0 ], [ %col, %.reset ]
  %exitcond_flatten = icmp eq i4 %indvar_flatten, -7
  %indvar_flatten_next = add i4 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %getVerticalResult.exit.preheader.preheader, label %.reset

getVerticalResult.exit.preheader.preheader:       ; preds = %1
  br label %getVerticalResult.exit.preheader

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %exitcond_i = icmp eq i2 %col_i, -1
  %col_i_mid2 = select i1 %exitcond_i, i2 0, i2 %col_i
  %row = add i2 1, %row_i
  %tmp_6_i_cast_mid2_v_s = select i1 %exitcond_i, i2 %row, i2 %row_i
  %tmp_6_i_cast_mid2_v = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_6_i_cast_mid2_v_s, i5 0)
  %tmp_7_i_cast_mid2_v = or i7 %tmp_6_i_cast_mid2_v, 31
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str3) nounwind
  %tmp_1_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2_i = zext i2 %col_i_mid2 to i64
  %array_addr = getelementptr [3 x i96]* %array_r, i64 0, i64 %tmp_2_i
  %array_load = load i96* %array_addr, align 8
  %tmp_2 = icmp ugt i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v
  %tmp_3 = call i96 @llvm.part.select.i96(i96 %array_load, i32 95, i32 0)
  %tmp_4 = sub i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v
  %tmp_5 = sub i7 -33, %tmp_6_i_cast_mid2_v
  %tmp_6 = sub i7 %tmp_7_i_cast_mid2_v, %tmp_6_i_cast_mid2_v
  %tmp_7 = select i1 %tmp_2, i7 %tmp_4, i7 %tmp_6
  %tmp_8 = select i1 %tmp_2, i96 %tmp_3, i96 %array_load
  %tmp_9 = select i1 %tmp_2, i7 %tmp_5, i7 %tmp_6_i_cast_mid2_v
  %tmp_10 = sub i7 -33, %tmp_7
  %tmp_11 = zext i7 %tmp_9 to i96
  %tmp_12 = zext i7 %tmp_10 to i96
  %tmp_13 = lshr i96 %tmp_8, %tmp_11
  %tmp_14 = lshr i96 -1, %tmp_12
  %tmp_15 = and i96 %tmp_13, %tmp_14
  %tmp_16 = trunc i96 %tmp_15 to i32
  %tmp = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 18446744082299486209, i96 0, i96 -4294967297, i2 %col_i_mid2)
  %tmp_17 = icmp ugt i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v
  %tmp_18 = call i96 @llvm.part.select.i96(i96 %tmp, i32 95, i32 0)
  %tmp_19 = sub i7 %tmp_6_i_cast_mid2_v, %tmp_7_i_cast_mid2_v
  %tmp_20 = sub i7 -33, %tmp_6_i_cast_mid2_v
  %tmp_21 = sub i7 %tmp_7_i_cast_mid2_v, %tmp_6_i_cast_mid2_v
  %tmp_22 = select i1 %tmp_17, i7 %tmp_19, i7 %tmp_21
  %tmp_23 = select i1 %tmp_17, i96 %tmp_18, i96 %tmp
  %tmp_24 = select i1 %tmp_17, i7 %tmp_20, i7 %tmp_6_i_cast_mid2_v
  %tmp_25 = sub i7 -33, %tmp_22
  %tmp_26 = zext i7 %tmp_24 to i96
  %tmp_27 = zext i7 %tmp_25 to i96
  %tmp_28 = lshr i96 %tmp_23, %tmp_26
  %tmp_29 = lshr i96 -1, %tmp_27
  %tmp_30 = and i96 %tmp_28, %tmp_29
  %tmp_31 = trunc i96 %tmp_30 to i32
  %tmp_3_i = mul nsw i32 %tmp_16, %tmp_31
  %summation = add nsw i32 %tmp_3_i, %summation_1_i
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str3, i32 %tmp_1_i)
  %col = add i2 1, %col_i_mid2
  br label %1

getVerticalResult.exit.preheader:                 ; preds = %getVerticalResult.exit.preheader.preheader, %getVerticalResult.exit
  %indvar_flatten1 = phi i4 [ %indvar_flatten_next1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %row_i2 = phi i2 [ %tmp_14_i_cast_mid2_v_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %summation_1_i6 = phi i32 [ %summation_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %col_i7 = phi i2 [ %col_1, %getVerticalResult.exit ], [ 0, %getVerticalResult.exit.preheader.preheader ]
  %exitcond_flatten1 = icmp eq i4 %indvar_flatten1, -7
  %indvar_flatten_next1 = add i4 %indvar_flatten1, 1
  br i1 %exitcond_flatten1, label %getHorizontalResult.exit, label %getVerticalResult.exit

getVerticalResult.exit:                           ; preds = %getVerticalResult.exit.preheader
  call void (...)* @_ssdm_op_SpecLoopName([8 x i8]* @Row_Col_str)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 9, i64 9, i64 9)
  %exitcond_i1 = icmp eq i2 %col_i7, -1
  %col_i7_mid2 = select i1 %exitcond_i1, i2 0, i2 %col_i7
  %row_s = add i2 1, %row_i2
  %tmp_14_i_cast_mid2_v_1 = select i1 %exitcond_i1, i2 %row_s, i2 %row_i2
  %tmp_14_i_cast_mid2_v = call i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2 %tmp_14_i_cast_mid2_v_1, i5 0)
  %tmp_15_i_cast_mid2_v = or i7 %tmp_14_i_cast_mid2_v, 31
  call void (...)* @_ssdm_op_SpecLoopName([4 x i8]* @p_str3) nounwind
  %tmp_11_i = call i32 (...)* @_ssdm_op_SpecRegionBegin([4 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_7_i9 = zext i2 %col_i7_mid2 to i64
  %array_addr_1 = getelementptr [3 x i96]* %array_r, i64 0, i64 %tmp_7_i9
  %array_load_1 = load i96* %array_addr_1, align 8
  %tmp_32 = icmp ugt i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v
  %tmp_33 = call i96 @llvm.part.select.i96(i96 %array_load_1, i32 95, i32 0)
  %tmp_34 = sub i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v
  %tmp_35 = sub i7 -33, %tmp_14_i_cast_mid2_v
  %tmp_36 = sub i7 %tmp_15_i_cast_mid2_v, %tmp_14_i_cast_mid2_v
  %tmp_37 = select i1 %tmp_32, i7 %tmp_34, i7 %tmp_36
  %tmp_38 = select i1 %tmp_32, i96 %tmp_33, i96 %array_load_1
  %tmp_39 = select i1 %tmp_32, i7 %tmp_35, i7 %tmp_14_i_cast_mid2_v
  %tmp_40 = sub i7 -33, %tmp_37
  %tmp_41 = zext i7 %tmp_39 to i96
  %tmp_42 = zext i7 %tmp_40 to i96
  %tmp_43 = lshr i96 %tmp_38, %tmp_41
  %tmp_44 = lshr i96 -1, %tmp_42
  %tmp_45 = and i96 %tmp_43, %tmp_44
  %tmp_46 = trunc i96 %tmp_45 to i32
  %tmp_1 = call i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96 -18446744073709551615, i96 -36893488147419103230, i96 -18446744073709551615, i2 %col_i7_mid2)
  %tmp_47 = icmp ugt i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v
  %tmp_48 = call i96 @llvm.part.select.i96(i96 %tmp_1, i32 95, i32 0)
  %tmp_49 = sub i7 %tmp_14_i_cast_mid2_v, %tmp_15_i_cast_mid2_v
  %tmp_50 = sub i7 -33, %tmp_14_i_cast_mid2_v
  %tmp_51 = sub i7 %tmp_15_i_cast_mid2_v, %tmp_14_i_cast_mid2_v
  %tmp_52 = select i1 %tmp_47, i7 %tmp_49, i7 %tmp_51
  %tmp_53 = select i1 %tmp_47, i96 %tmp_48, i96 %tmp_1
  %tmp_54 = select i1 %tmp_47, i7 %tmp_50, i7 %tmp_14_i_cast_mid2_v
  %tmp_55 = sub i7 -33, %tmp_52
  %tmp_56 = zext i7 %tmp_54 to i96
  %tmp_57 = zext i7 %tmp_55 to i96
  %tmp_58 = lshr i96 %tmp_53, %tmp_56
  %tmp_59 = lshr i96 -1, %tmp_57
  %tmp_60 = and i96 %tmp_58, %tmp_59
  %tmp_61 = trunc i96 %tmp_60 to i32
  %tmp_8_i1 = mul nsw i32 %tmp_46, %tmp_61
  %summation_1 = add nsw i32 %tmp_8_i1, %summation_1_i6
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([4 x i8]* @p_str3, i32 %tmp_11_i)
  %col_1 = add i2 1, %col_i7_mid2
  br label %getVerticalResult.exit.preheader

getHorizontalResult.exit:                         ; preds = %getVerticalResult.exit.preheader
  %tmp_i1 = add nsw i32 %summation_1_i6, %summation_1_i
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

declare i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone

define weak i96 @_ssdm_op_Mux.ap_auto.3i96.i2(i96, i96, i96, i2) {
entry:
  switch i2 %3, label %case2 [
    i2 0, label %case0
    i2 1, label %case1
  ]

case0:                                            ; preds = %case2, %case1, %entry
  %merge = phi i96 [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ]
  ret i96 %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0
}

define weak i7 @_ssdm_op_BitConcatenate.i7.i2.i5(i2, i5) nounwind readnone {
entry:
  %empty = zext i2 %0 to i7
  %empty_7 = zext i5 %1 to i7
  %empty_8 = shl i7 %empty, 5
  %empty_9 = or i7 %empty_8, %empty_7
  ret i7 %empty_9
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
!26 = metadata !{metadata !27, metadata !33, metadata !38}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"array", metadata !30, metadata !"int", i32 0, i32 31}
!30 = metadata !{metadata !31, metadata !32}
!31 = metadata !{i32 0, i32 0, i32 2}
!32 = metadata !{i32 0, i32 2, i32 1}
!33 = metadata !{i32 32, i32 63, metadata !34}
!34 = metadata !{metadata !35}
!35 = metadata !{metadata !"array", metadata !36, metadata !"int", i32 0, i32 31}
!36 = metadata !{metadata !37, metadata !32}
!37 = metadata !{i32 1, i32 1, i32 2}
!38 = metadata !{i32 64, i32 95, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"array", metadata !41, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42, metadata !32}
!42 = metadata !{i32 2, i32 2, i32 2}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"return", metadata !47, metadata !"int", i32 0, i32 31}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 1, i32 0}
