CREATE PROCEDURE [dbo].[Crystal_APVC_LoanReviewStatus]
AS
SELECT
[Name]=	(CASE
		WHEN (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR.CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{627cb28d-8393-4878-b06f-38747946b792}')  IS NULL
		THEN (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}') 
		ELSE (SELECT top 1 CMR_Name
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}') 
					+ ' and ' + 
					(SELECT top 1 CMR_Name 
					FROM iO_Client_MasterReference CMR
					INNER JOIN iO_Link_MasterReference on iO_link_MasterReference.LMR_IDLink_CMR = CMR.CMR_ID
					WHERE LMR_IDLink_Code_ID = PMR.RMR_ID
					AND LMR_IDLink_Association = '{627cb28d-8393-4878-b06f-38747946b792}') 
		END),
[Loan No]=RMR_SeqNumber,
[Membership]=	(Select FTN.FTNc_Numeric 
				From iO_Field_TypeNumeric FTN
				INNER JOIN iO_Field_MasterReference on iO_Field_MasterReference.FMRc_ID = FTN.FTNc_IDLink_FMRc
				Where FMRc_IDLink_XFDC = '{27ddb130-e2e6-416b-824d-829b2d54858d}'
				AND FMRc_IDLink_Code = PMR.RMR_ID),
[Approval Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					And RCD_Type = 2), 
[Approved Amount]=	(Select RCB_CurrentValue
					FROM iO_Product_ControlBalance PCB
					WHERE PCB.RCB_IDLink_RMR = PMR.RMR_ID
					AND PCB.RCB_IDLink_XRBl = '{57af2f0d-9ec7-46c7-9468-cf633f9b4930}' ),
[Current Loan Balance]=	(Select RCB_CurrentValue
						FROM iO_Product_ControlBalance PCB
						WHERE PCB.RCB_IDLink_RMR=PMR.RMR_ID
						AND  PCB.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' ),
[Settlement Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					And RCD_Type = 6), 
[Last Pay Date]=	(Select Cast(DatePart(dd,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(mm,RCD_CurrentStart) as varchar(3)) + '/' + Cast(DatePart(yyyy,RCD_CurrentStart) as varchar(4))
					From iO_Product_ControlDate PCD
					Where PCD.RCD_IDLink_RMR = PMR.RMR_ID
					And RCD_Type = 4 ),
[Description]=	XRP_Detail,
[Loan Status]= XSU_Detail
FROM io_Product_MasterReference PMR
INNER JOIN iO_Control_ProductMaster on iO_Control_ProductMaster.XRP_ID = PMR.RMR_IDLink_XRP
INNER JOIN iO_Control_StatusMaster on iO_Control_StatusMaster.XSU_ID = PMR.RMR_IDLink_XSU
ORDER BY XSU_Detail
GO
