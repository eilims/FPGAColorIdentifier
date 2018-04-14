; ModuleID = 'D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp = type {}

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [9 x i8] c"Row_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [9 x i8] c"Col_Vert\00", align 1 ; [#uses=1 type=[9 x i8]*]
@_ZL24_vertical_sobel_operator = internal constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 0, i32 -1], [3 x i32] [i32 2, i32 0, i32 -2], [3 x i32] [i32 1, i32 0, i32 -1]], align 16 ; [#uses=2 type=[3 x [3 x i32]]*]
@.str3 = private unnamed_addr constant [10 x i8] c"Row_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"Col_Horiz\00", align 1 ; [#uses=1 type=[10 x i8]*]
@_ZL26_horizontal_sobel_operator = internal constant [3 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 1], [3 x i32] zeroinitializer, [3 x i32] [i32 -1, i32 -2, i32 -1]], align 16 ; [#uses=2 type=[3 x [3 x i32]]*]
@_ZL21ssdm_global_array_ins = internal global %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp zeroinitializer, align 1 ; [#uses=1 type=%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*]
@llvm.global_ctors = appending global [1 x { i32, void ()* }] [{ i32, void ()* } { i32 65535, void ()* @_GLOBAL__I_a }] ; [#uses=0 type=[1 x { i32, void ()* }]*]

; [#uses=1]
define internal i32 @_Z17getVerticalResultPA3_i([3 x i32]* %array) nounwind uwtable {
  %1 = alloca [3 x i32]*, align 8                 ; [#uses=3 type=[3 x i32]**]
  %summation = alloca i32, align 4                ; [#uses=4 type=i32*]
  %row = alloca i32, align 4                      ; [#uses=6 type=i32*]
  %col = alloca i32, align 4                      ; [#uses=6 type=i32*]
  store [3 x i32]* %array, [3 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i32]** %1}, metadata !59), !dbg !60 ; [debug line = 20:27] [debug variable = array]
  %2 = load [3 x i32]** %1, align 8, !dbg !61     ; [#uses=1 type=[3 x i32]*] [debug line = 20:41]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %2, i32 3) nounwind, !dbg !61 ; [debug line = 20:41]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 21:1]
  call void @llvm.dbg.declare(metadata !{i32* %summation}, metadata !64), !dbg !65 ; [debug line = 21:6] [debug variable = summation]
  store i32 0, i32* %summation, align 4, !dbg !66 ; [debug line = 21:19]
  br label %3, !dbg !66                           ; [debug line = 21:19]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !67), !dbg !69 ; [debug line = 22:21] [debug variable = row]
  store i32 0, i32* %row, align 4, !dbg !70       ; [debug line = 22:28]
  br label %4, !dbg !70                           ; [debug line = 22:28]

; <label>:4                                       ; preds = %35, %3
  %5 = load i32* %row, align 4, !dbg !70          ; [#uses=1 type=i32] [debug line = 22:28]
  %6 = icmp slt i32 %5, 3, !dbg !70               ; [#uses=1 type=i1] [debug line = 22:28]
  br i1 %6, label %7, label %38, !dbg !70         ; [debug line = 22:28]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 22:47]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !71 ; [debug line = 22:47]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 23:1]
  br label %8, !dbg !73                           ; [debug line = 23:1]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !74), !dbg !76 ; [debug line = 23:22] [debug variable = col]
  store i32 0, i32* %col, align 4, !dbg !77       ; [debug line = 23:29]
  br label %9, !dbg !77                           ; [debug line = 23:29]

; <label>:9                                       ; preds = %31, %8
  %10 = load i32* %col, align 4, !dbg !77         ; [#uses=1 type=i32] [debug line = 23:29]
  %11 = icmp slt i32 %10, 3, !dbg !77             ; [#uses=1 type=i1] [debug line = 23:29]
  br i1 %11, label %12, label %34, !dbg !77       ; [debug line = 23:29]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 23:48]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 23:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 24:1]
  %13 = load i32* %col, align 4, !dbg !81         ; [#uses=1 type=i32] [debug line = 24:4]
  %14 = sext i32 %13 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 24:4]
  %15 = load i32* %row, align 4, !dbg !81         ; [#uses=1 type=i32] [debug line = 24:4]
  %16 = sext i32 %15 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 24:4]
  %17 = load [3 x i32]** %1, align 8, !dbg !81    ; [#uses=1 type=[3 x i32]*] [debug line = 24:4]
  %18 = getelementptr inbounds [3 x i32]* %17, i64 %16, !dbg !81 ; [#uses=1 type=[3 x i32]*] [debug line = 24:4]
  %19 = getelementptr inbounds [3 x i32]* %18, i32 0, i64 %14, !dbg !81 ; [#uses=1 type=i32*] [debug line = 24:4]
  %20 = load i32* %19, align 4, !dbg !81          ; [#uses=1 type=i32] [debug line = 24:4]
  %21 = load i32* %col, align 4, !dbg !81         ; [#uses=1 type=i32] [debug line = 24:4]
  %22 = sext i32 %21 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 24:4]
  %23 = load i32* %row, align 4, !dbg !81         ; [#uses=1 type=i32] [debug line = 24:4]
  %24 = sext i32 %23 to i64, !dbg !81             ; [#uses=1 type=i64] [debug line = 24:4]
  %25 = getelementptr inbounds [3 x [3 x i32]]* @_ZL24_vertical_sobel_operator, i32 0, i64 %24, !dbg !81 ; [#uses=1 type=[3 x i32]*] [debug line = 24:4]
  %26 = getelementptr inbounds [3 x i32]* %25, i32 0, i64 %22, !dbg !81 ; [#uses=1 type=i32*] [debug line = 24:4]
  %27 = load i32* %26, align 4, !dbg !81          ; [#uses=1 type=i32] [debug line = 24:4]
  %28 = mul nsw i32 %20, %27, !dbg !81            ; [#uses=1 type=i32] [debug line = 24:4]
  %29 = load i32* %summation, align 4, !dbg !81   ; [#uses=1 type=i32] [debug line = 24:4]
  %30 = add nsw i32 %29, %28, !dbg !81            ; [#uses=1 type=i32] [debug line = 24:4]
  store i32 %30, i32* %summation, align 4, !dbg !81 ; [debug line = 24:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 25:3]
  br label %31, !dbg !82                          ; [debug line = 25:3]

; <label>:31                                      ; preds = %12
  %32 = load i32* %col, align 4, !dbg !83         ; [#uses=1 type=i32] [debug line = 23:40]
  %33 = add nsw i32 %32, 1, !dbg !83              ; [#uses=1 type=i32] [debug line = 23:40]
  store i32 %33, i32* %col, align 4, !dbg !83     ; [debug line = 23:40]
  br label %9, !dbg !83                           ; [debug line = 23:40]

; <label>:34                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([9 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 26:2]
  br label %35, !dbg !84                          ; [debug line = 26:2]

; <label>:35                                      ; preds = %34
  %36 = load i32* %row, align 4, !dbg !85         ; [#uses=1 type=i32] [debug line = 22:39]
  %37 = add nsw i32 %36, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 22:39]
  store i32 %37, i32* %row, align 4, !dbg !85     ; [debug line = 22:39]
  br label %4, !dbg !85                           ; [debug line = 22:39]

; <label>:38                                      ; preds = %4
  %39 = load i32* %summation, align 4, !dbg !86   ; [#uses=1 type=i32] [debug line = 27:2]
  ret i32 %39, !dbg !86                           ; [debug line = 27:2]
}

; [#uses=13]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=4]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=4]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=1]
define internal i32 @_Z19getHorizontalResultPA3_i([3 x i32]* %array) nounwind uwtable {
  %1 = alloca [3 x i32]*, align 8                 ; [#uses=3 type=[3 x i32]**]
  %summation = alloca i32, align 4                ; [#uses=4 type=i32*]
  %row = alloca i32, align 4                      ; [#uses=6 type=i32*]
  %col = alloca i32, align 4                      ; [#uses=6 type=i32*]
  store [3 x i32]* %array, [3 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i32]** %1}, metadata !87), !dbg !88 ; [debug line = 32:29] [debug variable = array]
  %2 = load [3 x i32]** %1, align 8, !dbg !89     ; [#uses=1 type=[3 x i32]*] [debug line = 32:43]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %2, i32 3) nounwind, !dbg !89 ; [debug line = 32:43]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !91 ; [debug line = 33:1]
  call void @llvm.dbg.declare(metadata !{i32* %summation}, metadata !92), !dbg !93 ; [debug line = 33:6] [debug variable = summation]
  store i32 0, i32* %summation, align 4, !dbg !94 ; [debug line = 33:19]
  br label %3, !dbg !94                           ; [debug line = 33:19]

; <label>:3                                       ; preds = %0
  call void @llvm.dbg.declare(metadata !{i32* %row}, metadata !95), !dbg !97 ; [debug line = 34:22] [debug variable = row]
  store i32 0, i32* %row, align 4, !dbg !98       ; [debug line = 34:29]
  br label %4, !dbg !98                           ; [debug line = 34:29]

; <label>:4                                       ; preds = %35, %3
  %5 = load i32* %row, align 4, !dbg !98          ; [#uses=1 type=i32] [debug line = 34:29]
  %6 = icmp slt i32 %5, 3, !dbg !98               ; [#uses=1 type=i1] [debug line = 34:29]
  br i1 %6, label %7, label %38, !dbg !98         ; [debug line = 34:29]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 34:48]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !99 ; [debug line = 34:48]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !101 ; [debug line = 35:1]
  br label %8, !dbg !101                          ; [debug line = 35:1]

; <label>:8                                       ; preds = %7
  call void @llvm.dbg.declare(metadata !{i32* %col}, metadata !102), !dbg !104 ; [debug line = 35:23] [debug variable = col]
  store i32 0, i32* %col, align 4, !dbg !105      ; [debug line = 35:30]
  br label %9, !dbg !105                          ; [debug line = 35:30]

; <label>:9                                       ; preds = %31, %8
  %10 = load i32* %col, align 4, !dbg !105        ; [#uses=1 type=i32] [debug line = 35:30]
  %11 = icmp slt i32 %10, 3, !dbg !105            ; [#uses=1 type=i1] [debug line = 35:30]
  br i1 %11, label %12, label %34, !dbg !105      ; [debug line = 35:30]

; <label>:12                                      ; preds = %9
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !106 ; [debug line = 35:49]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !106 ; [debug line = 35:49]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !108 ; [debug line = 36:1]
  %13 = load i32* %col, align 4, !dbg !109        ; [#uses=1 type=i32] [debug line = 36:4]
  %14 = sext i32 %13 to i64, !dbg !109            ; [#uses=1 type=i64] [debug line = 36:4]
  %15 = load i32* %row, align 4, !dbg !109        ; [#uses=1 type=i32] [debug line = 36:4]
  %16 = sext i32 %15 to i64, !dbg !109            ; [#uses=1 type=i64] [debug line = 36:4]
  %17 = load [3 x i32]** %1, align 8, !dbg !109   ; [#uses=1 type=[3 x i32]*] [debug line = 36:4]
  %18 = getelementptr inbounds [3 x i32]* %17, i64 %16, !dbg !109 ; [#uses=1 type=[3 x i32]*] [debug line = 36:4]
  %19 = getelementptr inbounds [3 x i32]* %18, i32 0, i64 %14, !dbg !109 ; [#uses=1 type=i32*] [debug line = 36:4]
  %20 = load i32* %19, align 4, !dbg !109         ; [#uses=1 type=i32] [debug line = 36:4]
  %21 = load i32* %col, align 4, !dbg !109        ; [#uses=1 type=i32] [debug line = 36:4]
  %22 = sext i32 %21 to i64, !dbg !109            ; [#uses=1 type=i64] [debug line = 36:4]
  %23 = load i32* %row, align 4, !dbg !109        ; [#uses=1 type=i32] [debug line = 36:4]
  %24 = sext i32 %23 to i64, !dbg !109            ; [#uses=1 type=i64] [debug line = 36:4]
  %25 = getelementptr inbounds [3 x [3 x i32]]* @_ZL26_horizontal_sobel_operator, i32 0, i64 %24, !dbg !109 ; [#uses=1 type=[3 x i32]*] [debug line = 36:4]
  %26 = getelementptr inbounds [3 x i32]* %25, i32 0, i64 %22, !dbg !109 ; [#uses=1 type=i32*] [debug line = 36:4]
  %27 = load i32* %26, align 4, !dbg !109         ; [#uses=1 type=i32] [debug line = 36:4]
  %28 = mul nsw i32 %20, %27, !dbg !109           ; [#uses=1 type=i32] [debug line = 36:4]
  %29 = load i32* %summation, align 4, !dbg !109  ; [#uses=1 type=i32] [debug line = 36:4]
  %30 = add nsw i32 %29, %28, !dbg !109           ; [#uses=1 type=i32] [debug line = 36:4]
  store i32 %30, i32* %summation, align 4, !dbg !109 ; [debug line = 36:4]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !110 ; [debug line = 37:3]
  br label %31, !dbg !110                         ; [debug line = 37:3]

; <label>:31                                      ; preds = %12
  %32 = load i32* %col, align 4, !dbg !111        ; [#uses=1 type=i32] [debug line = 35:41]
  %33 = add nsw i32 %32, 1, !dbg !111             ; [#uses=1 type=i32] [debug line = 35:41]
  store i32 %33, i32* %col, align 4, !dbg !111    ; [debug line = 35:41]
  br label %9, !dbg !111                          ; [debug line = 35:41]

; <label>:34                                      ; preds = %9
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !112 ; [debug line = 38:2]
  br label %35, !dbg !112                         ; [debug line = 38:2]

; <label>:35                                      ; preds = %34
  %36 = load i32* %row, align 4, !dbg !113        ; [#uses=1 type=i32] [debug line = 34:40]
  %37 = add nsw i32 %36, 1, !dbg !113             ; [#uses=1 type=i32] [debug line = 34:40]
  store i32 %37, i32* %row, align 4, !dbg !113    ; [debug line = 34:40]
  br label %4, !dbg !113                          ; [debug line = 34:40]

; <label>:38                                      ; preds = %4
  %39 = load i32* %summation, align 4, !dbg !114  ; [#uses=1 type=i32] [debug line = 39:2]
  ret i32 %39, !dbg !114                          ; [debug line = 39:2]
}

; [#uses=1]
define internal i32 @_Z22combineOperatorResultsii(i32 %verticalResult, i32 %horizontalResult) nounwind uwtable {
  %1 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  %2 = alloca i32, align 4                        ; [#uses=2 type=i32*]
  store i32 %verticalResult, i32* %1, align 4
  call void @llvm.dbg.declare(metadata !{i32* %1}, metadata !115), !dbg !116 ; [debug line = 45:32] [debug variable = verticalResult]
  store i32 %horizontalResult, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !117), !dbg !118 ; [debug line = 45:52] [debug variable = horizontalResult]
  %3 = load i32* %1, align 4, !dbg !119           ; [#uses=1 type=i32] [debug line = 46:2]
  %4 = load i32* %2, align 4, !dbg !119           ; [#uses=1 type=i32] [debug line = 46:2]
  %5 = add nsw i32 %3, %4, !dbg !119              ; [#uses=1 type=i32] [debug line = 46:2]
  ret i32 %5, !dbg !119                           ; [debug line = 46:2]
}

; [#uses=0]
define i32 @_Z20getConvolutionResultPA3_i([3 x i32]* %array) nounwind uwtable {
  %1 = alloca [3 x i32]*, align 8                 ; [#uses=4 type=[3 x i32]**]
  store [3 x i32]* %array, [3 x i32]** %1, align 8
  call void @llvm.dbg.declare(metadata !{[3 x i32]** %1}, metadata !121), !dbg !122 ; [debug line = 51:30] [debug variable = array]
  %2 = load [3 x i32]** %1, align 8, !dbg !123    ; [#uses=1 type=[3 x i32]*] [debug line = 51:43]
  call void (...)* @_ssdm_SpecArrayDimSize([3 x i32]* %2, i32 3) nounwind, !dbg !123 ; [debug line = 51:43]
  %3 = load [3 x i32]** %1, align 8, !dbg !125    ; [#uses=1 type=[3 x i32]*] [debug line = 52:32]
  %4 = call i32 @_Z17getVerticalResultPA3_i([3 x i32]* %3), !dbg !125 ; [#uses=1 type=i32] [debug line = 52:32]
  %5 = load [3 x i32]** %1, align 8, !dbg !126    ; [#uses=1 type=[3 x i32]*] [debug line = 52:58]
  %6 = call i32 @_Z19getHorizontalResultPA3_i([3 x i32]* %5), !dbg !126 ; [#uses=1 type=i32] [debug line = 52:58]
  %7 = call i32 @_Z22combineOperatorResultsii(i32 %4, i32 %6), !dbg !126 ; [#uses=1 type=i32] [debug line = 52:58]
  ret i32 %7, !dbg !126                           ; [debug line = 52:58]
}

; [#uses=1]
define internal void @__cxx_global_var_init() nounwind {
  call void @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev(%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* @_ZL21ssdm_global_array_ins)
  ret void
}

; [#uses=1]
define internal void @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev(%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*, align 8 ; [#uses=2 type=%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp**]
  store %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* %this, %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1}, metadata !127), !dbg !129 ; [debug line = 57:42] [debug variable = this]
  %2 = load %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1 ; [#uses=1 type=%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*]
  call void @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev(%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* %2), !dbg !130 ; [debug line = 60:3]
  ret void, !dbg !130                             ; [debug line = 60:3]
}

; [#uses=1]
define internal void @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev(%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* %this) unnamed_addr nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*, align 8 ; [#uses=2 type=%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp**]
  store %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* %this, %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1, align 8
  call void @llvm.dbg.declare(metadata !{%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1}, metadata !131), !dbg !132 ; [debug line = 57:42] [debug variable = this]
  %2 = load %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp** %1 ; [#uses=0 type=%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*]
  call void (...)* @_ssdm_SpecConstant([3 x i32]* getelementptr inbounds ([3 x [3 x i32]]* @_ZL26_horizontal_sobel_operator, i32 0, i32 0)) nounwind, !dbg !133 ; [debug line = 58:4]
  call void (...)* @_ssdm_SpecConstant([3 x i32]* getelementptr inbounds ([3 x [3 x i32]]* @_ZL24_vertical_sobel_operator, i32 0, i32 0)) nounwind, !dbg !135 ; [debug line = 59:4]
  ret void, !dbg !136                             ; [debug line = 60:3]
}

; [#uses=2]
declare void @_ssdm_SpecConstant(...) nounwind

; [#uses=1]
define internal void @_GLOBAL__I_a() nounwind {
  call void @__cxx_global_var_init()
  ret void
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!37, !44, !45, !51, !52, !58}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"D:/Repositories/FPGAColorIdentifier/SobelMatrixMultiplier/solution4/.autopilot/db/SobelMatrixMultiplier.pragma.2.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !29} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !16, metadata !17, metadata !20, metadata !21, metadata !28}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getVerticalResult", metadata !"getVerticalResult", metadata !"_Z17getVerticalResultPA3_i", metadata !6, i32 20, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @_Z17getVerticalResultPA3_i, null, null, metadata !14, i32 20} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"SobelMatrixMultiplier/SobelMatrixMultiplier.cpp", metadata !"D:\5CRepositories\5CFPGAColorIdentifier", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{metadata !9, metadata !10}
!9 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!10 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ]
!11 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !9, metadata !12, i32 0, i32 0} ; [ DW_TAG_array_type ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getHorizontalResult", metadata !"getHorizontalResult", metadata !"_Z19getHorizontalResultPA3_i", metadata !6, i32 32, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @_Z19getHorizontalResultPA3_i, null, null, metadata !14, i32 32} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786478, i32 0, metadata !6, metadata !"combineOperatorResults", metadata !"combineOperatorResults", metadata !"_Z22combineOperatorResultsii", metadata !6, i32 45, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @_Z22combineOperatorResultsii, null, null, metadata !14, i32 45} ; [ DW_TAG_subprogram ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !9, metadata !9, metadata !9}
!20 = metadata !{i32 786478, i32 0, metadata !6, metadata !"getConvolutionResult", metadata !"getConvolutionResult", metadata !"_Z20getConvolutionResultPA3_i", metadata !6, i32 51, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ([3 x i32]*)* @_Z20getConvolutionResultPA3_i, null, null, metadata !14, i32 51} ; [ DW_TAG_subprogram ]
!21 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev", metadata !6, i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*)* @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev, null, metadata !27, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !24}
!24 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786434, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !6, i32 55, i64 8, i64 8, i32 0, i32 0, null, metadata !26, i32 0, null, null} ; [ DW_TAG_class_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786478, i32 0, metadata !25, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"", metadata !6, i32 57, metadata !22, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786478, i32 0, null, metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp", metadata !"_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev", metadata !6, i32 57, metadata !22, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*)* @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev, null, metadata !27, metadata !14, i32 57} ; [ DW_TAG_subprogram ]
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !31, metadata !32, metadata !36}
!31 = metadata !{i32 786484, i32 0, null, metadata !"ssdm_global_array_ins", metadata !"ssdm_global_array_ins", metadata !"_ZL21ssdm_global_array_ins", metadata !6, i32 62, metadata !25, i32 1, i32 1, %class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp* @_ZL21ssdm_global_array_ins} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786484, i32 0, null, metadata !"_horizontal_sobel_operator", metadata !"_horizontal_sobel_operator", metadata !"_ZL26_horizontal_sobel_operator", metadata !6, i32 4, metadata !33, i32 1, i32 1, [3 x [3 x i32]]* @_ZL26_horizontal_sobel_operator} ; [ DW_TAG_variable ]
!33 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !34, metadata !35, i32 0, i32 0} ; [ DW_TAG_array_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!35 = metadata !{metadata !13, metadata !13}
!36 = metadata !{i32 786484, i32 0, null, metadata !"_vertical_sobel_operator", metadata !"_vertical_sobel_operator", metadata !"_ZL24_vertical_sobel_operator", metadata !6, i32 11, metadata !33, i32 1, i32 1, [3 x [3 x i32]]* @_ZL24_vertical_sobel_operator} ; [ DW_TAG_variable ]
!37 = metadata !{i32 ([3 x i32]*)* @_Z17getVerticalResultPA3_i, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!38 = metadata !{metadata !"kernel_arg_addr_space", i32 1}
!39 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"int [3]*"}
!41 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"array"}
!43 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!44 = metadata !{i32 ([3 x i32]*)* @_Z19getHorizontalResultPA3_i, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!45 = metadata !{i32 (i32, i32)* @_Z22combineOperatorResultsii, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !43}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"verticalResult", metadata !"horizontalResult"}
!51 = metadata !{i32 ([3 x i32]*)* @_Z20getConvolutionResultPA3_i, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43}
!52 = metadata !{void (%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*)* @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC1Ev, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !43}
!53 = metadata !{metadata !"kernel_arg_addr_space"}
!54 = metadata !{metadata !"kernel_arg_access_qual"}
!55 = metadata !{metadata !"kernel_arg_type"}
!56 = metadata !{metadata !"kernel_arg_type_qual"}
!57 = metadata !{metadata !"kernel_arg_name"}
!58 = metadata !{void (%class.ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecpp*)* @_ZN54ssdm_global_array_SobelMatrixMultiplierpp0cppaplinecppC2Ev, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !43}
!59 = metadata !{i32 786689, metadata !5, metadata !"array", metadata !6, i32 16777236, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 20, i32 27, metadata !5, null}
!61 = metadata !{i32 20, i32 41, metadata !62, null}
!62 = metadata !{i32 786443, metadata !5, i32 20, i32 40, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 21, i32 1, metadata !62, null}
!64 = metadata !{i32 786688, metadata !62, metadata !"summation", metadata !6, i32 21, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 21, i32 6, metadata !62, null}
!66 = metadata !{i32 21, i32 19, metadata !62, null}
!67 = metadata !{i32 786688, metadata !68, metadata !"row", metadata !6, i32 22, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!68 = metadata !{i32 786443, metadata !62, i32 22, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!69 = metadata !{i32 22, i32 21, metadata !68, null}
!70 = metadata !{i32 22, i32 28, metadata !68, null}
!71 = metadata !{i32 22, i32 47, metadata !72, null}
!72 = metadata !{i32 786443, metadata !68, i32 22, i32 46, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 23, i32 1, metadata !72, null}
!74 = metadata !{i32 786688, metadata !75, metadata !"col", metadata !6, i32 23, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!75 = metadata !{i32 786443, metadata !72, i32 23, i32 13, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 23, i32 22, metadata !75, null}
!77 = metadata !{i32 23, i32 29, metadata !75, null}
!78 = metadata !{i32 23, i32 48, metadata !79, null}
!79 = metadata !{i32 786443, metadata !75, i32 23, i32 47, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!80 = metadata !{i32 24, i32 1, metadata !79, null}
!81 = metadata !{i32 24, i32 4, metadata !79, null}
!82 = metadata !{i32 25, i32 3, metadata !79, null}
!83 = metadata !{i32 23, i32 40, metadata !75, null}
!84 = metadata !{i32 26, i32 2, metadata !72, null}
!85 = metadata !{i32 22, i32 39, metadata !68, null}
!86 = metadata !{i32 27, i32 2, metadata !62, null}
!87 = metadata !{i32 786689, metadata !16, metadata !"array", metadata !6, i32 16777248, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 32, i32 29, metadata !16, null}
!89 = metadata !{i32 32, i32 43, metadata !90, null}
!90 = metadata !{i32 786443, metadata !16, i32 32, i32 42, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 33, i32 1, metadata !90, null}
!92 = metadata !{i32 786688, metadata !90, metadata !"summation", metadata !6, i32 33, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 33, i32 6, metadata !90, null}
!94 = metadata !{i32 33, i32 19, metadata !90, null}
!95 = metadata !{i32 786688, metadata !96, metadata !"row", metadata !6, i32 34, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 786443, metadata !90, i32 34, i32 13, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 34, i32 22, metadata !96, null}
!98 = metadata !{i32 34, i32 29, metadata !96, null}
!99 = metadata !{i32 34, i32 48, metadata !100, null}
!100 = metadata !{i32 786443, metadata !96, i32 34, i32 47, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 35, i32 1, metadata !100, null}
!102 = metadata !{i32 786688, metadata !103, metadata !"col", metadata !6, i32 35, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 786443, metadata !100, i32 35, i32 14, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 35, i32 23, metadata !103, null}
!105 = metadata !{i32 35, i32 30, metadata !103, null}
!106 = metadata !{i32 35, i32 49, metadata !107, null}
!107 = metadata !{i32 786443, metadata !103, i32 35, i32 48, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!108 = metadata !{i32 36, i32 1, metadata !107, null}
!109 = metadata !{i32 36, i32 4, metadata !107, null}
!110 = metadata !{i32 37, i32 3, metadata !107, null}
!111 = metadata !{i32 35, i32 41, metadata !103, null}
!112 = metadata !{i32 38, i32 2, metadata !100, null}
!113 = metadata !{i32 34, i32 40, metadata !96, null}
!114 = metadata !{i32 39, i32 2, metadata !90, null}
!115 = metadata !{i32 786689, metadata !17, metadata !"verticalResult", metadata !6, i32 16777261, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 45, i32 32, metadata !17, null}
!117 = metadata !{i32 786689, metadata !17, metadata !"horizontalResult", metadata !6, i32 33554477, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 45, i32 52, metadata !17, null}
!119 = metadata !{i32 46, i32 2, metadata !120, null}
!120 = metadata !{i32 786443, metadata !17, i32 45, i32 70, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 786689, metadata !20, metadata !"array", metadata !6, i32 16777267, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 51, i32 30, metadata !20, null}
!123 = metadata !{i32 51, i32 43, metadata !124, null}
!124 = metadata !{i32 786443, metadata !20, i32 51, i32 42, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!125 = metadata !{i32 52, i32 32, metadata !124, null}
!126 = metadata !{i32 52, i32 58, metadata !124, null}
!127 = metadata !{i32 786689, metadata !21, metadata !"this", metadata !6, i32 16777273, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 57, i32 42, metadata !21, null}
!130 = metadata !{i32 60, i32 3, metadata !21, null}
!131 = metadata !{i32 786689, metadata !28, metadata !"this", metadata !6, i32 16777273, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 57, i32 42, metadata !28, null}
!133 = metadata !{i32 58, i32 4, metadata !134, null}
!134 = metadata !{i32 786443, metadata !28, i32 57, i32 99, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 59, i32 4, metadata !134, null}
!136 = metadata !{i32 60, i32 3, metadata !134, null}
