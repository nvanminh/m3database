SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Crystal_APVC_LoanSummary]
AS
SELECT
[Name]=	(CASE
		WHEN (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR.CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{627cb28d-8393-4878-b06f-38747946b792}') /*@IDControlAssociation(13)*/ IS NULL
		THEN (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}') /*@IDControlAssociation(12)*/
		ELSE (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}') /*@IDControlAssociation(12)*/
					+ ' and ' + 
					(SELECT top 1 CMR_Name 
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR.CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{627cb28d-8393-4878-b06f-38747946b792}') /*@IDControlAssociation(13)*/
		END),
[PostCode]=	(Select top 1 CAD_PostCode
			From iO_Client_AddressDetail CAD
			INNER JOIN iO_Link_MasterReference on iO_Link_MasterReference.LMR_IDLink_CMR = CAD.CAD_IDLink_CMR
			Where LMR_IDLink_Code_ID = PMR.RMR_ID
			AND CAD.CAD_IDLink_XAT = '{382c4074-1b80-4a5f-abc0-221571215da6}'/*@IDControlAddress(2)Residential */
			AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' /*@IDControlAssociation(12)*/),
[State]=	(Select top 1 CAD_State
			From iO_Client_AddressDetail CAD
			INNER JOIN iO_Link_MasterReference on iO_Link_MasterReference.LMR_IDLink_CMR = CAD.CAD_IDLink_CMR
			Where LMR_IDLink_Code_ID = PMR.RMR_ID
			AND CAD.CAD_IDLink_XAT = '{382c4074-1b80-4a5f-abc0-221571215da6}'/*@IDControlAddress(2)Residential */
			AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' /*@IDControlAssociation(12)*/),
[Country]=	(Select top 1 XSYSct_Description
			From iO_Control_SystemCountry CSC
			INNER JOIN iO_Client_AddressDetail on CAD_IDLink_Country = CSC.XSYSct_ID
			INNER JOIN iO_Link_MasterReference on iO_Link_MasterReference.LMR_IDLink_CMR = CAD_IDLink_CMR
			Where LMR_IDLink_Code_ID = PMR.RMR_ID
			AND CAD_IDLink_XAT = '{382c4074-1b80-4a5f-abc0-221571215da6}'/*@IDControlAddress(2)Residential */
			AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' /*@IDControlAssociation(12)*/),
[Membership]=	(Select FTN.FTNc_Numeric 
				From iO_Field_TypeNumeric FTN
				INNER JOIN iO_Field_MasterReference on iO_Field_MasterReference.FMRc_ID = FTN.FTNc_IDLink_FMRc
				Where FMRc_IDLink_XFDC = '{27ddb130-e2e6-416b-824d-829b2d54858d}'
				AND FMRc_IDLink_Code = PMR.RMR_ID),
[Interest Rate]=	(Select XRRd_Rate
					From iO_Control_ProductRateMaster
					INNER JOIN iO_Control_ProductRateDetail on iO_Control_ProductRateDetail.XRRd_IDLink_XRRm = XRRm_ID
					INNER JOIN iO_Product_ControlRate on iO_Product_ControlRate.RCR_IDLink_XRRm = XRRm_ID
					Where xrrm_id = '{ec853113-16c9-478f-a8a8-c95f7471a463}'
					AND RCR_IDLink_RMR = PMR.RMR_ID),
[Term]=	(Select (RLM_Term_Years * 12) + RLM_Term_Month
		From iO_Product_LoanMDT PLM
		Where PLM.RLM_IDLink_RMR = PMR.RMR_ID),
[Repayment Amount]=	(Select RLP_Fixed
					From iO_Product_LoanPayment PLP
					Where PLP.RLP_IDLink_RMR = PMR.RMR_ID
					AND PLP.RLP_Type = 1),
[Valuation Amount]=	(Select FTN.FTNc_Numeric
					From iO_Field_TypeNumeric FTN
					INNER JOIN iO_Field_MasterReference on iO_Field_MasterReference.FMRc_ID = FTN.FTNc_IDLink_FMRc
					Where FMRc_IDLink_XFDC = '{2e2b6eab-cc52-4d6a-be90-cbadf003c3e5}'
					AND FMRc_IDLink_Code = PMR.RMR_ID),
[Approved Amount]=	(Select RCB_CurrentValue
					FROM iO_Product_ControlBalance PCB
					WHERE PCB.RCB_IDLink_RMR = PMR.RMR_ID
					AND PCB.RCB_IDLink_XRBl = '{57af2f0d-9ec7-46c7-9468-cf633f9b4930}' /*@IDControlBalance(104)*/),
[Current Loan Balance]=	(Select RCB_CurrentValue
						FROM iO_Product_ControlBalance PCB
						WHERE PCB.RCB_IDLink_RMR = PMR.RMR_ID
						AND PCB.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' /*@IDControlBalance(???-CurrentBalance)*/),
[Settlement Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					And PCD.RCD_Type = 6), /*@LoanDateSettlement*/
[Last Pay Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					And PCD.RCD_Type = 4 /*@LoanDateMaturity*/),
[Description]=	XRP_Detail,
[Loan Status]= XSU_Detail,
[Discharge Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					AND PCD.RCD_Type = 3)/*@LoanDateDischarge*/
FROM iO_Product_MasterReference PMR
INNER JOIN iO_Control_ProductMaster on iO_Control_ProductMaster.XRP_ID = RMR_IDLink_XRP
INNER JOIN iO_Control_StatusMaster on iO_Control_StatusMaster.XSU_ID = RMR_IDLink_XSU
ORDER BY XSU_Detail
GO
