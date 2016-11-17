SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Fin].[PopulateRate]
	-- Add the parameters for the stored procedure here
@LoanID varchar(40)
AS
BEGIN

	DECLARE @PaymenMasterID varchar(40);
	DECLARE @LoanPV decimal(18,4);
	DECLARE @LoanValues MyXirrTable;
	DECLARE @SettledDate datetime;

	SET @PaymenMasterID = 
	(SELECT IOPPSM.RPSM_PK FROM fin.iO_Product_PaymentScheduleHistoryMaster AS IOPPSM WHERE ioppsm.RPSM_IDLink_RMR = @LoanID)

	SET @LoanPV = 
	0 - (SELECT IOPPSM.RPSM_LoanAmount FROM fin.iO_Product_PaymentScheduleHistoryMaster AS IOPPSM WHERE ioppsm.RPSM_IDLink_RMR = @LoanID)

	SET @SettledDate = 
	(Select RCD_CurrentStart From  iO_Product_ControlDate  Where RCD_IDLink_RMR = @LoanID And RCD_Type = 6)

	INSERT @LoanValues
	VALUES (@LoanPV,convert(date,@SettledDate))
 
	INSERT @LoanValues
	SELECT IOPPSHD.RPSD_TotalPaymentAmount, IOPPSHD.RPSD_PaymentDueDate
	FROM fin.iO_Product_PaymentScheduleHistoryDetail AS IOPPSHD WHERE IOPPSHD.RPSD_RPSM_FK = @PaymenMasterID
	ORDER BY RPSD_PaymentDueDate asc

	INSERT INTO [Fin].[iO_Product_Def]
			   ([DEF_EIR_Value]
			   ,[DEF_DATE]
			   ,[DEF_RMR]
			   ,[DEF_Value])
		 VALUES
			   (dbo.XIRR(@LoanValues, 0.1)   * 100 
			   ,getdate()
			   ,@LoanID
			   ,0)

	END

GO
