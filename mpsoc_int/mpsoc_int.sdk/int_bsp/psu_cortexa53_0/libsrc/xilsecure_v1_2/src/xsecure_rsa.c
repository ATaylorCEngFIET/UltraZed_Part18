/******************************************************************************
*
* (c) Copyright 2014 Xilinx, Inc. All rights reserved.
*
* This file contains confidential and proprietary information of Xilinx, Inc.
* and is protected under U.S. and international copyright and other
* intellectual property laws.
*
* DISCLAIMER
* This disclaimer is not a license and does not grant any rights to the
* materials distributed herewith. Except as otherwise provided in a valid
* license issued to you by Xilinx, and to the maximum extent permitted by
* applicable law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL
* FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS,
* IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO WARRANTIES OF
* MERCHANTABILITY, NON-INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE
* and (2) Xilinx shall not be liable (whether in contract or tort, including
* negligence, or under any other theory of liability) for any loss or damage
* of any kind or nature related to, arising under or in connection with these
* materials, including for any direct, or any indirect, special, incidental,
* or consequential loss or damage (including loss of data, profits, goodwill,
* or any type of loss or damage suffered as a result of any action brought by
* a third party) even if such damage or loss was reasonably foreseeable or
* Xilinx had been advised of the possibility of the same.
*
* CRITICAL APPLICATIONS
* Xilinx products are not designed or intended to be fail-safe, or for use in
* any application requiring fail-safe performance, such as life-support or
* safety devices or systems, Class III medical devices, nuclear facilities,
* applications related to the deployment of airbags, or any other applications
* that could lead to death, personal injury, or severe property or
* environmental damage (individually and collectively, "Critical
* Applications"). Customer assumes the sole risk and liability of any use of
* Xilinx products in Critical Applications, subject only to applicable laws
* and regulations governing limitations on product liability.
*
* THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE
* AT ALL TIMES.
*
*******************************************************************************/
/*****************************************************************************/
/**
*
* @file xsecure_rsa.c
*
* This file contains the implementation of the interface functions for RSA
* driver. Refer to the header file xsecure_sha.h for more detailed information.
*
* <pre>
* MODIFICATION HISTORY:
*
* Ver   Who  Date     Changes
* ----- ---- -------- -------------------------------------------------------
* 1.0   ba   10/13/14 Initial release
* 1.1   ba   12/11/15 Added support for NIST approved SHA-3 in 2.0 silicon
*
* </pre>
*
* @note
*
******************************************************************************/

/***************************** Include Files *********************************/
#include "xsecure_rsa.h"

/************************** Constant Definitions *****************************/

/* PKCS padding for SHA-3 in 1.0 Silicon */
static const u8 XSecure_Silicon1_TPadSha3[] = {0x30U, 0x41U, 0x30U, 0x0DU,
			0x06U, 0x09U, 0x60U, 0x86U, 0x48U, 0x01U, 0x65U, 0x03U, 0x04U,
			0x02U, 0x02U, 0x05U, 0x00U, 0x04U, 0x30U };

/* PKCS padding scheme for SHA-2 in 1.0 Silicon */
static const u8 XSecure_Silicon1_TPadSha2[] = {0x30U, 0x31U, 0x30U, 0x0DU,
			0x06U, 0x09U, 0x60U, 0x86U, 0x48U, 0x01U, 0x65U, 0x03U, 0x04U,
			0x02U, 0x01U, 0x05U, 0x00U, 0x04U, 0x20U };

/* PKCS padding for SHA-3 in 2.0 Silicon and onwards */
static const u8 XSecure_Silicon2_TPadSha3[] = {0x30U, 0x41U, 0x30U, 0x0DU,
			0x06U, 0x09U, 0x60U, 0x86U, 0x48U, 0x01U, 0x65U, 0x03U, 0x04U,
			0x02U, 0x09U, 0x05U, 0x00U, 0x04U, 0x30U };

/* PKCS padding scheme for SHA-2 in 2.0 Silicon and onwards */
static const u8 XSecure_Silicon2_TPadSha2[] = {0x30U, 0x31U, 0x30U, 0x0DU,
			0x06U, 0x09U, 0x60U, 0x86U, 0x48U, 0x01U, 0x65U, 0x03U, 0x04U,
			0x02U, 0x01U, 0x05U, 0x00U, 0x04U, 0x20U };

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/

/************************** Function Definitions *****************************/

/*****************************************************************************/
/**
 *
 * Initializes a specific Xsecure_Rsa instance so that it is ready to be used.
 *
 * @param	InstancePtr is a pointer to the XSecure_Rsa instance.
 * @param	Mod is the pointer to Modulus used for authentication
 * @param	ModExt is the pointer to precalculated R^2 Mod N value used for
 * 			authentication
 * @param	ModExpo is the pointer to the exponent(public key) used for
 * 			authentication
 *
 * @return	XST_SUCCESS if initialization was successful.
 *
 * @note	Modulus, ModExt and ModExpo are part of signature generated by
 * 			bootgen after authentication
 *
 ******************************************************************************/
s32 XSecure_RsaInitialize(XSecure_Rsa *InstancePtr, u8 *Mod, u8 *ModExt,
							u8 *ModExpo)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Mod != NULL);
	Xil_AssertNonvoid(ModExt != NULL);
	Xil_AssertNonvoid(ModExpo != NULL);

	InstancePtr->BaseAddress = XSECURE_CSU_RSA_BASE;
	InstancePtr->Mod = Mod;
	InstancePtr->ModExt = ModExt;
	InstancePtr->ModExpo = ModExpo;

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * Write Data to RSA RAM at a given offset
 *
 * @param	InstancePtr is a pointer to the XSecure_Aes instance.
 * @param	WrData is pointer to the data to be written to RSA RAM
 * @param	RamOffset is the offset for the data to be written in RSA RAM
 *
 * @return	None
 *
 * @note	None
 *
 ******************************************************************************/
static void XSecure_RsaWriteMem(XSecure_Rsa *InstancePtr, u32* WrData,
							u8 RamOffset)
{
	/* Assert validates the input arguments */
	Xil_AssertVoid(InstancePtr != NULL);

	u32 Index = 0U;
	u32 DataOffset = 0U;
	u32 TmpIndex = 0U;
	u32 Data = 0U;

	/** Each of this loop will write 192 bits of data*/
	for (DataOffset = 0U; DataOffset < 22U; DataOffset++)
	{
		for (Index = 0U; Index < 6U; Index++)
		{
			TmpIndex = (DataOffset*6) + Index;
			/**
			* Exponent size is only 4 bytes
			* and rest of the data needs to be 0
			*/
			if(XSECURE_CSU_RSA_RAM_EXPO == RamOffset)
			{
				if(0U == TmpIndex )
				{
					Data = Xil_Htonl(*WrData);
				}
				else
				{
					Data = 0x0U;
				}
			}
			else
			{
				if(TmpIndex >=128U)
				{
					Data = 0x0U;
				}
				else
				{
				/**
				* The RSA data in Image is in Big Endian.
				* So reverse it before putting in RSA memory,
				* becasue RSA h/w expects it in Little endian.
				*/

				Data = Xil_Htonl(WrData[127U - TmpIndex]);
				}
			}
			XSecure_WriteReg(InstancePtr->BaseAddress,
			(XSECURE_CSU_RSA_WR_DATA_0_OFFSET + (Index * 4)),
							Data);
		}
		XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_RSA_WR_ADDR_OFFSET,
				((RamOffset * 22) + DataOffset));
	}
}

/*****************************************************************************/
/**
 *
 * Read back the resulting data from RSA RAM
 *
 * @param	InstancePtr is a pointer to the XSecure_Rsa instance.
 * @param	RdData is the pointer to location where the decrypted data will
 * 			be written
 *
 * @return	None
 *
 * @note	None
 *
 ******************************************************************************/
static void XSecure_RsaGetData(XSecure_Rsa *InstancePtr, u32 *RdData)
{
	/* Assert validates the input arguments */
	Xil_AssertVoid(InstancePtr != NULL);

	u32 Index = 0U;
	u32 DataOffset = 0U;
	s32 TmpIndex = 0;

	/* Each of this loop will write 192 bits of data */
	for (DataOffset = 0U; DataOffset < 22U; DataOffset++)
	{
		XSecure_WriteReg(InstancePtr->BaseAddress,
				XSECURE_CSU_RSA_RD_ADDR_OFFSET,
				(XSECURE_CSU_RSA_RAM_RES_Y * 22) + DataOffset);

		Index = (DataOffset == 0U) ? 2: 0;
		for (; Index < 6; Index++)
		{
			TmpIndex = 129 - ((DataOffset*6) + Index);
			if(TmpIndex < 0)
			{
				break;
			}
			/*
			 * The Signature digest is compared in Big endian.
			 * So because RSA h/w results in Little endian,
			 * reverse it after reading it from RSA memory,
			 */
			RdData[TmpIndex] = Xil_Htonl(XSecure_ReadReg(
						InstancePtr->BaseAddress,
			(XSECURE_CSU_RSA_RD_DATA_0_OFFSET+ (Index * 4))));
		}
	}

}

/*****************************************************************************
 * Calculate the MINV value and put it into RSA core registers
 *
 * @param	InstancePtr is the pointer to XSeure_Rsa instance
 *
 * @return	None
 *
 * @note	MINV is the 32-bit value of "-M mod 2**32"
 *			where M is LSB 32 bits of the original modulus
 *
 ******************************************************************************/

static void XSecure_RsaMod32Inverse(XSecure_Rsa *InstancePtr)
{
	/* Assert validates the input arguments */
	Xil_AssertVoid(InstancePtr != NULL);

	/* Calculate the MINV */
	u8 Count = 0U;
	u32 *ModPtr = (u32 *)(InstancePtr->Mod);
	u32 ModVal = Xil_Htonl(ModPtr[127]);
	u32 Inv = 2U - ModVal;

	for (Count = 0U; Count < 4U; ++Count)
	{
		Inv = (Inv * (2U - ( ModVal * Inv ) ) );
	}

	Inv = -Inv;

	/* Put the value in MINV registers */
	XSecure_WriteReg(InstancePtr->BaseAddress, XSECURE_CSU_RSA_MINV0_OFFSET,
						(Inv & 0xFF ));
	XSecure_WriteReg(InstancePtr->BaseAddress, XSECURE_CSU_RSA_MINV1_OFFSET,
						((Inv >> 8) & 0xFF ));
	XSecure_WriteReg(InstancePtr->BaseAddress, XSECURE_CSU_RSA_MINV2_OFFSET,
						((Inv >> 16) & 0xFF ));
	XSecure_WriteReg(InstancePtr->BaseAddress, XSECURE_CSU_RSA_MINV3_OFFSET,
						((Inv >> 24) & 0xFF ));
}

/*****************************************************************************/
/**
 *
 * Write all the RSA data used for decryption (Modulus, Exponent etc.) at
 * corresponding offsets in RSA RAM.
 *
 * @param	InstancePtr is a pointer to the XSecure_Rsa instance.
 *
 * @return	None.
 *
 * @note	None
 *
 ******************************************************************************/
static void XSecure_RsaPutData(XSecure_Rsa *InstancePtr)
{
	/* Assert validates the input arguments */
	Xil_AssertVoid(InstancePtr != NULL);

	/* Initialize Modular exponentiation */
	XSecure_RsaWriteMem(InstancePtr, (u32 *)InstancePtr->ModExpo,
					XSECURE_CSU_RSA_RAM_EXPO);

	/* Initialize Modular. */
	XSecure_RsaWriteMem(InstancePtr, (u32 *)InstancePtr->Mod,
					XSECURE_CSU_RSA_RAM_MOD);

	/* Initialize Modular extension (R*R Mod M) */
	XSecure_RsaWriteMem(InstancePtr, (u32 *)InstancePtr->ModExt,
					XSECURE_CSU_RSA_RAM_RES_Y);

}

/*****************************************************************************/
/**
 *
 * This function handles the RSA decryption from end to end
 *
 * @param	InstancePtr is a pointer to the XSecure_Rsa instance.
 * @param	Result is the pointer to decrypted data generated by RSA.
 * @param	EncText is the pointer to the data(hash) to be decrypted
 *
 * @return	XST_SUCCESS if decryption was successful.
 *
 * @note	None
 *
 ******************************************************************************/
s32 XSecure_RsaDecrypt(XSecure_Rsa *InstancePtr, u8 *EncText, u8 *Result)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(Result != NULL);

	volatile u32 Status = 0x0U;
	s32 ErrorCode = XST_SUCCESS;

	/* Put Modulus, exponent, Mod extension in RSA RAM */
	XSecure_RsaPutData(InstancePtr);

	/* Initialize Digest */
	XSecure_RsaWriteMem(InstancePtr, (u32 *)EncText,
				XSECURE_CSU_RSA_RAM_DIGEST);

	/* Initialize MINV values from Mod. */
	XSecure_RsaMod32Inverse(InstancePtr);

	/* Start the RSA operation. */
	XSecure_WriteReg(InstancePtr->BaseAddress,
			XSECURE_CSU_RSA_CONTROL_OFFSET,
			XSECURE_CSU_RSA_CONTROL_MASK);

	/* Check and wait for status */
	do
	{
		Status = XSecure_ReadReg(InstancePtr->BaseAddress,
					XSECURE_CSU_RSA_STATUS_OFFSET);

		if(XSECURE_CSU_RSA_STATUS_ERROR ==
				((u32)Status & XSECURE_CSU_RSA_STATUS_ERROR))
		{
			ErrorCode = XST_FAILURE;
			goto END;
		}
	}while(XSECURE_CSU_RSA_STATUS_DONE !=
				((u32)Status & XSECURE_CSU_RSA_STATUS_DONE));


	/* Copy the result */
	XSecure_RsaGetData(InstancePtr, (u32 *)Result);

END:
	return ErrorCode;
}

/*****************************************************************************/
/**
 *
 * Match the decrypted data with expected data
 *
 * @param	Signature is the pointer to RSA signature for data to be
 *          authenticated
 * @param	Hash is the pointer to expected hash data
 * @param	HashLen is the length of Hash used.
 *
 * @return	XST_SUCCESS if decryption was successful.
 *
 * @note	None
 *
 ******************************************************************************/
u32 XSecure_RsaSignVerification(u8 *Signature, u8 *Hash, u32 HashLen)
{
	/* Assert validates the input arguments */
	Xil_AssertNonvoid(Signature != NULL);
	Xil_AssertNonvoid(Hash != NULL);

	u8 * Tpadding = (u8 *)XNULL;
	u32 Pad = XSECURE_FSBL_SIG_SIZE - 3U - 19U - HashLen;
	u8 * PadPtr = Signature;
	u32 sign_index;
	u32 Status = XST_SUCCESS;

	/* If Silicon version is not 1.0 then use the latest NIST approved SHA-3
	 * id for padding
	 */
	if (XGetPSVersion_Info() != XPS_VERSION_1)
	{
		if(XSECURE_HASH_TYPE_SHA3 == HashLen)
		{
			Tpadding = (u8 *)XSecure_Silicon2_TPadSha3;
		}
		else
		{
			Tpadding = (u8 *)XSecure_Silicon2_TPadSha3;
		}
	}
	else
	{
		if(XSECURE_HASH_TYPE_SHA3 == HashLen)
		{
			Tpadding = (u8 *)XSecure_Silicon1_TPadSha3;
		}
		else
		{
			Tpadding = (u8 *)XSecure_Silicon1_TPadSha2;
		}
	}

	/*
	 * Re-Create PKCS#1v1.5 Padding
	* MSB  ------------------------------------------------------------LSB
	* 0x0 || 0x1 || 0xFF(for 202 bytes) || 0x0 || T_padding || SHA384 Hash
	*/

	if (0x00U != *PadPtr)
	{
		Status = XST_FAILURE;
		goto ENDF;
	}
	PadPtr++;

	if (0x01U != *PadPtr)
	{
		Status = XST_FAILURE;
		goto ENDF;
	}
	PadPtr++;

	for (sign_index = 0U; sign_index < Pad; sign_index++)
	{
		if (0xFFU != *PadPtr)
		{
			Status = XST_FAILURE;
			goto ENDF;
		}
		PadPtr++;
	}

	if (0x00U != *PadPtr)
	{
		Status = XST_FAILURE;
		goto ENDF;
	}
	PadPtr++;

	for (sign_index = 0U; sign_index < 19U; sign_index++)
	{
		if (*PadPtr != Tpadding[sign_index])
		{
			Status = XST_FAILURE;
			goto ENDF;
		}
		PadPtr++;
	}

	for (sign_index = 0U; sign_index < HashLen; sign_index++)
	{
		if (*PadPtr != Hash[sign_index])
		{
			Status = XST_FAILURE;
			goto ENDF;
		}
		PadPtr++;
	}

ENDF:
	return Status;
}
