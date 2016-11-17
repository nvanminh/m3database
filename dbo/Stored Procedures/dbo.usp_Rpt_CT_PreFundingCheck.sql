SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_Rpt_CT_PreFundingCheck]
AS
BEGIN
	SET NOCOUNT ON;

--//--------------------------------------------------------------------------------------------------------
--// Cash Train Loan
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempCashTrainLoan') IS NOT NULL
	DROP TABLE #TempCashTrainLoan;

WITH CTE_CashTrainLoan AS
(
SELECT
	RMR.RMR_ID
	,RMR.RMR_SeqNumber AS 'APL_LoanNo'
	,LMR_Branch.LMR_IDLink_CMR AS 'LMR_Branch_CMR'
	,LMR_Client.LMR_IDLink_CMR AS 'LMR_Client_CMR'
	,LMR_Refer.LMR_IDLink_CMR AS 'LMR_Refer_CMR'
FROM
	[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK)
INNER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Branch WITH (NOLOCK) ON LMR_Branch.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
INNER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Client WITH (NOLOCK) ON LMR_Client.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Client.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --// Loan\Principal Borrower
LEFT OUTER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Refer WITH (NOLOCK) ON LMR_Refer.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Refer.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
WHERE
	(LMR_Branch.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}' OR LMR_Refer.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}')
)

SELECT
	RMR_ID
	,LMR_Branch_CMR
	,LMR_Client_CMR
INTO
	#TempCashTrainLoan
FROM
	CTE_CashTrainLoan



--//--------------------------------------------------------------------------------------------------------
--// Cash Train Funding Loan
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempCashTrainLoanToFund') IS NOT NULL
	DROP TABLE #TempCashTrainLoanToFund;

WITH CTE_CashTrainLoanToFund AS
(
SELECT
	RMR.RMR_ID
	,RMR.RMR_SeqNumber AS 'APL_LoanNo'
	,LMR_Branch.LMR_IDLink_CMR AS 'LMR_Branch_CMR'
	,LMR_Client.LMR_IDLink_CMR AS 'LMR_Client_CMR'
	,LMR_Refer.LMR_IDLink_CMR AS 'LMR_Refer_CMR'
	,PT.RTM_DateE AS 'FundingEffectiveDate'
	,PT.RTM_Value AS 'RTM_DirectCredit_Value'
FROM
	[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK)
INNER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Branch WITH (NOLOCK) ON LMR_Branch.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
INNER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Client WITH (NOLOCK) ON LMR_Client.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Client.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --// Loan\Principal Borrower
INNER JOIN
	[dbo].[iO_Product_Transaction] PT WITH (NOLOCK) ON PT.RTM_IDLink_RMR = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Refer WITH (NOLOCK) ON LMR_Refer.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Refer.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
WHERE
	(LMR_Branch.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}' OR LMR_Refer.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}')
AND
	PT.RTM_TypeGhost <> 1
AND
	PT.RTM_TransferBankDC = 1
)

SELECT
	RMR_ID
	,LMR_Branch_CMR
	,LMR_Client_CMR
	,LMR_Refer_CMR
	,FundingEffectiveDate
	,RTM_DirectCredit_Value
INTO
	#TempCashTrainLoanToFund
FROM
	CTE_CashTrainLoanToFund



--//--------------------------------------------------------------------------------------------------------
--// Loan Date
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanDate') IS NOT NULL
	DROP TABLE #TempLoanDate;

WITH CTE_LoanDate AS
(
SELECT
	PivotTable.RMR_ID
	,PivotTable.[106] AS 'LodgeDate'
	,PivotTable.[2] AS 'ApprovedDate'
	,PivotTable.[6] AS 'SettlementDate'
FROM
	(
		SELECT
			TCTLTF.RMR_ID
			,PCD.RCD_Type
			,PCD.RCD_CurrentStart
		FROM
			[dbo].[#TempCashTrainLoanToFund] TCTLTF
		LEFT OUTER JOIN
			[dbo].[iO_Product_ControlDate] PCD WITH (NOLOCK) ON PCD.RCD_IDLink_RMR = TCTLTF.RMR_ID
	) AS tblSource
PIVOT
	(
		MAX(tblSource.RCD_CurrentStart)
		FOR tblSource.RCD_Type IN ([106], [2], [6])
	) AS PivotTable
)

SELECT
	RMR_ID
	,LodgeDate
	,ApprovedDate
	,SettlementDate
INTO
	#TempLoanDate
FROM
	CTE_LoanDate CLD



--//--------------------------------------------------------------------------------------------------------
--// Loan Weekly Surplus
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanWeeklySurplus') IS NOT NULL
	DROP TABLE #TempLoanWeeklySurplus;

WITH CTE_LoanWeeklySurplus AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY DSAT.DSA_SeqNumber DESC) AS 'RowNo'
	,TCTLTF.RMR_ID
	,DSAT.DSA_TWeeklySurplus
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_DataStorage_AssessmentTotals] DSAT ON DSAT.DSA_IDLink_RMR = TCTLTF.RMR_ID
)

SELECT
	RMR_ID
	,ISNULL(DSA_TWeeklySurplus, 0.00) AS 'DSA_TWeeklySurplus'
INTO
	#TempLoanWeeklySurplus
FROM
	CTE_LoanWeeklySurplus
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Loan Control Balances
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanControlBalance') IS NOT NULL
	DROP TABLE #TempLoanControlBalance;

WITH CTE_LoanControlBalance AS 
(
SELECT
	PivotTable.RMR_ID
	,ISNULL(PivotTable.[{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}], 0.00) AS 'ApplicationAmount'
	,ISNULL(PivotTable.[{57af2f0d-9ec7-46c7-9468-cf633f9b4930}], 0.00) AS 'ApprovedAmount'
	--,ISNULL(PivotTable.[{f5919175-53f4-425b-9db7-28af3a50d07f}], 0.00) AS 'CreditLimit'
	--,ISNULL(PivotTable.[{cf421ec7-af23-474c-9f8f-46e6b899075f}], 0.00) AS 'PrincipalStandardAmount'
	--,ISNULL(PivotTable.[{5b07c6ef-c9ee-46eb-96c3-000b84cdf299}], 0.00) AS 'PrincipalMoney3Amount'
	,ISNULL(PivotTable.[{a4eda45b-734f-4837-a987-d10abb4f584c}], 0.00) AS 'OfferAmount'
	,ISNULL(PivotTable.[{83e66690-1832-4fd5-855a-acbea23a6638}], 0.00) AS 'TotalLoan'
FROM
	(
		SELECT
			TCTLTF.RMR_ID
			,PCB.RCB_IDLink_XRBl
			,PCB.RCB_CurrentValue
		FROM
			[dbo].[#TempCashTrainLoanToFund] TCTLTF
		LEFT OUTER JOIN
			[dbo].[iO_Product_ControlBalance] PCB WITH (NOLOCK) ON PCB.RCB_IDLink_RMR = TCTLTF.RMR_ID
	) AS tblSource
PIVOT
	(
		MAX(tblSource.RCB_CurrentValue)
		FOR tblSource.RCB_IDLink_XRBl IN ([{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}]
										 ,[{57af2f0d-9ec7-46c7-9468-cf633f9b4930}]
										 --,[{f5919175-53f4-425b-9db7-28af3a50d07f}]
										 --,[{cf421ec7-af23-474c-9f8f-46e6b899075f}]
										 --,[{5b07c6ef-c9ee-46eb-96c3-000b84cdf299}]
										 ,[{a4eda45b-734f-4837-a987-d10abb4f584c}]
										 ,[{83e66690-1832-4fd5-855a-acbea23a6638}])
	) AS PivotTable
)

SELECT
	RMR_ID
	,ApplicationAmount
	,ApprovedAmount
	--,CreditLimit
	--,PrincipalStandardAmount
	--,PrincipalMoney3Amount
	,OfferAmount
	,TotalLoan
INTO
	#TempLoanControlBalance
FROM
	CTE_LoanControlBalance



--//--------------------------------------------------------------------------------------------------------
--// Loan Fees
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanControlFee') IS NOT NULL
	DROP TABLE #TempLoanControlFee;

WITH CTE_LoanControlFee AS
(
SELECT
	TCTLTF.RMR_ID
	,SUM(CASE WHEN (PCF.RCFe_Type = 2) THEN ISNULL(PCF.RCFe_Value, 0.00) ELSE 0.00 END) AS 'Fee'
	,SUM(CASE WHEN (PCF.RCFe_Type = 130212 AND PCF.RCFe_IDLink_XTRM = '{fa33558d-7892-4f3f-a1ae-4dfd0fd7a703}') THEN ISNULL(PCF.RCFe_Value, 0.00) ELSE 0.00 END) AS 'Discount'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Product_ControlFee] PCF WITH (NOLOCK) ON PCF.RCFe_IDLink_RMR = TCTLTF.RMR_ID
GROUP BY
	TCTLTF.RMR_ID
)

SELECT
	RMR_ID
	,Fee
	,Discount
INTO
	#TempLoanControlFee
FROM
	CTE_LoanControlFee



--//--------------------------------------------------------------------------------------------------------
--// Client Occupation
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempClientOccupation') IS NOT NULL
	DROP TABLE #TempClientOccupation;

WITH CTE_ClientOccupation AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.LMR_Client_CMR ORDER BY CIE.CED_SeqNumber DESC) AS 'RowNo'
	,TCTLTF.LMR_Client_CMR
	,CASE
		WHEN cClientOccupation.XCO_ID IS NULL THEN CIE.CED_IDLink_Occupation_C ELSE cClientOccupation.XCO_Detail
	END AS 'OccupationShow'
	,CASE
		WHEN cClientOccupation.XCO_ID IS NULL THEN 0 ELSE 1
	END AS 'IsValidOccupation'
	,cClientEmploymentBasis.XCEt_Detail AS 'EmploymentType'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Client_IndividualEmployment] CIE ON CIE.CED_IDLink_CMR = TCTLTF.LMR_Client_CMR
LEFT OUTER JOIN
	[dbo].[iO_Control_ClientOccupation] cClientOccupation ON cClientOccupation.XCO_ID = CIE.CED_IDLink_Occupation_C
LEFT OUTER JOIN
	[dbo].[iO_Control_ClientEmploymentBasis] cClientEmploymentBasis ON cClientEmploymentBasis.XCEt_ID = CIE.CED_IDLink_XCEt
)

SELECT
	LMR_Client_CMR
	,OccupationShow
	,IsValidOccupation
	,EmploymentType
INTO
	#TempClientOccupation
FROM
	CTE_ClientOccupation
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Salary and Payment Frequency
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanEmployerSalary') IS NOT NULL
	DROP TABLE #TempLoanEmployerSalary;

WITH CTE_LoanEmployerSalary AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY CII.CINc_SeqNumber DESC) AS 'RowNo'
	--,CII.CINc_IDLink_CMR
	,TCTLTF.RMR_ID
	,CII.CINc_SeqNumber
	,CII.CINc_Value AS 'Salary'
	,cFrequency.XFR_Detail AS 'PaymentFrequency'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Client_IndividualIncome] CII ON CII.CINc_IDLink_RMR = TCTLTF.RMR_ID
LEFT OUTER JOIN
	[dbo].[iO_Control_Frequency] cFrequency ON cFrequency.XFR_ID = CII.CINc_IDLink_XFR
WHERE
	CII.CINc_IDLink_XIN = '{0dd4ad69-a90b-452a-975d-44ed8dc029ea}' --// Salary
)

SELECT
	RMR_ID
	,Salary
	,PaymentFrequency
INTO
	#TempLoanEmployerSalary
FROM
	CTE_LoanEmployerSalary
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Government Benefits
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanGovernmentBenefits') IS NOT NULL
	DROP TABLE #TempLoanGovernmentBenefits;

WITH CTE_LoanGovernmentBenefits AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY CII.CINc_SeqNumber DESC) AS 'RowNo'
	--,CII.CINc_IDLink_CMR
	,TCTLTF.RMR_ID
	,CII.CINc_SeqNumber
	,CII.CINc_Value AS 'GovernmentBenefits'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Client_IndividualIncome] CII ON CII.CINc_IDLink_RMR = TCTLTF.RMR_ID
LEFT OUTER JOIN
	[dbo].[iO_Control_Frequency] cFrequency ON cFrequency.XFR_ID = CII.CINc_IDLink_XFR
WHERE
	CII.CINc_IDLink_XIN = '{a1ba6460-b096-4964-a866-ef481510c275}' --// Government Benefits
)

SELECT
	RMR_ID
	,GovernmentBenefits
INTO
	#TempLoanGovernmentBenefits
FROM
	CTE_LoanGovernmentBenefits
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Loan Payment Frequency
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanPaymentFrequency') IS NOT NULL
	DROP TABLE #TempLoanPaymentFrequency;

WITH CTE_LoanPaymentFrequency AS
(
SELECT
	TCTLTF.RMR_ID
	,cFrequency.XFR_Detail AS 'PaymentFrequency'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Product_PaymentScheduleMaster] PPSM WITH (NOLOCK) ON PPSM.RPSM_IDLink_RMR = TCTLTF.RMR_ID
LEFT OUTER JOIN
	[dbo].[iO_Control_Frequency] cFrequency WITH (NOLOCK) ON cFrequency.XFR_ID = PPSM.RPSM_IDLink_Frequency
GROUP BY
	TCTLTF.RMR_ID
	,cFrequency.XFR_Detail
)

SELECT
	RMR_ID
	,PaymentFrequency
INTO
	#TempLoanPaymentFrequency
FROM
	CTE_LoanPaymentFrequency



--//--------------------------------------------------------------------------------------------------------
--// Payment Schedule
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempPaymentScheduleDate') IS NOT NULL
	DROP TABLE #TempPaymentScheduleDate;

WITH CTE_PaymentSchedule AS
(
SELECT
	TCTLTF.RMR_ID
	,MIN(PPSD.RPSD_PaymentDueDate) AS 'FirstPaymentDate'
	,MAX(PPSD.RPSD_PaymentDueDate) AS 'LastPaymentDate'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Product_PaymentScheduleDetail] PPSD WITH (NOLOCK) ON PPSD.RPSD_IDLink_RMR = TCTLTF.RMR_ID
GROUP BY
	TCTLTF.RMR_ID
)

SELECT
	RMR_ID
	,FirstPaymentDate
	,LastPaymentDate
INTO
	#TempPaymentScheduleDate
FROM
	CTE_PaymentSchedule



--//--------------------------------------------------------------------------------------------------------
--// Repayment Amount
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempLoanRepaymentAmount') IS NOT NULL
	DROP TABLE #TempLoanRepaymentAmount;

WITH CTE_LoanRepaymentAmount AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY PPSD.RPSD_PaymentDueDate ASC) AS 'RowNo'
	,TCTLTF.RMR_ID
	,PPSD.RPSD_PaymentDueDate
	,PPSD.RPSD_TotalPaymentAmount
	,CASE
		WHEN PPSD.RPSD_IDLink_Frequency = '{52A3A7A8-AF07-4327-B5AA-B66FB4288206}' THEN 'Month'
		WHEN PPSD.RPSD_IDLink_Frequency = '{FC99A346-78A0-44fd-9E4F-A4DC9E926EFB}' THEN 'Weekly'
		WHEN PPSD.RPSD_IDLink_Frequency = '{529F0DF2-3394-4e32-B336-895699D75488}' THEN 'Fortnightly'
	END AS 'PaymentFrequeyncy'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Product_PaymentScheduleDetail] PPSD WITH (NOLOCK) ON PPSD.RPSD_IDLink_RMR = TCTLTF.RMR_ID
)

SELECT
	RMR_ID
	,RPSD_TotalPaymentAmount AS 'RepaymentAmount'
INTO
	#TempLoanRepaymentAmount
FROM
	CTE_LoanRepaymentAmount
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Product C4
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempProductC4') IS NOT NULL
	DROP TABLE #TempProductC4;

WITH CTE_ProductC4 AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY PCA.RCA_ID DESC) AS 'RowNo'
	,TCTLTF.RMR_ID
	,PCA.RCA_A1
	,PCA.RCA_A2
	,PCA.RCA_A3
	,PCA.RCA_A4
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[WebPortal].[ProductC4Answer] PCA WITH (NOLOCK) ON PCA.RCA_IDLink_RMR = TCTLTF.RMR_ID
)

SELECT
	RMR_ID
	,RCA_A1
	,RCA_A2
	,RCA_A3
	,RCA_A4
INTO
	#TempProductC4
FROM
	CTE_ProductC4
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Approval
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempApproval') IS NOT NULL
	DROP TABLE #TempApproval;

WITH CTE_Approval AS
(
SELECT
	ROW_NUMBER() OVER (PARTITION BY TCTLTF.RMR_ID ORDER BY LMR_Approval.LMR_SeqNumber DESC) AS 'RowNo'
	,TCTLTF.RMR_ID
	,CMR_Approval.CMR_ID AS 'Approval_CMR_ID'
	,CMR_Approval.CMR_Name AS 'Approval_CMR_Name'
FROM
	[dbo].[#TempCashTrainLoanToFund] TCTLTF
LEFT OUTER JOIN
	[dbo].[iO_Link_MasterReference] LMR_Approval WITH (NOLOCK) ON LMR_Approval.LMR_IDLink_Code_ID = TCTLTF.RMR_ID
LEFT OUTER JOIN
	[dbo].[iO_Client_MasterReference] CMR_Approval WITH (NOLOCK) ON CMR_Approval.CMR_ID = LMR_Approval.LMR_IDLink_CMR
WHERE
	LMR_Approval.LMR_IDLink_Association = '{299646a4-d179-43c9-8fb0-4ac1af1d45b8}' --// Loan\Approval Officer
)

SELECT
	RMR_ID
	,Approval_CMR_Name
INTO
	#TempApproval
FROM
	CTE_Approval
WHERE
	RowNo = 1



--//--------------------------------------------------------------------------------------------------------
--// Create table for the report
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID(N'dbo.ZZ_Loan_PreFundingCheck', N'U') IS NULL
BEGIN
CREATE TABLE [dbo].[ZZ_Loan_PreFundingCheck](
	[DataLoadTime] [datetime] NOT NULL,
	[BranchName] [varchar](100) NULL,
	[ReferBranchName] [varchar](100) NULL,
	[FundingEffectiveDate] [date] NULL,
	[APL_LoanNo] [bigint] NULL,
	[CurrentLoanStatus] [varchar](200) NULL,
	[DC_Amount] [decimal](18, 2) NULL,
	[ApplicationAmount] [decimal](18, 2) NULL,
	[OfferAmount] [decimal](18, 2) NULL,
	[Fee] [decimal](18, 2) NULL,
	[ApprovedAmount] [decimal](18, 2) NULL,
	[Approval] [varchar](100) NULL,
	[FirstPaymentDate] [date] NULL,
	[LastPaymentDate] [date] NULL,
	[RepaymentAmount] [decimal](18, 2) NULL,
	[PaymentFrequency] [varchar](50) NULL,
	[WeeklySurplus] [decimal](18, 2) NULL,
	[EmploymentType] [varchar](50) NULL,
	[Salary] [decimal](18, 2) NULL,
	[GovernmentBenefits] [decimal](18, 2) NULL,
	[CouldBeNotPreFunding] [int] NULL,
	[Settlement_Date_Is_Null] [int] NULL,
	[No_Payment_Schedule] [int] NULL,
	[More_Than_1_Funded_SACC] [int] NULL,
	[Has_Default_Loan] [int] NULL,
	[Less_Than_4_Grace_Period] [int] NULL,
	[Less_Than_16_TermDay] [int] NULL,
	[Is_Not_Affordable] [int] NULL,
	[Benefits_Greater_Than_Total_Income] [int] NULL,
	[Incorrect_Fee] [int] NULL,
	[C4_Error] [int] NULL,
	[LESS_THAN_1200] [int] NULL,
	[IsUnderage] [int] NULL,
	[ApprovedAmount0] [int] NULL
) ON [PRIMARY]
END

TRUNCATE TABLE [dbo].[ZZ_Loan_PreFundingCheck];

DECLARE @DataLoadNow datetime = GETDATE();



--//--------------------------------------------------------------------------------------------------------
--// Run Final Reporting
--//--------------------------------------------------------------------------------------------------------
INSERT INTO
	[dbo].[ZZ_Loan_PreFundingCheck]
(
	DataLoadTime
	,BranchName
	,ReferBranchName
	,FundingEffectiveDate
	,APL_LoanNo
	,CurrentLoanStatus
	,DC_Amount
	,ApplicationAmount
	,OfferAmount
	,Fee
	,ApprovedAmount
	,Approval
	,FirstPaymentDate
	,LastPaymentDate
	,RepaymentAmount
	,PaymentFrequency
	,WeeklySurplus
	,EmploymentType
	,Salary
	,GovernmentBenefits
	,CouldBeNotPreFunding
	,Settlement_Date_Is_Null
	,No_Payment_Schedule
	,More_Than_1_Funded_SACC
	,Has_Default_Loan
	,Less_Than_4_Grace_Period
	,Less_Than_16_TermDay
	,Is_Not_Affordable
	,Benefits_Greater_Than_Total_Income
	,Incorrect_Fee
	,C4_Error
	,LESS_THAN_1200
	,IsUnderage
	,ApprovedAmount0
)
SELECT
	--tblFinalReport.RMR_ID
	@DataLoadNow AS 'DataLoadTime'
	,tblFinalReport.BranchName
	,tblFinalReport.ReferBranchName AS 'ReferBranchName'
	,tblFinalReport.FundingEffectiveDate
	,tblFinalReport.RMR_SeqNumber AS 'APL_LoanNo'
	,tblFinalReport.Current_LoanStatus AS 'CurrentLoanStatus'
	,tblFinalReport.RTM_DirectCredit_Value AS 'DC_Amount'
	,tblFinalReport.ApplicationAmount
	,tblFinalReport.OfferAmount
	,tblFinalReport.Fee
	,tblFinalReport.ApprovedAmount
	,tblFinalReport.Approval_CMR_Name AS 'Approval'
	,tblFinalReport.FirstPaymentDate
	,tblFinalReport.LastPaymentDate
	,tblFinalReport.RepaymentAmount
	,tblFinalReport.PaymentFrequency
	,tblFinalReport.DSA_TWeeklySurplus AS 'WeeklySurplus'
	,tblFinalReport.EmploymentType
	,tblFinalReport.Salary
	,tblFinalReport.GovernmentBenefits
	,CASE WHEN tblFinalReport.RTM_DirectCredit_Value <> (tblFinalReport.ApprovedAmount - tblFinalReport.Fee) THEN 1 ELSE 0 END AS 'CouldBeNotPreFunding'
	,CASE WHEN tblFinalReport.SettlementDate IS NULL THEN 1 ELSE 0 END AS 'Settlement_Date_Is_Null'
	,CASE WHEN tblFinalReport.FirstPaymentDate IS NULL THEN 1 ELSE 0 END AS 'No_Payment_Schedule'
	,CASE WHEN tblFinalReport.CurrentLoanCount > 1 THEN 1 ELSE 0 END AS 'More_Than_1_Funded_SACC'
	,CASE WHEN tblFinalReport.DefaultLoanCount > 0 THEN 1 ELSE 0 END AS 'Has_Default_Loan'
	,CASE WHEN tblFinalReport.GracePeriod < 4 THEN 1 ELSE 0 END AS 'Less_Than_4_Grace_Period'
	,CASE WHEN tblFinalReport.TermDay < 16 THEN 1 ELSE 0 END AS 'Less_Than_16_TermDay'
	--,CASE WHEN (tblFinalReport.DSA_TWeeklySurplus * (52.00 / 12.00) * 2.50 / (1.20 + (tblFinalReport.TermMonth * 4.00 / 100.00))) < (tblFinalReport.ApprovedAmount - tblFinalReport.Fee) THEN 1 ELSE 0 END AS 'Is_Not_Affordable'
	,CASE WHEN
	(ISNULL(tblFinalReport.RepaymentAmount, 0.00) / (CASE
		WHEN tblFinalReport.PaymentFrequency = 'Monthly' THEN 52.18 / 12
		WHEN tblFinalReport.PaymentFrequency = 'Fortnightly' THEN 2
		ELSE 1
	END)) > tblFinalReport.DSA_TWeeklySurplus THEN 1 ELSE 0 END AS 'Is_Not_Affordable'
	,CASE WHEN ISNULL(tblFinalReport.GovernmentBenefits, 0.00) > ISNULL(tblFinalReport.Salary, 0.00) THEN 1 ELSE 0 END AS 'Benefits_Greater_Than_Total_Income'
	,CASE WHEN CAST(((tblFinalReport.ApprovedAmount - tblFinalReport.Fee) * ((4.00 / 100.00 * tblFinalReport.TermMonth) + (20.00 / 100.00))) AS decimal(16, 2)) <> CAST(tblFinalReport.Fee AS decimal(16, 2)) THEN 1 ELSE 0 END AS 'Incorrect_Fee'
	,tblFinalReport.C4_Error
	,CASE WHEN (tblFinalReport.Salary + tblFinalReport.GovernmentBenefits) < (1200.00 / 52.18 * 12) THEN 1 ELSE 0 END AS 'LESS_THAN_1200'
	,CASE WHEN tblFinalReport.Age < 18 THEN 1 ELSE 0 END AS 'IsUnderage'
	,CASE WHEN tblFinalReport.ApprovedAmount <= 0.00 THEN 1 ELSE 0 END AS 'ApprovedAmount0'
FROM
(
SELECT
	RMR.RMR_ID
	,TCTLTF.LMR_Client_CMR
	,CAST(DATEDIFF(HOUR, CTI.CTI_DOB, GETDATE()) / (365.23076923074 * 24) AS int) AS 'Age'
	,CMR_Branch.CMR_Name AS 'BranchName'
	,CMR_Refer.CMR_Name AS 'ReferBranchName'
	,cProductMaster.XRP_Detail AS 'ProductName'
	,TCTLTF.FundingEffectiveDate
	,TCTLTF.RTM_DirectCredit_Value
	,RMR.RMR_SeqNumber
	,cLoanStatus.XSU_Detail AS 'Current_LoanStatus'
	,TLCB.ApplicationAmount
	,TLCB.OfferAmount
	,(ISNULL(TLCF.Fee, 0.00) - ISNULL(TLCF.Discount, 0.00)) AS 'Fee'
	,TLCB.ApprovedAmount
	,TA.Approval_CMR_Name
	,TLD.SettlementDate
	,TPSD.FirstPaymentDate
	,TPSD.LastPaymentDate
	,TLRA.RepaymentAmount
	,TLPF.PaymentFrequency
	,TCO.EmploymentType
	,ISNULL(TLES.Salary, 0.00) AS 'Salary'
	,ISNULL(TLGB.GovernmentBenefits, 0.00) AS 'GovernmentBenefits'
	,(
		SELECT
			COUNT(*)
		FROM
			[dbo].[#TempCashTrainLoan] TCTL_CurrentLoan WITH (NOLOCK)
		INNER JOIN
			[dbo].[iO_Product_MasterReference] RMR_CurrentLoan WITH (NOLOCK) ON TCTL_CurrentLoan.RMR_ID = RMR_CurrentLoan.RMR_ID
		WHERE
			RMR_CurrentLoan.RMR_IDLink_XRP = '{e9334684-a176-4222-8b9d-c312b86a300d}' --// Money3\MonthlyLoan
		AND
			RMR_CurrentLoan.RMR_IDLink_XSU IN 
								(
								--// Funded/Current Status
								'{0927edfd-d426-445d-90b8-5adebd0de1d3}'	--// Money3\LACC - Hold
								,'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}'	--// Money3\Current
								,'{9109145f-6143-4d0e-96b5-687edb0f1ad5}'	--// Money3\Arrears - Arrears Letter
								,'{93ba842a-8662-4657-b464-11f609b8bed8}'	--// Money3\Arrears - Special Arrangement
								,'{ae06255a-2fc5-4b90-a081-af3969dbdb82}'	--// Money3\Arrears - Payment Plan
								,'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}'	--// Money3\Arrears - Hardship
								,'{a9ca9714-843f-4992-a666-9b30d67c9dfc}'	--// Money3\Collections\InActive\Bankrupt
								,'{9a2d8920-3f6b-4176-b353-921015f1305f}'	--// Money3\Collections\InActive\Dormant
								,'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}'	--// Money3\Collections\Active\Veda Listing
								,'{ed4bb803-271d-42db-9cef-6b0f6fb68832}'	--// Money3\Collections\Active\Legal\Legal
								,'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}'	--// Money3\Internal Current
								,'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}'	--// Money3\Collections\Active\Do Not Action
								,'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}'	--// Money3\Collections\Active\Legal\Served
								,'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}'	--// Money3\Collections\InActive\Settled
								,'{86a692cf-76d5-4895-a833-9fbe9052e4d2}'	--// Money3\Collections\Active\Legal\Court
								,'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}'	--// Money3\Collections\Active\Part X
								,'{4177f94f-193b-4190-b1c0-3036908dfef8}'	--// Money3\Collections\Active\External
								,'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}'	--// Money3\Collections\Active\Part IX
								,'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}'	--// Money3\Collections\Active\Still to Action
								,'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}'	--// Money3\Collections\Active\Payment Plan
								,'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}'	--// Money3\Collections\Active\Investigating
								,'{06fae08f-35a9-4515-9d2c-757a8207a73c}'	--// Money3\Collections\Active\Legal\Judgement
								,'{199b584a-177d-46be-bb48-84c81e374070}'	--// Money3\Arrears - Recoveries - HOLD
								,'{1edfeab9-8e15-4afd-926a-26c8befbaaed}'	--// Money3\Collections\Active\DDR Attempt
								,'{42328faf-e454-402a-b0f5-99fe9ca3c64f}'	--// Money3\Discharged - Written Off
								,'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}'	--// Money3\Arrears - Recoveries
								,'{491185db-f116-403a-a86b-484be79c6433}'	--// Money3\Collections\InActive\Dead File
								,'{4ccc61f0-a025-4a85-8164-1fad2812b297}'	--// Money3\Collections\Active\Valid Phone
								,'{4d75bf65-e93c-4741-b7df-bfea892112a2}'	--// Money3\Collections\Active\Legal\Attachment
								,'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}'	--// Money3\Arrears - Hold
								,'{56661393-78a1-4cda-8a7d-535fffa8fc5c}'	--// Money3\Arrears - Default
								) 
		AND
			RMR_CurrentLoan.RMR_ID <> RMR.RMR_ID
		AND
			TCTL_CurrentLoan.LMR_Client_CMR = TCTLTF.LMR_Client_CMR
	) AS 'CurrentLoanCount'
	,(
		SELECT
			COUNT(*)
		FROM
			[dbo].[#TempCashTrainLoan] TCTL_DefaultLoan WITH (NOLOCK)
		INNER JOIN
			[dbo].[iO_Product_MasterReference] RMR_DefaultLoan WITH (NOLOCK) ON TCTL_DefaultLoan.RMR_ID = RMR_DefaultLoan.RMR_ID
		WHERE
			RMR_DefaultLoan.RMR_IDLink_XRP = '{e9334684-a176-4222-8b9d-c312b86a300d}' --// Money3\MonthlyLoan
		AND
			RMR_DefaultLoan.RMR_IDLink_XSU IN 
								(
								--// Default Status
								'{9109145f-6143-4d0e-96b5-687edb0f1ad5}'	--// Money3\Arrears - Arrears Letter
								,'{93ba842a-8662-4657-b464-11f609b8bed8}'	--// Money3\Arrears - Special Arrangement
								,'{ae06255a-2fc5-4b90-a081-af3969dbdb82}'	--// Money3\Arrears - Payment Plan
								,'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}'	--// Money3\Arrears - Hardship
								,'{a9ca9714-843f-4992-a666-9b30d67c9dfc}'	--// Money3\Collections\InActive\Bankrupt
								,'{9a2d8920-3f6b-4176-b353-921015f1305f}'	--// Money3\Collections\InActive\Dormant
								,'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}'	--// Money3\Collections\Active\Veda Listing
								,'{ed4bb803-271d-42db-9cef-6b0f6fb68832}'	--// Money3\Collections\Active\Legal\Legal
								,'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}'	--// Money3\Internal Current
								,'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}'	--// Money3\Collections\Active\Do Not Action
								,'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}'	--// Money3\Collections\Active\Legal\Served
								,'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}'	--// Money3\Collections\InActive\Settled
								,'{86a692cf-76d5-4895-a833-9fbe9052e4d2}'	--// Money3\Collections\Active\Legal\Court
								,'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}'	--// Money3\Collections\Active\Part X
								,'{4177f94f-193b-4190-b1c0-3036908dfef8}'	--// Money3\Collections\Active\External
								,'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}'	--// Money3\Collections\Active\Part IX
								,'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}'	--// Money3\Collections\Active\Still to Action
								,'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}'	--// Money3\Collections\Active\Payment Plan
								,'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}'	--// Money3\Collections\Active\Investigating
								,'{06fae08f-35a9-4515-9d2c-757a8207a73c}'	--// Money3\Collections\Active\Legal\Judgement
								,'{199b584a-177d-46be-bb48-84c81e374070}'	--// Money3\Arrears - Recoveries - HOLD
								,'{1edfeab9-8e15-4afd-926a-26c8befbaaed}'	--// Money3\Collections\Active\DDR Attempt
								,'{42328faf-e454-402a-b0f5-99fe9ca3c64f}'	--// Money3\Discharged - Written Off
								,'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}'	--// Money3\Arrears - Recoveries
								,'{491185db-f116-403a-a86b-484be79c6433}'	--// Money3\Collections\InActive\Dead File
								,'{4ccc61f0-a025-4a85-8164-1fad2812b297}'	--// Money3\Collections\Active\Valid Phone
								,'{4d75bf65-e93c-4741-b7df-bfea892112a2}'	--// Money3\Collections\Active\Legal\Attachment
								,'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}'	--// Money3\Arrears - Hold
								,'{56661393-78a1-4cda-8a7d-535fffa8fc5c}'	--// Money3\Arrears - Default
								) 
		AND
			RMR_DefaultLoan.RMR_ID <> RMR.RMR_ID
		AND
			TCTL_DefaultLoan.LMR_Client_CMR = TCTLTF.LMR_Client_CMR
	) AS 'DefaultLoanCount'
	,(DATEDIFF(DAY, CAST(GETDATE() AS date), TPSD.FirstPaymentDate) + 1) - (DATEDIFF(WEEK, CAST(GETDATE() AS date), TPSD.FirstPaymentDate) * 2) - (CASE WHEN DATENAME(WEEKDAY, CAST(GETDATE() AS date)) = 'Sunday' THEN 1 ELSE 0 END) - (CASE WHEN DATENAME(WEEKDAY, TPSD.FirstPaymentDate) = 'Saturday' THEN 1 ELSE 0 END) AS 'GracePeriod'
	--,TLTD.TermDay
	,DATEDIFF(DAY, TPSD.FirstPaymentDate, TPSD.LastPaymentDate) AS 'TermDay'
	,(((YEAR(TPSD.LastPaymentDate) - YEAR(CAST(GETDATE() AS date))) * 12) + (MONTH(TPSD.LastPaymentDate) - MONTH(CAST(GETDATE() AS date))) + (CASE WHEN DAY(TPSD.LastPaymentDate) > DAY(CAST(GETDATE() AS date)) THEN 1 ELSE 0 END)) AS 'TermMonth'
	,TLWS.DSA_TWeeklySurplus
	,CASE WHEN TPC4.RCA_A1 = 'Y' AND TPC4.RCA_A2 = 'Y' AND TPC4.RCA_A3 = 'N' AND TPC4.RCA_A4 = 'N' THEN 0 ELSE 1 END AS 'C4_Error'
FROM
	[#TempCashTrainLoanToFund] TCTLTF WITH (NOLOCK)
INNER JOIN
	[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK) ON RMR.RMR_ID = TCTLTF.RMR_ID
INNER JOIN
	[dbo].[iO_Client_MasterReference] CMR_Branch WITH (NOLOCK) ON CMR_Branch.CMR_ID = TCTLTF.LMR_Branch_CMR
LEFT OUTER JOIN
	[dbo].[iO_Client_TypeIndividual] CTI WITH (NOLOCK) ON CTI.CTI_IDLink_CMR = TCTLTF.LMR_Client_CMR
LEFT OUTER JOIN
	[dbo].[iO_Client_MasterReference] CMR_Refer WITH (NOLOCK) ON CMR_Refer.CMR_ID = TCTLTF.LMR_Refer_CMR
LEFT OUTER JOIN
	[dbo].[iO_Control_ProductMaster] cProductMaster WITH (NOLOCK) ON cProductMaster.XRP_ID = RMR.RMR_IDLink_XRP
LEFT OUTER JOIN
	[dbo].[iO_Control_StatusMaster] cLoanStatus WITH (NOLOCK) ON cLoanStatus.XSU_ID = RMR.RMR_IDLink_XSU
LEFT OUTER JOIN
	[dbo].[#TempLoanPaymentFrequency] TLPF WITH (NOLOCK) ON TLPF.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanRepaymentAmount] TLRA WITH (NOLOCK) ON TLRA.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanControlBalance] TLCB WITH (NOLOCK) ON TLCB.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanControlFee] TLCF WITH (NOLOCK) ON TLCF.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanDate] TLD WITH (NOLOCK) ON TLD.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempClientOccupation] TCO WITH (NOLOCK) ON TCO.LMR_Client_CMR = TCTLTF.LMR_Client_CMR
LEFT OUTER JOIN
	[dbo].[#TempLoanEmployerSalary] TLES WITH (NOLOCK) ON TLES.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanGovernmentBenefits] TLGB WITH (NOLOCK) ON TLGB.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempPaymentScheduleDate] TPSD WITH (NOLOCK) ON TPSD.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempLoanWeeklySurplus] TLWS WITH (NOLOCK) ON TLWS.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempProductC4] TPC4 WITH (NOLOCK) ON TPC4.RMR_ID = RMR.RMR_ID
LEFT OUTER JOIN
	[dbo].[#TempApproval] TA WITH (NOLOCK) ON TA.RMR_ID = RMR.RMR_ID
--WHERE
--	RMR.RMR_IDLink_XSU = '{8441da2e-2ace-4d19-9608-87a5c5acb5a8}' --// Money3\Current
) tblFinalReport
--WHERE
--	tblFinalReport.RMR_SeqNumber = 1683928
--ORDER BY
--	tblFinalReport.RMR_SeqNumber



--//--------------------------------------------------------------------------------------------------------
--// Tear down
--//--------------------------------------------------------------------------------------------------------
IF OBJECT_ID('tempdb..#TempCashTrainLoan') IS NOT NULL
	DROP TABLE #TempCashTrainLoan;

IF OBJECT_ID('tempdb..#TempCashTrainLoanToFund') IS NOT NULL
	DROP TABLE #TempCashTrainLoanToFund;

IF OBJECT_ID('tempdb..#TempLoanDate') IS NOT NULL
	DROP TABLE #TempLoanDate;

IF OBJECT_ID('tempdb..#TempLoanWeeklySurplus') IS NOT NULL
	DROP TABLE #TempLoanWeeklySurplus;

IF OBJECT_ID('tempdb..#TempLoanControlBalance') IS NOT NULL
	DROP TABLE #TempLoanControlBalance;

IF OBJECT_ID('tempdb..#TempLoanControlFee') IS NOT NULL
	DROP TABLE #TempLoanControlFee;

IF OBJECT_ID('tempdb..#TempClientOccupation') IS NOT NULL
	DROP TABLE #TempClientOccupation;

IF OBJECT_ID('tempdb..#TempLoanEmployerSalary') IS NOT NULL
	DROP TABLE #TempLoanEmployerSalary;

IF OBJECT_ID('tempdb..#TempLoanGovernmentBenefits') IS NOT NULL
	DROP TABLE #TempLoanGovernmentBenefits;

IF OBJECT_ID('tempdb..#TempLoanPaymentFrequency') IS NOT NULL
	DROP TABLE #TempLoanPaymentFrequency;

IF OBJECT_ID('tempdb..#TempPaymentScheduleDate') IS NOT NULL
	DROP TABLE #TempPaymentScheduleDate;

IF OBJECT_ID('tempdb..#TempLoanRepaymentAmount') IS NOT NULL
	DROP TABLE #TempLoanRepaymentAmount;

IF OBJECT_ID('tempdb..#TempProductC4') IS NOT NULL
	DROP TABLE #TempProductC4;

IF OBJECT_ID('tempdb..#TempApproval') IS NOT NULL
	DROP TABLE #TempApproval;


END



/*
SELECT
	*
FROM
	[dbo].[ZZ_Loan_PreFundingCheck]
ORDER BY
	FundingEffectiveDate ASC
	*/
GO
