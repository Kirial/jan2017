/*
 * anal.c
 *
 *  Created on: 16/01/2017
 *      Author: taras
 */
#include "xparameters.h"
#include "xqspips.h"

#define QSPI_DEVICE_ID	XPAR_XQSPIPS_0_DEVICE_ID
static XQspiPs QspiInstance;

void set(){

	XQspiPs_Config *QspiConfig;

	/*
	 * Initialize the QSPI driver so that it's ready to use
	 */
	QspiConfig = XQspiPs_LookupConfig(QspiDeviceId);
	if (NULL == QspiConfig) {
		return XST_FAILURE;
	}

	Status = XQspiPs_CfgInitialize(QspiInstancePtr, QspiConfig,
					QspiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

}

