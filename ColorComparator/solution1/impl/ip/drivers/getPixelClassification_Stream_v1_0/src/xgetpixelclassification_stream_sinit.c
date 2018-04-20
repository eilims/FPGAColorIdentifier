// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4.1
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xgetpixelclassification_stream.h"

extern XGetpixelclassification_stream_Config XGetpixelclassification_stream_ConfigTable[];

XGetpixelclassification_stream_Config *XGetpixelclassification_stream_LookupConfig(u16 DeviceId) {
	XGetpixelclassification_stream_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XGETPIXELCLASSIFICATION_STREAM_NUM_INSTANCES; Index++) {
		if (XGetpixelclassification_stream_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XGetpixelclassification_stream_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XGetpixelclassification_stream_Initialize(XGetpixelclassification_stream *InstancePtr, u16 DeviceId) {
	XGetpixelclassification_stream_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XGetpixelclassification_stream_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XGetpixelclassification_stream_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

