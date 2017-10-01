/******************************************************************************
*
* Copyright (C) 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

#include "xpfw_default.h"
#include "xpfw_util.h"
#include "xpfw_resets.h"
#include "xpfw_platform.h"
#include "xpfw_aib.h"



/**
 * Delays or Wait times for HW related actions
 */
#define XPFW_TO_AIB_PS_PL	(0xFU)
#define XPFW_RST_PROP_DELAY (0xFU)
#define XPFW_AIB_ISO_DELAY	(0xFU)

/**
 * Macros used for convenience
 * Only in this file
 */

#define AIB_CNTRL_MASK	(PMU_GLOBAL_AIB_CNTRL_LPD_AFI_FM_MASK |\
			PMU_GLOBAL_AIB_CNTRL_LPD_AFI_FS_MASK |\
			PMU_GLOBAL_AIB_CNTRL_FPD_AFI_FM_MASK |\
			PMU_GLOBAL_AIB_CNTRL_FPD_AFI_FS_MASK)

#define AIB_STATUS_MASK	(PMU_GLOBAL_AIB_STATUS_LPD_AFI_FM_MASK |\
			PMU_GLOBAL_AIB_STATUS_LPD_AFI_FS_MASK |\
			PMU_GLOBAL_AIB_STATUS_FPD_AFI_FM_MASK |\
			PMU_GLOBAL_AIB_STATUS_FPD_AFI_FS_MASK)

#define RPU_AIB_MASTER_MASK	(LPD_SLCR_ISO_AIBAXI_ACK_RPUM0_MASK |\
			LPD_SLCR_ISO_AIBAXI_ACK_RPUM1_MASK )
#define RPU_AIB_SLAVE_MASK	(LPD_SLCR_ISO_AIBAXI_ACK_RPUS0_MASK |\
			LPD_SLCR_ISO_AIBAXI_ACK_RPUS1_MASK )


void XPfw_ResetPsOnly(void)
{
	XStatus l_Status;

	/**
	 *TODO: Set PMU Error to indicate to PL
	 *
	 */

	fw_printf("Isolating Interfaces.....");
	/*
	 * Block FPD=>PL and LPD=>PL interfaces with the help of AIB (in PS)
	 */

	/**
	 * AIB CNTRL register has only these four interface bits
	 * And we will be asserting all of them
	 * So there is no need to do RMW
	 */

	Xil_Out32(PMU_GLOBAL_AIB_CNTRL,AIB_CNTRL_MASK);


	/**
	 * Wait till we get the AIB ack or Timeout
	 */
	l_Status = XPfw_UtilPollForMask(PMU_GLOBAL_AIB_STATUS,
			AIB_STATUS_MASK,XPFW_TO_AIB_PS_PL);

	/*
	 * Due to a bug in AIB, there is a possibilty of glitch on the AIB ACK
	 * signal to PMU. So reconfirm the ACK.
	 */
	if(l_Status == XST_SUCCESS){
		l_Status = XPfw_UtilPollForMask(PMU_GLOBAL_AIB_STATUS,
			AIB_STATUS_MASK,XPFW_TO_AIB_PS_PL);
	}

	if(l_Status == XST_SUCCESS){
		fw_printf("Done\r\n");
	}
	else
	{
		fw_printf("Time Out\r\n");
	}

	/**
	 * Check if we are running Silicon version 1.0. If so,
	 * bypass the RPLL before initiating the reset. This is
	 * due to a bug in 1.0 Silicon wherein the PS hangs on a
	 * reset if the RPLL is in use.
	 */
	if (XPfw_PlatformGetPsVersion() == XPFW_PLATFORM_PS_V1) {
		XPfw_UtilRMW(CRL_APB_RPLL_CTRL, CRL_APB_RPLL_CTRL_BYPASS_MASK,
			     CRL_APB_RPLL_CTRL_BYPASS_MASK);
	}

	/* Block the propagation of the PROG signal to the PL */
	XPfw_UtilRMW(PMU_GLOBAL_PS_CNTRL, PMU_GLOBAL_PS_CNTRL_PROG_ENABLE_MASK,
		     ~PMU_GLOBAL_PS_CNTRL_PROG_ENABLE_MASK);

	XPfw_UtilRMW(PMU_GLOBAL_PS_CNTRL, PMU_GLOBAL_PS_CNTRL_PROG_GATE_MASK,
		     PMU_GLOBAL_PS_CNTRL_PROG_GATE_MASK);

	/**
	 *  Initiate PS-only reset by writing to PMU-local register
	 */
	fw_printf("Asserting Reset\r\n");
	XPfw_UtilRMW(PMU_GLOBAL_GLOBAL_RESET,
			PMU_GLOBAL_GLOBAL_RESET_PS_ONLY_RST_MASK,
			PMU_GLOBAL_GLOBAL_RESET_PS_ONLY_RST_MASK);
	/**
	 * Done
	 */

}



XStatus XPfw_ResetFpd(void)
{
	/* Enable FPD=>LPD Isolations */
	XPfw_AibEnable(XPFW_AIB_FPD_TO_LPD_NON_OCM);
	XPfw_AibEnable(XPFW_AIB_FPD_TO_LPD_OCM);
	XPfw_AibEnable(XPFW_AIB_FPD_TO_AFI_FS0);
	XPfw_AibEnable(XPFW_AIB_FPD_TO_AFI_FS1);
	XPfw_AibEnable(XPFW_AIB_FPD_TO_GPU);

	/* Enable LPD=>FPD Isolations */
	XPfw_AibEnable(XPFW_AIB_LPD_TO_DDR);
	XPfw_AibEnable(XPFW_AIB_LPD_TO_FPD);

	/*
	 * Suggested flow is to check the status with a timeout and proceed.
	 * Since there is no specific action required even in cases where the
	 * status check fails, we just wait for a pre-defined time and proceed
	 */
	XPfw_UtilWait(XPFW_AIB_ISO_DELAY);

	/* Initiate FPD reset by writing to PMU-local register */
	XPfw_UtilRMW(PMU_GLOBAL_GLOBAL_RESET,
			PMU_GLOBAL_GLOBAL_RESET_FPD_RST_MASK,
			PMU_GLOBAL_GLOBAL_RESET_FPD_RST_MASK);

	/* Hold in Reset and wait till it propagates */
	XPfw_UtilWait(XPFW_RST_PROP_DELAY);

	/* Disable FPD=>LPD Isolations */
	XPfw_AibDisable(XPFW_AIB_FPD_TO_LPD_NON_OCM);
	XPfw_AibDisable(XPFW_AIB_FPD_TO_LPD_OCM);
	XPfw_AibDisable(XPFW_AIB_FPD_TO_AFI_FS0);
	XPfw_AibDisable(XPFW_AIB_FPD_TO_AFI_FS1);
	XPfw_AibDisable(XPFW_AIB_FPD_TO_GPU);

	/* Release from Reset and wait till it propagates */
	XPfw_UtilRMW(PMU_GLOBAL_GLOBAL_RESET,
				PMU_GLOBAL_GLOBAL_RESET_FPD_RST_MASK,
				0);
	XPfw_UtilWait(XPFW_RST_PROP_DELAY);

	/* Disable LPD=>FPD Isolations */
	XPfw_AibDisable(XPFW_AIB_LPD_TO_DDR);
	XPfw_AibDisable(XPFW_AIB_LPD_TO_FPD);

	return XST_SUCCESS;

}


XStatus XPfw_ResetRpu(void)
{

	XStatus l_Status;

	/**
	 * Reference: ZynqMP Arch Spec 2.02
	 *
	 */

	/**
	 * - Block R5 Master Interfaces using AIB
	 */
	XPfw_UtilRMW(LPD_SLCR_ISO_AIBAXI_REQ, RPU_AIB_MASTER_MASK,
			RPU_AIB_MASTER_MASK);

	/**
	 * - Wait for AIB ack, TimeOut If not received
	 */
	fw_printf("Waiting for AIB Ack (M).....");
	l_Status = XPfw_UtilPollForMask(LPD_SLCR_ISO_AIBAXI_ACK,
					RPU_AIB_MASTER_MASK,
					XPFW_TO_AIB_PS_PL);

	if (l_Status == XST_SUCCESS) {
		fw_printf("Done\r\n");
	} else {
		fw_printf("Time Out\r\n");
	}

	/**
	 * - Block R5 Slave Interfaces using AIB
	 *
	 */
	XPfw_UtilRMW(LPD_SLCR_ISO_AIBAXI_REQ,
			RPU_AIB_SLAVE_MASK, RPU_AIB_SLAVE_MASK);
	/**
	 * - Wait for AIB ack, Timeout if not received
	 */
	fw_printf("Waiting for AIB Ack (S).....");
	l_Status = XPfw_UtilPollForMask(LPD_SLCR_ISO_AIBAXI_ACK, RPU_AIB_SLAVE_MASK,
					XPFW_TO_AIB_PS_PL);
	if (l_Status == XST_SUCCESS) {
		fw_printf("Done\r\n");
	} else {
		fw_printf("Time Out\r\n");
	}

	/**
	 * Unblock Master Interfaces
	 */
	XPfw_UtilRMW(LPD_SLCR_ISO_AIBAXI_REQ,
				RPU_AIB_MASTER_MASK, 0U);

	/**
	 *  Initiate R5 LockStep reset by writing to PMU-local register
	 */
	XPfw_UtilRMW(PMU_GLOBAL_GLOBAL_RESET,
			PMU_GLOBAL_GLOBAL_RESET_RPU_LS_RST_MASK,
			PMU_GLOBAL_GLOBAL_RESET_RPU_LS_RST_MASK);
	/**
	 * FIXME: Update with correct delay here
	 */
	XPfw_UtilWait(XPFW_RST_PROP_DELAY);

	fw_printf("Releasing RPU out of Reset\r\n");

	/**
	 * Release from Reset and wait till it propagates
	 */
	XPfw_UtilRMW(PMU_GLOBAL_GLOBAL_RESET,
			PMU_GLOBAL_GLOBAL_RESET_RPU_LS_RST_MASK, 0U);
	XPfw_UtilWait(XPFW_RST_PROP_DELAY);

	/**
	 * Unblock SLave Interfaces
	 */
	XPfw_UtilRMW(LPD_SLCR_ISO_AIBAXI_REQ,
			RPU_AIB_SLAVE_MASK, 0U);
	return XST_SUCCESS;
}
