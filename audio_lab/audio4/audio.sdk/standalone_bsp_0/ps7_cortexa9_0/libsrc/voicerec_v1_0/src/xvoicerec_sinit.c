// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.4
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xvoicerec.h"

extern XVoicerec_Config XVoicerec_ConfigTable[];

XVoicerec_Config *XVoicerec_LookupConfig(u16 DeviceId) {
	XVoicerec_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVOICEREC_NUM_INSTANCES; Index++) {
		if (XVoicerec_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVoicerec_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVoicerec_Initialize(XVoicerec *InstancePtr, u16 DeviceId) {
	XVoicerec_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVoicerec_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVoicerec_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif
