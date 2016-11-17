SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [Fin].[CaptureIntitalPaymentSchedule]
	-- Add the parameters for the stored procedure here
@loanid varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
DECLARE @PaymenMasterID varchar(40)
DECLARE @ID table (ID varchar(40))

DELETE [Fin].[iO_Product_PaymentScheduleHistoryMaster] WHERE RPSM_IDLink_RMR = @loanid;
DELETE [Fin].[iO_Product_PaymentScheduleHistoryDetail] WHERE [RPSD_IDLink_RMR] = @loanid

SET @PaymenMasterID = 
(
SELECT IOPPSM.RPSM_ID FROM dbo.iO_Product_PaymentScheduleMaster AS IOPPSM WHERE ioppsm.RPSM_IDLink_RMR = @loanid
)
--Insert payment schedule master history--
INSERT INTO [Fin].[iO_Product_PaymentScheduleHistoryMaster]
([RPSM_PK]
,[RPSM_ID]
,[RPSM_IDLink_RMR]
,[RPSM_SeqNumber]
,[RPSM_NewMaturityDate]
,[RPSM_LoanStartDate]
,[RPSM_FirstRepaymentDate]
,[RPSM_IDLink_Frequency]
,[RPSM_LoanAmount]
,[RPSM_RescheduleFeeAmount]
,[RPSM_TotalLoanAmount]
,[RPSM_PaymentPlanAccount]
,[RPSM_IDLink_PaymentMethod]
,[RPSM_SettlementDate]
,[RPSM_CreateDate]
,[RPSM_Current])
OUTPUT inserted.RPSM_PK into @ID
SELECT 
NEWID(),
IOPPSM.RPSM_ID,
IOPPSM.RPSM_IDLink_RMR,
IOPPSM.RPSM_SeqNumber,
IOPPSM.RPSM_NewMaturityDate,
IOPPSM.RPSM_LoanStartDate,
IOPPSM.RPSM_FirstRepaymentDate,
IOPPSM.RPSM_IDLink_Frequency,
IOPPSM.RPSM_LoanAmount,
IOPPSM.RPSM_RescheduleFeeAmount,
IOPPSM.RPSM_TotalLoanAmount,
IOPPSM.RPSM_PaymentPlanAccount,
IOPPSM.RPSM_IDLink_PaymentMethod,
IOPPSM.rpsm_settlementdate,
GETDATE(),
1
FROM dbo.iO_Product_PaymentScheduleMaster AS IOPPSM WHERE IOPPSM.RPSM_ID = @PaymenMasterID

----Insert payment schedule detail--
INSERT INTO [Fin].[iO_Product_PaymentScheduleHistoryDetail]
([RPSD_PK]
,[RPSD_RPSM_FK]
,[RPSD_ID]
,[RPSD_IDLink_RMR]
,[RPSD_IDLink_RPSM]
,[RPSD_SeqNumber]
,[RPSD_PaymentDueDate]
,[RPSD_InterestRate]
,[RPSD_PrincipalAmount]
,[RPSD_InterestAmount]
,[RPSD_PaymentAmount]
,[RPSD_MonthlyFee]
,[RPSD_TotalPaymentAmount]
,[RPSD_IDLink_PaymentMethod]
,[RPSD_IDLink_Frequency]
,[RPSD_PaymentProcessed]
,[RPSD_IDLink_RTM]
,[RPSD_IDLink_Dishonour])
SELECT 
NEWID(),
(select ID FROM @ID),
IOPPSD.RPSD_ID,
IOPPSD.RPSD_IDLink_RMR,
IOPPSD.RPSD_IDLink_RPSM,
IOPPSD.RPSD_SeqNumber,
IOPPSD.RPSD_PaymentDueDate,
IOPPSD.RPSD_InterestRate,
IOPPSD.RPSD_PrincipalAmount,
IOPPSD.RPSD_InterestAmount,
IOPPSD.RPSD_PaymentAmount,
IOPPSD.RPSD_MonthlyFee,
IOPPSD.RPSD_TotalPaymentAmount,
IOPPSD.RPSD_IDLink_PaymentMethod,
IOPPSD.RPSD_IDLink_Frequency,
IOPPSD.RPSD_PaymentProcessed,
IOPPSD.RPSD_IDLink_RTM,
IOPPSD.RPSD_IDLink_Dishonour
FROM dbo.iO_Product_PaymentScheduleDetail AS IOPPSD WHERE IOPPSD.RPSD_IDLink_RMR = @loanid

END



GO
