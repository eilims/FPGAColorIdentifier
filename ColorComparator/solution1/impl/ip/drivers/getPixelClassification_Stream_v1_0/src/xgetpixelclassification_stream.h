// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XGETPIXELCLASSIFICATION_STREAM_H
#define XGETPIXELCLASSIFICATION_STREAM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xgetpixelclassification_stream_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XGetpixelclassification_stream_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XGetpixelclassification_stream;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XGetpixelclassification_stream_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XGetpixelclassification_stream_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XGetpixelclassification_stream_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XGetpixelclassification_stream_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XGetpixelclassification_stream_Initialize(XGetpixelclassification_stream *InstancePtr, u16 DeviceId);
XGetpixelclassification_stream_Config* XGetpixelclassification_stream_LookupConfig(u16 DeviceId);
int XGetpixelclassification_stream_CfgInitialize(XGetpixelclassification_stream *InstancePtr, XGetpixelclassification_stream_Config *ConfigPtr);
#else
int XGetpixelclassification_stream_Initialize(XGetpixelclassification_stream *InstancePtr, const char* InstanceName);
int XGetpixelclassification_stream_Release(XGetpixelclassification_stream *InstancePtr);
#endif

void XGetpixelclassification_stream_Start(XGetpixelclassification_stream *InstancePtr);
u32 XGetpixelclassification_stream_IsDone(XGetpixelclassification_stream *InstancePtr);
u32 XGetpixelclassification_stream_IsIdle(XGetpixelclassification_stream *InstancePtr);
u32 XGetpixelclassification_stream_IsReady(XGetpixelclassification_stream *InstancePtr);
void XGetpixelclassification_stream_EnableAutoRestart(XGetpixelclassification_stream *InstancePtr);
void XGetpixelclassification_stream_DisableAutoRestart(XGetpixelclassification_stream *InstancePtr);


void XGetpixelclassification_stream_InterruptGlobalEnable(XGetpixelclassification_stream *InstancePtr);
void XGetpixelclassification_stream_InterruptGlobalDisable(XGetpixelclassification_stream *InstancePtr);
void XGetpixelclassification_stream_InterruptEnable(XGetpixelclassification_stream *InstancePtr, u32 Mask);
void XGetpixelclassification_stream_InterruptDisable(XGetpixelclassification_stream *InstancePtr, u32 Mask);
void XGetpixelclassification_stream_InterruptClear(XGetpixelclassification_stream *InstancePtr, u32 Mask);
u32 XGetpixelclassification_stream_InterruptGetEnabled(XGetpixelclassification_stream *InstancePtr);
u32 XGetpixelclassification_stream_InterruptGetStatus(XGetpixelclassification_stream *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif