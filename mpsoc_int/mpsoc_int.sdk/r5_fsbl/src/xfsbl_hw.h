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

/*****************************************************************************/
/**
*
* @file xfsbl_hw.h
*
* This is the header file which contains definitions for the hardware
* registers.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date        Changes
* ----- ---- -------- -------------------------------------------------------
* 1.00  kc   10/21/13 Initial release
*
* </pre>
*
* @note
*
******************************************************************************/

#ifndef XFSBL_HW_H
#define XFSBL_HW_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_io.h"
#include "xparameters.h"
#include "xil_types.h"
#include "sleep.h"

#include "xfsbl_config.h"
#include "xfsbl_debug.h"
#include "xfsbl_error.h"
#include "xfsbl_hooks.h"
#include "xfsbl_misc.h"

/************************** Constant Definitions *****************************/

/* csu */

/**
 * CSU Base Address
 */
#define CSU_BASEADDR      0XFFCA0000U

/**
 * Register: CSU_CSU_SSS_CFG
 */
#define CSU_CSU_SSS_CFG    ( ( CSU_BASEADDR ) + 0X00000008U )
#define CSU_CSU_SSS_CFG_PCAP_SSS_MASK    0X0000000FU
#define CSU_CSU_SSS_CFG_PCAP_SSS_SHIFT   0U

/**
 * Register: CSU_PCAP_STATUS
 */
#define CSU_PCAP_STATUS    ( ( CSU_BASEADDR ) + 0X00003010U )
#define CSU_PCAP_STATUS_PL_INIT_SHIFT   2U
#define CSU_PCAP_STATUS_PL_INIT_MASK    0X00000004U
#define CSU_PCAP_STATUS_PCAP_WR_IDLE_MASK    0X00000001U
#define CSU_PCAP_STATUS_PL_DONE_MASK    0X00000008U

/**
 * Register: CSU_PCAP_RDWR
 */
#define CSU_PCAP_RDWR    ( ( CSU_BASEADDR ) + 0X00003004U )
#define CSU_PCAP_RDWR_PCAP_RDWR_B_SHIFT   0U

/* Register: CSU_PCAP_PROG */
#define CSU_PCAP_PROG    ( ( CSU_BASEADDR ) + 0X00003000U )
#define CSU_PCAP_PROG_PCFG_PROG_B_MASK    0X00000001U
#define CSU_PCAP_PROG_PCFG_PROG_B_SHIFT   0U

/**
 * Register: CSU_VERSION
 */
#define CSU_VERSION    ( ( CSU_BASEADDR ) + 0X00000044U )

#define CSU_VERSION_PLATFORM_MASK    0X0000F000U

/**
 * Register: CSU_CSU_MULTI_BOOT
 */
#define CSU_CSU_MULTI_BOOT    ( ( CSU_BASEADDR ) + 0X00000010U )

/**
 * Register: CSU_SHA_RESET
 */
#define CSU_SHA_RESET    ( ( CSU_BASEADDR ) + 0X00002004U )
#define CSU_SHA_RESET_RESET_MASK    0X00000001U

/**
 * Register: CSU_SHA_START
 */
#define CSU_SHA_START    ( ( CSU_BASEADDR ) + 0X00002000U )
#define CSU_SHA_START_START_MSG_MASK    0X00000001U

/**
 * Register: CSU_SHA_DONE
 */
#define CSU_SHA_DONE    ( ( CSU_BASEADDR ) + 0X00002008U )
#define CSU_SHA_DONE_SHA_DONE_MASK    0X00000001U

/**
 * Register: CSU_SHA_DIGEST_0
 */
#define CSU_SHA_DIGEST_0    ( ( CSU_BASEADDR ) + 0X00002010U )

/* Register: CSU_PCAP_RESET */
#define CSU_PCAP_RESET    ( ( CSU_BASEADDR ) + 0X0000300CU )
#define CSU_PCAP_RESET_RESET_MASK    0X00000001U

/* Register: CSU_PCAP_CTRL */
#define CSU_PCAP_CTRL    ( ( CSU_BASEADDR ) + 0X00003008U )
#define CSU_PCAP_CTRL_PCAP_PR_MASK    0X00000001U

/* Register: CSU_IDCODE */
#define CSU_IDCODE    ( ( CSU_BASEADDR ) + 0X00000040U )

#define CSU_IDCODE_SVD_SHIFT		12U
#define CSU_IDCODE_SVD_MASK		(0xEU << CSU_IDCODE_SVD_SHIFT)
#define CSU_IDCODE_DEVICE_CODE_SHIFT	15U
#define CSU_IDCODE_DEVICE_CODE_MASK	(0xFU << CSU_IDCODE_DEVICE_CODE_SHIFT)

/* efuse */

/**
 * EFUSE Base Address
 */
#define EFUSE_BASEADDR      0XFFCC0000U

/**
 * Register: EFUSE_SEC_CTRL
 */
#define EFUSE_SEC_CTRL    ( ( EFUSE_BASEADDR ) + 0X00001058U )
#define EFUSE_SEC_CTRL_RSA_EN_MASK    0X03000000U

/* Register: EFUSE_IPDISABLE */
#define EFUSE_IPDISABLE    ( ( EFUSE_BASEADDR ) + 0X00001018U )

#define EFUSE_IPDISABLE_GPU_DIS_MASK    0X00000020U
#define EFUSE_IPDISABLE_APU3_DIS_MASK    0X00000008U
#define EFUSE_IPDISABLE_APU2_DIS_MASK    0X00000004U

/* csudma */

/**
 * CSUDMA Base Address
 */
#define CSUDMA_BASEADDR      0XFFC80000U

/* crf_apb */

/**
 * CRF_APB Base Address
 */
#define CRF_APB_BASEADDR      0XFD1A0000U

/**
 * Register: CRF_APB_RST_FPD_APU
 */
#define CRF_APB_RST_FPD_APU    ( ( CRF_APB_BASEADDR ) + 0X00000104U )
#define CRF_APB_RST_FPD_APU_ACPU0_RESET_MASK    0X00000001U
#define CRF_APB_RST_FPD_APU_APU_L2_RESET_MASK    0X00000100U

/**
 * Register: CRF_APB_ACPU_CTRL
 */
#define CRF_APB_ACPU_CTRL    ( ( CRF_APB_BASEADDR ) + 0X00000060U )
#define CRF_APB_ACPU_CTRL_CLKACT_FULL_MASK    0X01000000U
#define CRF_APB_ACPU_CTRL_CLKACT_HALF_MASK    0X02000000U
#define CRF_APB_RST_FPD_APU_ACPU1_RESET_MASK    0X00000002U
#define CRF_APB_RST_FPD_APU_ACPU2_RESET_MASK    0X00000004U
#define CRF_APB_RST_FPD_APU_ACPU3_RESET_MASK    0X00000008U

#define CRF_APB_RST_FPD_APU_ACPU3_PWRON_RESET_MASK    0X00002000U
#define CRF_APB_RST_FPD_APU_ACPU2_PWRON_RESET_MASK    0X00001000U
#define CRF_APB_RST_FPD_APU_ACPU1_PWRON_RESET_MASK    0X00000800U
#define CRF_APB_RST_FPD_APU_ACPU0_PWRON_RESET_MASK    0X00000400U

/* crl_apb */

/**
 * CRL_APB Base Address
 */
#define CRL_APB_BASEADDR      0XFF5E0000U

/**
 * Register: CRL_APB_CPU_R5_CTRL
 */
#define CRL_APB_CPU_R5_CTRL    ( ( CRL_APB_BASEADDR ) + 0X00000090U )
#define CRL_APB_CPU_R5_CTRL_CLKACT_MASK    0X01000000U

/**
 * Register: CRL_APB_RST_LPD_TOP
 */
#define CRL_APB_RST_LPD_TOP    ( ( CRL_APB_BASEADDR ) + 0X0000023CU )
#define CRL_APB_RST_LPD_TOP_RPU_R50_RESET_MASK    0X00000001U
#define CRL_APB_RST_LPD_TOP_RPU_AMBA_RESET_MASK    0X00000004U
#define CRL_APB_RST_LPD_TOP_RPU_R51_RESET_MASK    0X00000002U

/**
 * Register: CRL_APB_BOOT_MODE_USER
 */
#define CRL_APB_BOOT_MODE_USER    ( ( CRL_APB_BASEADDR ) + 0X00000200U )
#define CRL_APB_BOOT_MODE_USER_BOOT_MODE_MASK    0X0000000FU

/**
 * Register: CRL_APB_RESET_CTRL
 */
#define CRL_APB_RESET_CTRL    ( ( CRL_APB_BASEADDR ) + 0X00000218U )
#define CRL_APB_RESET_CTRL_SOFT_RESET_MASK    0X00000010U

/* Register: CRL_APB_PCAP_CTRL */
#define CRL_APB_PCAP_CTRL    ( ( CRL_APB_BASEADDR ) + 0X000000A4U )
#define CRL_APB_PCAP_CTRL_DIVISOR0_SHIFT   8U
#define CRL_APB_PCAP_CTRL_DIVISOR0_MASK    0X00003F00U
#define CRL_APB_PCAP_CTRL_CLKACT_MASK    0X01000000U

/* Register: CRL_APB_RESET_REASON */
#define CRL_APB_RESET_REASON    ( ( CRL_APB_BASEADDR ) + 0X00000220U )
#define CRL_APB_RESET_REASON_PMU_SYS_RESET_MASK    0X00000004U
#define CRL_APB_RESET_REASON_PSONLY_RESET_REQ_MASK 0x00000008U

/**
 * Register: CRL_APB_RPLL_CTRL
 */
#define CRL_APB_RPLL_CTRL    ( ( CRL_APB_BASEADDR ) + 0X00000030U )
#define CRL_APB_RPLL_CTRL_BYPASS_MASK    0X00000008U

/* Register: CRL_APB_BOOT_PIN_CTRL */
#define CRL_APB_BOOT_PIN_CTRL    ( ( CRL_APB_BASEADDR ) + 0X00000250U)

/* apu */

/**
 * APU Base Address
 */
#define APU_BASEADDR      0XFD5C0000U

/**
 * Register: APU_CONFIG_0
 */
#define APU_CONFIG_0    ( ( APU_BASEADDR ) + 0X00000020U )
#define APU_CONFIG_0_VINITHI_MASK  0x000000F0

/**
 * Register: APU_RVBARADDR0L
 */
#define APU_RVBARADDR0L    ( ( APU_BASEADDR ) + 0X00000040U )

/**
 * Register: APU_RVBARADDR0H
 */
#define APU_RVBARADDR0H    ( ( APU_BASEADDR ) + 0X00000044U )

/**
 * Register: APU_RVBARADDR1L
 */
#define APU_RVBARADDR1L    ( ( APU_BASEADDR ) + 0X00000048U )

/**
 * Register: APU_RVBARADDR1H
 */
#define APU_RVBARADDR1H    ( ( APU_BASEADDR ) + 0X0000004CU )

/**
 * Register: APU_RVBARADDR2L
 */
#define APU_RVBARADDR2L    ( ( APU_BASEADDR ) + 0X00000050U )

/**
 * Register: APU_RVBARADDR2H
 */
#define APU_RVBARADDR2H    ( ( APU_BASEADDR ) + 0X00000054U )

/**
 * Register: APU_RVBARADDR3L
 */
#define APU_RVBARADDR3L    ( ( APU_BASEADDR ) + 0X00000058U )

/**
 * Register: APU_RVBARADDR3H
 */
#define APU_RVBARADDR3H    ( ( APU_BASEADDR ) + 0X0000005CU )

/* pmu_global */
#define PMU_GLOBAL_GLOB_GEN_STORAGE6    ( ( PMU_GLOBAL_BASEADDR ) + 0X48U )

/**
 * Register: PMU_GLOBAL_PERS_GLOB_GEN_STORAGE4
 */
#define PMU_GLOBAL_PERS_GLOB_GEN_STORAGE4    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000060U )

/**
 * Register: PMU_GLOBAL_PERS_GLOB_GEN_STORAGE5
 */
#define PMU_GLOBAL_PERS_GLOB_GEN_STORAGE5    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000064U )

/**
 * PMU_GLOBAL Base Address
 */
#define PMU_GLOBAL_BASEADDR      0XFFD80000U

#define PMU_GLOBAL_GLOBAL_CNTRL    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000000U )
#define PMU_GLOBAL_GLOBAL_CNTRL_MB_SLEEP_MASK    0X00010000U
#define PMU_GLOBAL_GLOBAL_CNTRL_FW_IS_PRESENT_MASK    0X00000010U

/* Register: PMU_GLOBAL_REQ_PWRUP_INT_EN */
#define PMU_GLOBAL_REQ_PWRUP_INT_EN    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000118U )
#define PMU_GLOBAL_REQ_PWRUP_INT_EN_PL_MASK    0X00800000U

/* Register: PMU_GLOBAL_REQ_PWRUP_TRIG */
#define PMU_GLOBAL_REQ_PWRUP_TRIG    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000120U )
#define PMU_GLOBAL_REQ_PWRUP_TRIG_PL_MASK    0X00800000U

/* Register: PMU_GLOBAL_REQ_PWRUP_STATUS */
#define PMU_GLOBAL_REQ_PWRUP_STATUS    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000110U )
#define PMU_GLOBAL_REQ_PWRUP_STATUS_PL_SHIFT   23U
#define PMU_GLOBAL_REQ_PWRUP_STATUS_PL_MASK    0X00800000U

/* Register: PMU_GLOBAL_PWR_STATE */
#define PMU_GLOBAL_PWR_STATE    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000100U )
#define PMU_GLOBAL_PWR_STATE_PL_MASK    0X00800000U
#define PMU_GLOBAL_PWR_STATE_FP_MASK    		0X00400000U
#define PMU_GLOBAL_PWR_STATE_USB1_MASK    		0X00200000U
#define PMU_GLOBAL_PWR_STATE_USB0_MASK    		0X00100000U
#define PMU_GLOBAL_PWR_STATE_OCM_BANK3_MASK    	0X00080000U
#define PMU_GLOBAL_PWR_STATE_OCM_BANK2_MASK    	0X00040000U
#define PMU_GLOBAL_PWR_STATE_OCM_BANK1_MASK    	0X00020000U
#define PMU_GLOBAL_PWR_STATE_OCM_BANK0_MASK    	0X00010000U
#define PMU_GLOBAL_PWR_STATE_TCM1B_MASK    		0X00008000U
#define PMU_GLOBAL_PWR_STATE_TCM1A_MASK    		0X00004000U
#define PMU_GLOBAL_PWR_STATE_TCM0B_MASK    		0X00002000U
#define PMU_GLOBAL_PWR_STATE_TCM0A_MASK    		0X00001000U
#define PMU_GLOBAL_PWR_STATE_R5_1_MASK    		0X00000800U
#define PMU_GLOBAL_PWR_STATE_R5_0_MASK    		0X00000400U
#define PMU_GLOBAL_PWR_STATE_L2_BANK0_MASK    	0X00000080U
#define PMU_GLOBAL_PWR_STATE_PP1_MASK    		0X00000020U
#define PMU_GLOBAL_PWR_STATE_PP0_MASK    		0X00000010U
#define PMU_GLOBAL_PWR_STATE_ACPU3_MASK    		0X00000008U
#define PMU_GLOBAL_PWR_STATE_ACPU2_MASK    		0X00000004U
#define PMU_GLOBAL_PWR_STATE_ACPU1_MASK    		0X00000002U
#define PMU_GLOBAL_PWR_STATE_ACPU0_MASK    		0X00000001U

/* Register: PMU_GLOBAL_ERROR_STATUS_1 */
#define PMU_GLOBAL_ERROR_STATUS_1    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000530U )
#define PMU_GLOBAL_ERROR_STATUS_1_LPD_SWDT_MASK    0X00001000U

/* Register: PMU_GLOBAL_ERROR_SRST_EN_1 */
#define PMU_GLOBAL_ERROR_SRST_EN_1    ( ( PMU_GLOBAL_BASEADDR ) + 0X0000056CU )
#define PMU_GLOBAL_ERROR_SRST_EN_1_LPD_SWDT_MASK    0X00001000U

/* Register: PMU_GLOBAL_ERROR_SRST_DIS_1 */
#define PMU_GLOBAL_ERROR_SRST_DIS_1    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000570U )
#define PMU_GLOBAL_ERROR_SRST_DIS_1_LPD_SWDT_MASK    0X00001000U

/* Register: PMU_GLOBAL_ERROR_EN_1 */
#define PMU_GLOBAL_ERROR_EN_1    ( ( PMU_GLOBAL_BASEADDR ) + 0X000005A0U )
#define PMU_GLOBAL_ERROR_EN_1_LPD_SWDT_MASK    0X00001000U

/* Register: PMU_GLOBAL_REQ_ISO_INT_EN */
#define PMU_GLOBAL_REQ_ISO_INT_EN    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000318U )
#define PMU_GLOBAL_REQ_ISO_INT_EN_PL_NONPCAP_MASK    0X00000004U

/* Register: PMU_GLOBAL_REQ_ISO_TRIG */
#define PMU_GLOBAL_REQ_ISO_TRIG    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000320U )

/* Register: PMU_GLOBAL_REQ_ISO_STATUS */
#define PMU_GLOBAL_REQ_ISO_STATUS    ( ( PMU_GLOBAL_BASEADDR ) + 0X00000310 )

/* rpu */

/**
 * RPU Base Address
 */
#define RPU_BASEADDR      0XFF9A0000U

/**
 * Register: RPU_RPU_GLBL_CNTL
 */
#define RPU_RPU_GLBL_CNTL    ( ( RPU_BASEADDR ) + 0X00000000U )
#define RPU_RPU_GLBL_CNTL_SLSPLIT_MASK    0X00000008U
#define RPU_RPU_GLBL_CNTL_TCM_COMB_MASK    0X00000040U
#define RPU_RPU_GLBL_CNTL_SLCLAMP_MASK    0X00000010U

/**
 * Register: RPU_RPU_0_CFG
 */
#define RPU_RPU_0_CFG    ( ( RPU_BASEADDR ) + 0X00000100U )
#define RPU_RPU_0_CFG_VINITHI_MASK     0x00000004U
#define RPU_RPU_0_CFG_NCPUHALT_MASK    0X00000001U

/**
 * Register: RPU_RPU_1_CFG
 */
#define RPU_RPU_1_CFG    ( ( RPU_BASEADDR ) + 0X00000200U )
#define RPU_RPU_1_CFG_VINITHI_MASK     0x00000004U
#define RPU_RPU_1_CFG_NCPUHALT_MASK    0X00000001U

/* rsa */

/**
 * RSA Base Address
 */
#define RSA_BASEADDR      0XFFCE002CU

/**
 * Register: RSA_WR_DATA_0
 */
#define RSA_WR_DATA_0    ( ( RSA_BASEADDR ) + 0X00000000U )

/**
 * Register: RSA_WR_ADDR
 */
#define RSA_WR_ADDR    ( ( RSA_BASEADDR ) + 0X00000018U )

/**
 * Register: RSA_RD_ADDR
 */
#define RSA_RD_ADDR    ( ( RSA_BASEADDR ) + 0X00000034U )

/**
 * Register: RSA_RD_DATA_0
 */
#define RSA_RD_DATA_0    ( ( RSA_BASEADDR ) + 0X0000001CU )

/* rsa_core */

/**
 * RSA_CORE Base Address
 */
#define RSA_CORE_BASEADDR      0XFFCE0000U

/**
 * Register: RSA_CORE_MINV0
 */
#define RSA_CORE_MINV0    ( ( RSA_CORE_BASEADDR ) + 0X00000018U )

/**
 * Register: RSA_CORE_MINV1
 */
#define RSA_CORE_MINV1    ( ( RSA_CORE_BASEADDR ) + 0X0000001CU )

/**
 * Register: RSA_CORE_MINV2
 */
#define RSA_CORE_MINV2    ( ( RSA_CORE_BASEADDR ) + 0X00000020U )

/**
 * Register: RSA_CORE_MINV3
 */
#define RSA_CORE_MINV3    ( ( RSA_CORE_BASEADDR ) + 0X00000024U )

/**
 * Register: RSA_CORE_STATUS
 */
#define RSA_CORE_STATUS    ( ( RSA_CORE_BASEADDR ) + 0X00000014U )
#define RSA_CORE_STATUS_ERROR_MASK    0X00000004U
#define RSA_CORE_STATUS_DONE_MASK    0X00000001U

/**
 * Register: RSA_CORE_CTRL
 */
#define RSA_CORE_CTRL    ( ( RSA_CORE_BASEADDR ) + 0X00000010U )

/* LPD_SLCR Base Address */
#define LPD_SLCR_BASEADDR      0XFF410000U

/* Register: LPD_SLCR_PERSISTENT4 */
#define LPD_SLCR_PERSISTENT4    ( ( LPD_SLCR_BASEADDR ) + 0X00000030U )

/* Register: LPD_SLCR_PERSISTENT5 */
#define LPD_SLCR_PERSISTENT5    ( ( LPD_SLCR_BASEADDR ) + 0X00000034U )

/* IPI Base Address */
#define IPI_BASEADDR      0XFF300000U

/* Register: IPI_PMU_0_TRIG */
#define IPI_PMU_0_TRIG    ( ( IPI_BASEADDR ) + 0X00030000U )
#define IPI_PMU_0_TRIG_PMU_0_MASK    0X00010000U

#define IPI_PMU_0_IER    ( ( IPI_BASEADDR ) + 0X00030018U )
#define IPI_PMU_0_IER_PMU_0_MASK    0X00010000U

/* serdes */
/* SERDES Base Address */
#define SERDES_BASEADDR      0XFD400000U

#define SERDES_ICM_CFG0    ( ( SERDES_BASEADDR ) + 0X00010010U )
#define SERDES_ICM_CFG0_L1_ICM_CFG_SHIFT   4U
#define SERDES_ICM_CFG0_L1_ICM_CFG_MASK    0X00000070U
#define SERDES_ICM_CFG0_L0_ICM_CFG_MASK    0X00000007U

#define SERDES_ICM_CFG1    ( ( SERDES_BASEADDR ) + 0X00010014U )
#define SERDES_ICM_CFG1_L3_ICM_CFG_SHIFT   4U
#define SERDES_ICM_CFG1_L3_ICM_CFG_MASK    0X00000070U
#define SERDES_ICM_CFG1_L2_ICM_CFG_MASK    0X00000007U

/* gpio */
/* GPIO Base Address */
#define GPIO_BASEADDR      0XFF0A0000U

#define GPIO_DATA_1    ( ( GPIO_BASEADDR ) + 0X00000044U )
#define GPIO_DIRM_1    ( ( GPIO_BASEADDR ) + 0X00000244U )
#define GPIO_OEN_1     ( ( GPIO_BASEADDR ) + 0X00000248U )

/* IOU_SLCR Base Address */
#define IOU_SLCR_BASEADDR      0XFF180000U

/* Register: IOU_SLCR_SD_CDN_CTRL */
#define IOU_SLCR_SD_CDN_CTRL    ( ( IOU_SLCR_BASEADDR ) + 0X0000035CU )

#define IOU_SLCR_SD_CDN_CTRL_SD1_CDN_CTRL_MASK    0X00010000U
#define IOU_SLCR_SD_CDN_CTRL_SD0_CDN_CTRL_MASK    0X00000001U


/* Register: ADMA_CH0 Base Address */
#define ADMA_CH0_BASEADDR      0XFFA80000U

/* Register: ADMA_CH0_ZDMA_CH_STATUS */
#define ADMA_CH0_ZDMA_CH_STATUS    ( ( ADMA_CH0_BASEADDR ) + 0X0000011CU )
#define ADMA_CH0_ZDMA_CH_STATUS_STATE_MASK    0X00000003U
#define ADMA_CH0_ZDMA_CH_STATUS_STATE_DONE    0X00000000U
#define ADMA_CH0_ZDMA_CH_STATUS_STATE_ERR     0X00000003U

/* Register: ADMA_CH0_ZDMA_CH_CTRL0 */
#define ADMA_CH0_ZDMA_CH_CTRL0    ( ( ADMA_CH0_BASEADDR ) + 0X00000110U )
#define ADMA_CH0_ZDMA_CH_CTRL0_POINT_TYPE_MASK    0X00000040U
#define ADMA_CH0_ZDMA_CH_CTRL0_POINT_TYPE_NORMAL  0X00000000U
#define ADMA_CH0_ZDMA_CH_CTRL0_MODE_MASK    0X00000030U
#define ADMA_CH0_ZDMA_CH_CTRL0_MODE_WR_ONLY 0X00000010U

/* Register: ADMA_CH0_ZDMA_CH_WR_ONLY_WORD0 */
#define ADMA_CH0_ZDMA_CH_WR_ONLY_WORD0    ( ( ADMA_CH0_BASEADDR ) + 0X00000148U )

/* Register: ADMA_CH0_ZDMA_CH_WR_ONLY_WORD1 */
#define ADMA_CH0_ZDMA_CH_WR_ONLY_WORD1    ( ( ADMA_CH0_BASEADDR ) + 0X0000014CU )

/* Register: ADMA_CH0_ZDMA_CH_WR_ONLY_WORD2 */
#define ADMA_CH0_ZDMA_CH_WR_ONLY_WORD2    ( ( ADMA_CH0_BASEADDR ) + 0X00000150U )

/* Register: ADMA_CH0_ZDMA_CH_WR_ONLY_WORD3 */
#define ADMA_CH0_ZDMA_CH_WR_ONLY_WORD3    ( ( ADMA_CH0_BASEADDR ) + 0X00000154U )

/* Register: ADMA_CH0_ZDMA_CH_DST_DSCR_WORD0 */
#define ADMA_CH0_ZDMA_CH_DST_DSCR_WORD0    ( ( ADMA_CH0_BASEADDR ) + 0X00000138U )
#define ADMA_CH0_ZDMA_CH_DST_DSCR_WORD0_LSB_MASK    0XFFFFFFFFU

/* Register: ADMA_CH0_ZDMA_CH_DST_DSCR_WORD1 */
#define ADMA_CH0_ZDMA_CH_DST_DSCR_WORD1    ( ( ADMA_CH0_BASEADDR ) + 0X0000013CU )
#define ADMA_CH0_ZDMA_CH_DST_DSCR_WORD1_MSB_MASK    0X0001FFFFU

/* Register: ADMA_CH0_ZDMA_CH_SRC_DSCR_WORD2 */
#define ADMA_CH0_ZDMA_CH_SRC_DSCR_WORD2    ( ( ADMA_CH0_BASEADDR ) + 0X00000130U )

/* Register: ADMA_CH0_ZDMA_CH_DST_DSCR_WORD2 */
#define ADMA_CH0_ZDMA_CH_DST_DSCR_WORD2    ( ( ADMA_CH0_BASEADDR ) + 0X00000140U )

/* Register: ADMA_CH0_ZDMA_CH_CTRL2 */
#define ADMA_CH0_ZDMA_CH_CTRL2    ( ( ADMA_CH0_BASEADDR ) + 0X00000200U )
#define ADMA_CH0_ZDMA_CH_CTRL2_EN_MASK    0X00000001U

/* Register: ADMA_CH0_ZDMA_CH_ISR */
#define ADMA_CH0_ZDMA_CH_ISR    ( ( ADMA_CH0_BASEADDR ) + 0X00000100U )
#define ADMA_CH0_ZDMA_CH_ISR_DMA_DONE_MASK    0X00000400U


/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/



/**
 * For error reporting PMU_GLOBAL_PERS_GLOB_GEN_STORAGE4 is used
 */
#define XFSBL_ERROR_STATUS_REGISTER_OFFSET	(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE4)


/* PMU RAM address for PMU FW */
#define XFSBL_PMU_RAM_START_ADDRESS		(0xFFDC0000U)
#define XFSBL_PMU_RAM_END_ADDRESS		(0xFFDDFFFFU)

/**
 * If address where bitstream need to be copied is not configured, below will
 * be the default address to indicate it is invalid address. In such cases,
 * XFSBL_DDR_TEMP_ADDRESS is used as load address.
 */
#define XFSBL_DUMMY_PL_ADDR				(0xFFFFFFFFU)

/**
 * ARM Processor defines
 */
#define XFSBL_CLUSTER_ID_MASK			(0x00000F00U)
#define XFSBL_A53_PROCESSOR			(0x00000000U)
#define XFSBL_R5_PROCESSOR			(0x00000100U)


/**
 * Other FSBL defines
 * this can defined in xfsbl_main.h
 */
#define XFSBL_R5_0				(0x1U)
#define XFSBL_R5_L				(0x2U)

/**
 * TCM address for R5
 */
#define XFSBL_R5_TCM_START_ADDRESS		(0x0U)
#define XFSBL_R5_BTCM_START_ADDRESS		(0x20000U)

#define XFSBL_R50_HIGH_ATCM_START_ADDRESS	(0xFFE00000U)
#define XFSBL_R50_HIGH_BTCM_START_ADDRESS	(0xFFE20000U)
#define XFSBL_R51_HIGH_ATCM_START_ADDRESS	(0xFFE90000U)
#define XFSBL_R51_HIGH_BTCM_START_ADDRESS	(0xFFEB0000U)

#define XFSBL_R5_TCM_BANK_LENGTH			(0x10000U)

/**
 * defines for the FSBL peripherals present
 */

/**
 * Definition for WDT to be included
 */
#if (!defined(FSBL_WDT_EXCLUDE) && defined(XPAR_XWDTPS_0_DEVICE_ID))
#define XFSBL_WDT_PRESENT
#endif

/**
 * Definitions for SD to be included
 */
#if (!defined(FSBL_SD_EXCLUDE) && (XPAR_XSDPS_0_BASEADDR == 0xFF160000))
#define XFSBL_SD_0
#endif

#if (!defined(FSBL_SD_EXCLUDE) && (XPAR_XSDPS_0_BASEADDR == 0xFF170000) ||\
		(XPAR_XSDPS_1_BASEADDR == 0xFF170000))
#define XFSBL_SD_1
#endif

/**
 * Definition for QSPI to be included
 */
#if (!defined(FSBL_QSPI_EXCLUDE) && defined(XPAR_XQSPIPSU_0_DEVICE_ID))
#define XFSBL_QSPI
#define XFSBL_QSPI_BASEADDRESS	XPAR_XQSPIPS_0_BASEADDR
#endif

/**
 * Definition for NAND to be included
 */
#if (!defined(FSBL_NAND_EXCLUDE) && defined(XPAR_XNANDPSU_0_DEVICE_ID))
#define XFSBL_NAND
#endif

/**
 * Definition for SECURE to be included
 */
#if !defined(FSBL_SECURE_EXCLUDE)
#define XFSBL_SECURE
#endif

/**
 * Definition for PL bitsream feature to be included
 */
#if !defined(FSBL_BS_EXCLUDE)
#define XFSBL_BS
#endif


/**
 * Definition for early handoff feature to be included
 */
#if !defined(FSBL_EARLY_HANDOFF_EXCLUDE)
#define XFSBL_EARLY_HANDOFF
#endif

/**
 * Definition for SHA2 to be included
 */
#if !defined(FSBL_SHA2_EXCLUDE)
#define XFSBL_SHA2
#endif

#if !defined(FSBL_PERF_EXCLUDE) && (!defined(ARMR5) || (defined(ARMR5) && defined(SLEEP_TIMER_BASEADDR)))
#define XFSBL_PERF
#endif

/* Definition for TCM ECC Enable for A53 to be included */
#if !defined(FSBL_A53_TCM_ECC_EXCLUDE)
#define XFSBL_A53_TCM_ECC
#endif

#define XFSBL_QSPI_LINEAR_BASE_ADDRESS_START		(0xC0000000U)
#define XFSBL_QSPI_LINEAR_BASE_ADDRESS_END		(0xDFFFFFFFU)

#if defined(XPAR_PSU_DDR_0_S_AXI_BASEADDR) 	\
		|| defined(XPAR_PSU_R5_DDR_0_S_AXI_BASEADDR)
#define XFSBL_PS_DDR
#endif

#define XFSBL_PS_DDR_START_ADDRESS		(0x0U)
#define XFSBL_PS_DDR_START_ADDRESS_R5	(0x100000U)

#ifdef ARMR5
#define XFSBL_PS_DDR_INIT_START_ADDRESS	XFSBL_PS_DDR_START_ADDRESS_R5
#else
#define XFSBL_PS_DDR_INIT_START_ADDRESS	XFSBL_PS_DDR_START_ADDRESS
#if defined(XPAR_PSU_DDR_1_S_AXI_BASEADDR) && defined (ARMA53_64)
#define XFSBL_PS_HI_DDR_START_ADDRESS	XPAR_PSU_DDR_1_S_AXI_BASEADDR
#define XFSBL_PS_HI_DDR_END_ADDRESS XPAR_PSU_DDR_1_S_AXI_HIGHADDR
#endif
#endif

#define XFSBL_PS_DDR_END_ADDRESS		(0x80000000U - 1U)  //2GB of DDR

#define ZDMA_TRANSFER_MAX_LEN 0x3FFFFFFFU

#define EFUSE_IPDISABLE_CG_MASK ((EFUSE_IPDISABLE_GPU_DIS_MASK) | \
		(EFUSE_IPDISABLE_APU2_DIS_MASK) | (EFUSE_IPDISABLE_APU3_DIS_MASK))

#define XFSBL_OCM
#define XFSBL_OCM_START_ADDRESS			(0xFFFEA000U)
#define XFSBL_OCM_END_ADDRESS			(0xFFFFFFFFU)

/* Different Memory types */
#define XFSBL_R5_0_TCM		(0x1U)
#define XFSBL_R5_1_TCM		(0x2U)
#define XFSBL_R5_L_TCM		(0x3U)

#ifdef ARMA53_64
#define PTRSIZE		u64
#else
#define PTRSIZE		u32
#endif


/****************************************************************************/
/**
*
* Read the given register.
*
* @param	BaseAddr is the base address of the device
* @param	RegOffset is the register offset to be read
*
* @return	The 32-bit value of the register
*
* @note		C-style signature:
*		u32 XFsbl_ReadReg(u32 BaseAddr, u32 RegOffset)
*
*****************************************************************************/
#define XFsbl_ReadReg(BaseAddr, RegOffset)		\
	Xil_In32((BaseAddr) + (RegOffset))

#define XFsbl_In32(Addr)		Xil_In32(Addr)

#define XFsbl_In64(Addr)		Xil_In64(Addr)

/****************************************************************************/
/**
*
* Write to the given register.
*
* @param	BaseAddr is the base address of the device
* @param	RegOffset is the register offset to be written
* @param	Data is the 32-bit value to write to the register
*
* @return	None.
*
* @note		C-style signature:
*		void XFsbl_WriteReg(u32 BaseAddr, u32 RegOffset, u32 Data)
*
*****************************************************************************/
#define XFsbl_WriteReg(BaseAddr, RegOffset, Data)	\
	Xil_Out32((BaseAddr) + (RegOffset), (Data))

#define XFsbl_Out32(Addr, Data)		Xil_Out32(Addr, Data)

#define XFsbl_Out64(Addr, Data)		Xil_Out64(Addr, Data)

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/


#ifdef __cplusplus
}
#endif

#endif  /* XFSBL_HW_H */
