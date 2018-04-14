; ModuleID = 'C:/Users/db217620/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@getConvolutionResult_1 = internal unnamed_addr constant [21 x i8] c"getConvolutionResult\00"
@p_str7 = private unnamed_addr constant [9 x i8] c"Row_Conv\00", align 1
@p_str5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i21 @llvm.part.select.i21(i21, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @getConvolutionResult([3 x i32]* %array_0, [3 x i32]* %array_1, [3 x i32]* %array_2) readonly {
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_2), !map !119
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_1), !map !126
  call void (...)* @_ssdm_op_SpecBitsMap([3 x i32]* %array_0), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !138
  call void (...)* @_ssdm_op_SpecTopModule([21 x i8]* @getConvolutionResult_1) nounwind
  %array_0_addr = getelementptr [3 x i32]* %array_0, i64 0, i64 0
  %array_1_addr = getelementptr [3 x i32]* %array_1, i64 0, i64 0
  %array_2_addr = getelementptr [3 x i32]* %array_2, i64 0, i64 0
  %array_0_addr_1 = getelementptr [3 x i32]* %array_0, i64 0, i64 1
  %array_1_addr_1 = getelementptr [3 x i32]* %array_1, i64 0, i64 1
  %array_2_addr_1 = getelementptr [3 x i32]* %array_2, i64 0, i64 1
  %array_0_addr_2 = getelementptr [3 x i32]* %array_0, i64 0, i64 2
  %array_1_addr_2 = getelementptr [3 x i32]* %array_1, i64 0, i64 2
  %array_2_addr_2 = getelementptr [3 x i32]* %array_2, i64 0, i64 2
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i2 [ 0, %0 ], [ %i_1, %2 ]
  %horizontalResult_ass = phi i32 [ 0, %0 ], [ %horizontalResult_2_2, %2 ]
  %verticalResult_assig = phi i32 [ 0, %0 ], [ %verticalResult_2_2, %2 ]
  %exitcond1 = icmp eq i2 %i, -1
  %i_1 = add i2 %i, 1
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str7) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str7) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str5) nounwind
  %array_0_load = load i32* %array_0_addr, align 4
  %array_1_load = load i32* %array_1_addr, align 4
  %array_2_load = load i32* %array_2_addr, align 4
  %tmp_2 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load, i32 %array_1_load, i32 %array_2_load, i2 %i)
  %tmp_3 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 2, i32 1, i2 %i)
  %tmp_4 = mul nsw i32 %tmp_3, %tmp_2
  %tmp_5 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 1, i32 0, i32 -1, i2 %i)
  %tmp_6 = mul nsw i32 %tmp_5, %tmp_2
  %array_0_load_1 = load i32* %array_0_addr_1, align 4
  %array_1_load_1 = load i32* %array_1_addr_1, align 4
  %array_2_load_1 = load i32* %array_2_addr_1, align 4
  %tmp_7 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load_1, i32 %array_1_load_1, i32 %array_2_load_1, i2 %i)
  %tmp_8 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 2, i32 0, i32 -2, i2 %i)
  %tmp_6_1 = mul nsw i32 %tmp_8, %tmp_7
  %array_0_load_2 = load i32* %array_0_addr_2, align 4
  %array_1_load_2 = load i32* %array_1_addr_2, align 4
  %array_2_load_2 = load i32* %array_2_addr_2, align 4
  %tmp_9 = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 %array_0_load_2, i32 %array_1_load_2, i32 %array_2_load_2, i2 %i)
  %tmp_s = call i32 @_ssdm_op_Mux.ap_auto.3i32.i2(i32 -1, i32 -2, i32 -1, i2 %i)
  %tmp_4_2 = mul nsw i32 %tmp_s, %tmp_9
  %tmp_10 = add nsw i32 %tmp_4_2, %tmp_4
  %verticalResult_2_2 = add nsw i32 %verticalResult_assig, %tmp_10
  %tmp_6_2 = mul nsw i32 %tmp_5, %tmp_9
  %tmp = add i32 %tmp_6_1, %tmp_6_2
  %tmp_11 = add nsw i32 %tmp, %tmp_6
  %horizontalResult_2_2 = add nsw i32 %horizontalResult_ass, %tmp_11
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str7, i32 %tmp_1) nounwind
  br label %1

; <label>:3                                       ; preds = %1
  %result = mul i32 %verticalResult_assig, %verticalResult_assig
  %p_Val2_2 = shl i32 %result, 8
  %result_1 = mul i32 %horizontalResult_ass, %horizontalResult_ass
  %p_Val2_3 = shl i32 %result_1, 8
  %input_V = add i32 %p_Val2_3, %p_Val2_2
  %tmp_14 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %input_V, i32 11, i32 31)
  %tmp_9_i_i_cast = zext i21 %tmp_14 to i22
  %tmp_i_i = add i22 1, %tmp_9_i_i_cast
  %val_assign = call i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22 %tmp_i_i, i32 1, i32 21)
  %s_V = zext i21 %val_assign to i23
  br label %4

; <label>:4                                       ; preds = %_ifconv.i, %3
  %p_i_i = phi i21 [ 0, %3 ], [ %q_V_1, %_ifconv.i ]
  %p_1_i_i = phi i21 [ 0, %3 ], [ %q_star_V, %_ifconv.i ]
  %p_2_i_i = phi i23 [ %s_V, %3 ], [ %p_0353_1_i_i, %_ifconv.i ]
  %i_i_i = phi i5 [ 0, %3 ], [ %i_2, %_ifconv.i ]
  %exitcond_i_i = icmp eq i5 %i_i_i, -10
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 22, i64 22, i64 22) nounwind
  %i_2 = add i5 %i_i_i, 1
  br i1 %exitcond_i_i, label %combineOperatorResults.exit, label %_ifconv.i

_ifconv.i:                                        ; preds = %4
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i23.i32(i23 %p_2_i_i, i32 22)
  %tmp_17 = shl i23 %p_2_i_i, 1
  %r_V = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %p_i_i, i2 0)
  %lhs_V = sext i23 %r_V to i32
  %r_V_1 = or i32 %lhs_V, 1
  %op2_assign = sub i5 -11, %i_i_i
  %op2_assign_i_cast = zext i5 %op2_assign to i32
  %tmp_5_i_i = shl i32 %r_V_1, %op2_assign_i_cast
  %tmp_18 = trunc i32 %tmp_5_i_i to i23
  %s_V_1 = sub i23 %tmp_17, %tmp_18
  %r_V_2 = call i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21 %p_1_i_i, i2 0)
  %r_V_3 = or i23 %r_V_2, 3
  %r_V_4_i_cast = sext i23 %r_V_3 to i32
  %tmp_6_i_i = shl i32 %r_V_4_i_cast, %op2_assign_i_cast
  %tmp_19 = trunc i32 %tmp_6_i_i to i23
  %s_V_2 = add i23 %tmp_19, %tmp_17
  %p_0353_1_i_i = select i1 %tmp_16, i23 %s_V_2, i23 %s_V_1
  %tmp_20 = trunc i21 %p_1_i_i to i20
  %tmp_21 = trunc i21 %p_i_i to i20
  %tmp_22 = select i1 %tmp_16, i20 %tmp_20, i20 %tmp_21
  %q_star_V = call i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20 %tmp_22, i1 false)
  %q_V_1 = or i21 %q_star_V, 1
  br label %4

combineOperatorResults.exit:                      ; preds = %4
  %tmp_1_i_i = icmp sgt i23 %p_2_i_i, 0
  %q_V = add i21 %p_i_i, 1
  %tmp_12 = call i12 @_ssdm_op_PartSelect.i12.i21.i32.i32(i21 %q_V, i32 9, i32 20) nounwind
  %tmp_13 = call i12 @_ssdm_op_PartSelect.i12.i21.i32.i32(i21 %p_i_i, i32 9, i32 20) nounwind
  %p_v_i = select i1 %tmp_1_i_i, i12 %tmp_12, i12 %tmp_13
  %tmp_i = zext i12 %p_v_i to i32
  ret i32 %tmp_i
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

declare i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i22 @_ssdm_op_PartSelect.i22.i23.i32.i32(i23, i32, i32) nounwind readnone

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_10 = trunc i32 %empty to i21
  ret i21 %empty_10
}

define weak i21 @_ssdm_op_PartSelect.i21.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_11 = trunc i22 %empty to i21
  ret i21 %empty_11
}

declare i20 @_ssdm_op_PartSelect.i20.i21.i32.i32(i21, i32, i32) nounwind readnone

define weak i12 @_ssdm_op_PartSelect.i12.i21.i32.i32(i21, i32, i32) nounwind readnone {
entry:
  %empty = call i21 @llvm.part.select.i21(i21 %0, i32 %1, i32 %2)
  %empty_12 = trunc i21 %empty to i12
  ret i12 %empty_12
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

define weak i1 @_ssdm_op_BitSelect.i1.i23.i32(i23, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i23
  %empty_13 = shl i23 1, %empty
  %empty_14 = and i23 %0, %empty_13
  %empty_15 = icmp ne i23 %empty_14, 0
  ret i1 %empty_15
}

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

declare i23 @_ssdm_op_BitConcatenate.i23.i22.i1(i22, i1) nounwind readnone

define weak i23 @_ssdm_op_BitConcatenate.i23.i21.i2(i21, i2) nounwind readnone {
entry:
  %empty = zext i21 %0 to i23
  %empty_16 = zext i2 %1 to i23
  %empty_17 = shl i23 %empty, 2
  %empty_18 = or i23 %empty_17, %empty_16
  ret i23 %empty_18
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i20.i1(i20, i1) nounwind readnone {
entry:
  %empty = zext i20 %0 to i21
  %empty_19 = zext i1 %1 to i21
  %empty_20 = shl i21 %empty, 1
  %empty_21 = or i21 %empty_20, %empty_19
  ret i21 %empty_21
}

declare void @_GLOBAL__I_a() nounwind

!opencl.kernels = !{!0, !0, !7, !13, !0, !15, !15, !21, !25, !25, !15, !28, !31, !15, !15, !15, !34, !34, !15, !15, !36, !39, !25, !25, !15, !41, !15, !15, !15, !43, !43, !34, !34, !45, !45, !47, !49, !51, !49, !53, !15, !53, !15, !25, !25, !15, !54, !56, !56, !58, !43, !43, !59, !15, !61, !61, !65, !15, !15, !15, !43, !43, !67, !67, !39, !41, !15, !15, !34, !34, !43, !43, !31, !34, !34, !69, !71, !71, !15, !15, !47, !15, !72, !73, !75, !75, !77, !79, !82, !15, !15, !15, !75, !75, !43, !43, !65, !84, !84, !47, !49, !15, !15, !15, !86, !88, !88, !94, !94, !96, !15, !15, !98, !98, !15, !15, !15, !99, !99, !99, !101, !103, !103, !15, !15, !15, !104, !104, !106, !108, !108, !110, !110, !103, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!112}

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
!12 = metadata !{metadata !"kernel_arg_name", metadata !"number", metadata !"exponent"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !22, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"Cnative"}
!25 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ufixed<32, 24> &", metadata !"ap_ufixed<32, 24> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"result", metadata !"in_val"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"int"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!34 = metadata !{null, metadata !22, metadata !2, metadata !35, metadata !4, metadata !27, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &"}
!36 = metadata !{null, metadata !22, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !42, metadata !11, metadata !33, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<21, false> &", metadata !"const ap_int_base<32, true> &"}
!43 = metadata !{null, metadata !22, metadata !2, metadata !44, metadata !4, metadata !27, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!45 = metadata !{null, metadata !22, metadata !2, metadata !46, metadata !4, metadata !27, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !33, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"int"}
!49 = metadata !{null, metadata !22, metadata !2, metadata !44, metadata !4, metadata !50, metadata !6}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!51 = metadata !{null, metadata !8, metadata !9, metadata !52, metadata !11, metadata !33, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<21, false> &", metadata !"int"}
!53 = metadata !{null, metadata !22, metadata !2, metadata !37, metadata !4, metadata !50, metadata !6}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !33, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"const ap_int_base<32, true> &"}
!56 = metadata !{null, metadata !22, metadata !2, metadata !57, metadata !4, metadata !27, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!58 = metadata !{null, metadata !22, metadata !2, metadata !46, metadata !4, metadata !50, metadata !6}
!59 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !60, metadata !6}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!61 = metadata !{null, metadata !62, metadata !9, metadata !63, metadata !11, metadata !64, metadata !6}
!62 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<32, true>*", metadata !"int"}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !33, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &", metadata !"const ap_int_base<32, true> &"}
!67 = metadata !{null, metadata !22, metadata !2, metadata !68, metadata !4, metadata !27, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<55, true> &"}
!69 = metadata !{null, metadata !22, metadata !2, metadata !70, metadata !4, metadata !50, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<21> &"}
!71 = metadata !{null, metadata !22, metadata !2, metadata !70, metadata !4, metadata !27, metadata !6}
!72 = metadata !{null, metadata !8, metadata !9, metadata !48, metadata !11, metadata !40, metadata !6}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !33, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &", metadata !"const ap_int_base<32, true> &"}
!75 = metadata !{null, metadata !22, metadata !2, metadata !76, metadata !4, metadata !27, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<23, true> &"}
!77 = metadata !{null, metadata !8, metadata !9, metadata !78, metadata !11, metadata !33, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!79 = metadata !{null, metadata !8, metadata !9, metadata !80, metadata !11, metadata !81, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<23, true> &"}
!81 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!82 = metadata !{null, metadata !8, metadata !9, metadata !83, metadata !11, metadata !33, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<23, true> &"}
!84 = metadata !{null, metadata !22, metadata !2, metadata !85, metadata !4, metadata !27, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<56, true> &"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !87, metadata !6}
!87 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!88 = metadata !{null, metadata !89, metadata !90, metadata !91, metadata !92, metadata !93, metadata !6}
!89 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!90 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0>*", metadata !"int", metadata !"int"}
!92 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!93 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!94 = metadata !{null, metadata !22, metadata !2, metadata !95, metadata !4, metadata !38, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!96 = metadata !{null, metadata !22, metadata !2, metadata !97, metadata !4, metadata !50, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<23> &"}
!98 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !38, metadata !6}
!99 = metadata !{null, metadata !22, metadata !2, metadata !100, metadata !4, metadata !27, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<33, 25, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!101 = metadata !{null, metadata !22, metadata !2, metadata !102, metadata !4, metadata !50, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 24, false, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!103 = metadata !{null, metadata !22, metadata !2, metadata !102, metadata !4, metadata !27, metadata !6}
!104 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !105, metadata !6}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"v"}
!106 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !107, metadata !6}
!107 = metadata !{metadata !"kernel_arg_name", metadata !"b"}
!108 = metadata !{null, metadata !22, metadata !2, metadata !26, metadata !4, metadata !109, metadata !6}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"i_op"}
!110 = metadata !{null, metadata !22, metadata !2, metadata !111, metadata !4, metadata !27, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_fixed_base<32, 32, true, (enum ap_q_mode)5, (enum ap_o_mode)3, 0> &"}
!112 = metadata !{metadata !113, [1 x i32]* @llvm_global_ctors_0}
!113 = metadata !{metadata !114}
!114 = metadata !{i32 0, i32 31, metadata !115}
!115 = metadata !{metadata !116}
!116 = metadata !{metadata !"llvm.global_ctors.0", metadata !117, metadata !"", i32 0, i32 31}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 0, i32 1}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 31, metadata !121}
!121 = metadata !{metadata !122}
!122 = metadata !{metadata !"array", metadata !123, metadata !"int", i32 0, i32 31}
!123 = metadata !{metadata !124, metadata !125}
!124 = metadata !{i32 2, i32 2, i32 2}
!125 = metadata !{i32 0, i32 2, i32 1}
!126 = metadata !{metadata !127}
!127 = metadata !{i32 0, i32 31, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"array", metadata !130, metadata !"int", i32 0, i32 31}
!130 = metadata !{metadata !131, metadata !125}
!131 = metadata !{i32 1, i32 1, i32 2}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 31, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"array", metadata !136, metadata !"int", i32 0, i32 31}
!136 = metadata !{metadata !137, metadata !125}
!137 = metadata !{i32 0, i32 0, i32 2}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 31, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"return", metadata !142, metadata !"int", i32 0, i32 31}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 1, i32 0}
