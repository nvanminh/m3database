SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



















-- =============================================
-- Author:		Axcess Consulting
-- Create date: 18/02/2008
-- Description:	Returns loan status as at specified date
--
-- PARAMETERS:
-- @accountID = account id (GUID)
-- @asAtDate = date to retrieve status for
--
-- RETURNS:
-- Status text for most recent status change on the specified date
-- =============================================
CREATE FUNCTION [dbo].[GetLastDateOfSuccessfulPaymentTbl] 
(
	-- Add the parameters for the function here
	@accountID int 
)
RETURNS table
AS
return
select (

		SELECT convert(varchar(20), max(isnull(RTM_DateC,'')),103) as latedate
	FROM iO_Client_MasterReference iO_Client_MasterReference
		,iO_Client_MasterReference iO_Client_MasterReference_1
		,iO_Control_TransactionMaster iO_Control_TransactionMaster
		,iO_Link_MasterReference iO_Link_MasterReference
		,iO_Link_MasterReference iO_Link_MasterReference_1
		,iO_Product_MasterReference iO_Product_MasterReference
		,iO_Product_Transaction iO_Product_Transaction
		,iO_Product_PaymentScheduleDetail iO_Product_PaymentScheduleDetail
	WHERE iO_Product_Transaction.RTM_IDLink_RMR = iO_Product_MasterReference.RMR_ID
		AND iO_Product_Transaction.RTM_IDLink_XTRM = iO_Control_TransactionMaster.XTRM_ID
		AND iO_Link_MasterReference.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID
		AND iO_Link_MasterReference_1.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID
		AND iO_Link_MasterReference_1.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID
		AND iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference_1.CMR_ID
		AND iO_Product_Transaction.RTM_ID = iO_Product_PaymentScheduleDetail.RPSD_IDLink_RTM
		AND iO_Link_MasterReference.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
		AND iO_Link_MasterReference_1.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}'
		--AND iO_Control_TransactionMaster.XTRM_IDText <> 'Payment (Direct Debit)'
		AND iO_Control_TransactionMaster.XTRM_IDText LIKE 'Payment%'
		AND iO_Control_TransactionMaster.XTRM_IDText NOT LIKE '%reversal%'
		AND iO_Product_PaymentScheduleDetail.RPSD_IDLink_Dishonour IS NULL
		AND iO_Product_MasterReference.RMR_SeqNumber = @accountID
		 )as [LastDateOfSuccessfulPayment]






GO
