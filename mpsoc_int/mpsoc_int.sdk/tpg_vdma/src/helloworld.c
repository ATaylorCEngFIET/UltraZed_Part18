

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xv_tpg.h"
#include "xvidc.h"
static XV_tpg tpg;

#include "xil_assert.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"

XAxiVdma vdma;
XAxiVdma_DmaSetup vdmaDMA;
XAxiVdma_Config *vdmaConfig;

u32 frameBuf[1][1280*1024];
u32 *pFrames[1];

int main()
{

	XV_tpg_Config *tpg_config;
	//int status;
	u32 height,width,status;

    init_platform();
    disable_caches();
    printf("Hello World\n\r");

    tpg_config = XV_tpg_LookupConfig(XPAR_XV_TPG_0_DEVICE_ID);
    XV_tpg_CfgInitialize(&tpg, tpg_config, tpg_config->BaseAddress);




	status = XV_tpg_IsReady(&tpg);
	printf("Status %u \n\r", (unsigned int) status);
	status = XV_tpg_IsIdle(&tpg);
	printf("Status %u \n\r", (unsigned int) status);
	XV_tpg_Set_height(&tpg, (u32)1080);
	XV_tpg_Set_width(&tpg, (u32)1280);
	height = XV_tpg_Get_height(&tpg);
	width = XV_tpg_Get_width(&tpg);
	XV_tpg_Set_colorFormat(&tpg,XVIDC_CSF_YCRCB_422);
	XV_tpg_Set_maskId(&tpg, 0x0);
	XV_tpg_Set_motionSpeed(&tpg, 0x4);
	printf("info from tpg %u %u \n\r", (unsigned int)height, (unsigned int)width);
	XV_tpg_Set_bckgndId(&tpg, XTPG_BKGND_SOLID_WHITE);
	status = XV_tpg_Get_bckgndId(&tpg);
	printf("Status %x \n\r", (unsigned int) status);
	XV_tpg_EnableAutoRestart(&tpg);
	XV_tpg_Start(&tpg);
	status = XV_tpg_IsIdle(&tpg);
	printf("Status %u \n\r", (unsigned int) status);


	pFrames[0] = frameBuf[0];


	vdmaConfig = XAxiVdma_LookupConfig(XPAR_AXIVDMA_0_DEVICE_ID);
	XAxiVdma_CfgInitialize(&vdma, vdmaConfig, vdmaConfig->BaseAddress);

	vdmaDMA.FrameDelay = 0;
	vdmaDMA.EnableCircularBuf = 1;
	vdmaDMA.EnableSync = 0;
	vdmaDMA.PointNum = 0;
	vdmaDMA.EnableFrameCounter = 0;

	vdmaDMA.VertSizeInput = 1080;
	vdmaDMA.HoriSizeInput = (1280*4);
	vdmaDMA.FixedFrameStoreAddr = 0;
	vdmaDMA.FrameStoreStartAddr[0] = (u32)  pFrames[0];
	vdmaDMA.Stride = (1280*4);
	XAxiVdma_DmaConfig(&vdma, XAXIVDMA_WRITE, &(vdmaDMA));
	XAxiVdma_DmaSetBufferAddr(&vdma, XAXIVDMA_WRITE,vdmaDMA.FrameStoreStartAddr);
	XAxiVdma_DmaStart(&vdma, XAXIVDMA_WRITE);
	XAxiVdma_StartParking(&vdma, 0, XAXIVDMA_WRITE);

	while(1){

	}

    cleanup_platform();
    return 0;
}
