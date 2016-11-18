SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[sp_GetMissingDDebBankDetailsALL]
	@StatusCode tinyint output,
	@StatusMessage varchar(8000) output
AS

BEGIN
-- SET N
SELECT count(DISTINCT rmr_id) as LoanCount
      
  FROM [iO_Product_PaymentScheduleDetail]
  left JOIN iO_Control_PaymentOptions on RPSD_IDLink_PaymentMethod = XPM_ID
  left join iO_Product_MasterReference on RPSD_IDLink_RMR = rmr_id
  left join iO_Product_PaymentScheduleMaster on RPSD_IDLink_RPSM = rpsm_id
  left join iO_Client_BankDetail on [RPSM_NominatedDirectDebitBankAccount] = CBD_ID
  
  WHERE
  XPM_Detail = 'Direct Debit'
  and CBD_AccountName is NULL
  
  /*and RPSD_PaymentDueDate BETWEEN @startdate AND @enddate*/
END
GO
