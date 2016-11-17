SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_AF_Member_CTLoan_sel]
	@ClientGUID varchar(40)
AS
BEGIN

/* List Loans IDs taken from the View Products Button */
SELECT
	RMR_ID AS 'LoanGUID'
	,RMR_SeqNumber AS 'LoanID'
	,PDAT.RCD_CurrentStart AS 'SettleDate'
	,XRP_Detail AS 'Product'
	,XSU_Detail AS 'LoanStatus'
	,CONVERT(varchar(19), RCD.RCD_CurrentStart, 120) AS 'LodgeDate'
	,ISNULL(APP.RCB_CurrentValue, 0) AS 'ApplicationAmmount'
	,ISNULL(RCB_Offered.RCB_CurrentValue, 0) AS 'OfferedAmount'
	,(SELECT CAST(SUM((ISNULL(rtm.RTM_ValueDB, 0) - ISNULL(rtm.RTM_ValueCR, 0))) AS decimal(10, 2)) FROM iO_Product_Transaction rtm INNER JOIN iO_Control_TransactionBalance xtrmb ON rtm.RTM_IDLink_XTRM = xtrmb.XTRMb_IDLink_XTRM WHERE xtrmb.XTRMb_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' AND RTM_IDLink_RMR = RMR_ID) AS 'Balance'
	,(SELECT XRDr_Detail FROM iO_Product_LoanMDT LEFT OUTER JOIN iO_Control_ProductDeclineReason ON RLM_IDLink_XRDr = XRDr_ID WHERE RLM_IDLink_RMR = base.LMR_IDLink_Code_ID) AS 'ReasonDisplay'
FROM
	iO_Link_MasterReference base
INNER JOIN
	iO_Product_MasterReference ON RMR_ID = base.LMR_IDLink_Code_ID
LEFT OUTER JOIN
	iO_Control_StatusMaster ON XSU_ID = RMR_IDLink_XSU
LEFT OUTER JOIN
	iO_Control_ProductMaster ON RMR_IDLink_XRP = XRP_ID
LEFT OUTER JOIN
	iO_Product_ControlDate PDAT ON PDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID AND PDAT.RCD_Type = 6
LEFT OUTER JOIN
	iO_Product_ControlDate AS RCD (NOLOCK) ON RCD.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID AND RCD.RCD_Type = '106'
LEFT OUTER JOIN
	iO_Product_ControlBalance APP (NOLOCK) ON APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID AND APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'
LEFT OUTER JOIN
	iO_Product_ControlBalance RCB_Offered (NOLOCK) ON RCB_Offered.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID AND RCB_Offered.RCB_IDLink_XRBl = '{a4eda45b-734f-4837-a987-d10abb4f584c}'
WHERE
    RMR_IDLink_XRP IN 
	(
		'{e9334684-a176-4222-8b9d-c312b86a300d}',
		'{d126ebf7-3a52-4b55-8fa3-c80f963cf74f}',
		'{969e0757-1354-4346-aad5-bddf4c46cb89}',
		'{08bb93c4-e84d-4ad2-aca7-8479ec79e54e}',
		'{802d55c3-1bcc-4c9b-9083-613d407172d3}'
	)
AND
	base.LMR_IDLink_CMR = @ClientGUID
AND
	base.LMR_IDLink_Association IN ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}', '{733300d8-748f-4ab7-a2e9-6df9d8bcb63e}', '{15acabe9-4ca1-4f3b-8b80-b53d08fb7b30}', '{f3fdab19-241b-4243-861b-4d0a4509f127}')
AND
	(SELECT BN.CMR_ID
	 FROM iO_Link_MasterReference AS BA INNER JOIN iO_Client_MasterReference AS BN ON BN.CMR_ID = BA.LMR_IDLink_CMR
	 WHERE BA.LMR_IDLink_Code_ID = RMR_ID --// loan guild
	 AND BA.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
	) = '{cf65e2fb-5964-491a-9511-ca361149ebb2}'  --// Cashtrain Branch
ORDER BY
	RMR_ID


/* List Payments? Taken from Payment Schedule, except not limited by "Paid" */
SELECT TOP 1
	rpsd.RPSD_ID AS 'PaymentGUID'
	,rpsd.RPSD_IDLink_RMR AS 'LoanGUID'
	,rpsd.RPSD_PaymentDueDate AS 'DueDate'
	,rpsd.RPSD_TotalPaymentAmount AS 'Amount'
	,rpsd.RPSD_PaymentProcessed AS 'paid'
	,ISNULL(xpm.XPM_Detail, '') AS 'Type'
FROM
	iO_Product_PaymentScheduleDetail rpsd
INNER JOIN
	iO_Link_MasterReference base ON rpsd.RPSD_IDLink_RMR = base.LMR_IDLink_Code_ID
LEFT OUTER JOIN
	iO_Control_PaymentOptions xpm ON (xpm.XPM_ID = rpsd.RPSD_IDLink_PaymentMethod)
WHERE
	base.LMR_IDLink_CMR = @ClientGUID
AND
	base.LMR_IDLink_Association IN ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}', '{733300d8-748f-4ab7-a2e9-6df9d8bcb63e}', '{15acabe9-4ca1-4f3b-8b80-b53d08fb7b30}', '{f3fdab19-241b-4243-861b-4d0a4509f127}')
AND
	(SELECT BN.cmr_id
	 FROM iO_Link_MasterReference AS BA INNER JOIN iO_Client_MasterReference AS BN ON BN.CMR_ID = BA.LMR_IDLink_CMR
	 WHERE BA.LMR_IDLink_Code_ID = rpsd.RPSD_IDLink_RMR --// loan guild
	 AND BA.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
	) = '{cf65e2fb-5964-491a-9511-ca361149ebb2}'  --// Cashtrain Branch
AND
	RPSD_PaymentProcessed = 0
ORDER BY
	rpsd.RPSD_IDLink_RMR
	,rpsd.RPSD_PaymentDueDate ASC
	,rpsd.RPSD_SeqNumber

END

GO
