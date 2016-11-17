SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[sp_create_temp_forLCandBRANCHES_RepaymentDishonour_CRM]
AS
BEGIN
	SET NOCOUNT ON;

	DELETE
	FROM [reporting_loan].[dbo].[temptbl_LCandBRANCHES_Dishonour_CRM]

	INSERT INTO [reporting_loan].[dbo].[temptbl_LCandBRANCHES_Dishonour_CRM]
	SELECT iO_Client_MasterReference_1.CMR_Name
		,iO_Control_TransactionMaster.XTRM_Detail
		,convert(DATETIME, iO_Product_Transaction.RTM_DateC, 103) AS 'Date'
		,iO_Product_MasterReference.RMR_SeqNumber
	FROM iO_Client_MasterReference iO_Client_MasterReference(NOLOCK)
		,iO_Client_MasterReference iO_Client_MasterReference_1(NOLOCK)
		,iO_Control_TransactionGL iO_Control_TransactionGL(NOLOCK)
		,iO_Control_TransactionMaster iO_Control_TransactionMaster(NOLOCK)
		,iO_Link_MasterReference iO_Link_MasterReference(NOLOCK)
		,iO_Link_MasterReference iO_Link_MasterReference_1(NOLOCK)
		,iO_Product_MasterReference iO_Product_MasterReference(NOLOCK)
		,iO_Product_Transaction iO_Product_Transaction(NOLOCK)
	WHERE iO_Product_Transaction.RTM_IDLink_RMR = iO_Product_MasterReference.RMR_ID
		AND iO_Product_Transaction.RTM_IDLink_XTRM = iO_Control_TransactionMaster.XTRM_ID
		AND iO_Link_MasterReference.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID
		AND iO_Control_TransactionMaster.XTRM_ID = iO_Control_TransactionGL.XTRMgl_IDLink_XTRM
		AND iO_Link_MasterReference_1.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID
		AND iO_Link_MasterReference_1.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID
		AND iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference_1.CMR_ID
		AND (
			(iO_Link_MasterReference.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}')
			AND (iO_Link_MasterReference_1.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}')
			AND (iO_Product_Transaction.RTM_DateC > {ts '2014-02-01 00:00:00' }) --format(getdate(),'yyyy-MM-dd 00:00:00')
			AND (iO_Control_TransactionMaster.XTRM_Detail LIKE 'Money3\loan\payment\repayment dishonour%')
			--	AND (iO_Client_MasterReference_1.CMR_Name='Loan centre')
			)
END

GO
