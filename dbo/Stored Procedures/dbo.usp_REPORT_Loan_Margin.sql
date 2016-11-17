SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_REPORT_Loan_Margin]
AS
SET NOCOUNT ON

IF OBJECT_ID('tempdb..#Fees') IS NOT NULL
	DROP TABLE #Fees

SELECT LMR.LMR_IDLINK_Code_ID
	,RTM_Monthly.RTM_Value AS 'MonthlyFee'
	,RTM_Establish.RTM_Value AS 'EstablishmentFee'
	,RTM_Reschedule.RTM_Value AS 'RescheduleFee'
	,RTM_Arrears.RTM_Value AS 'ArrearsLetterFee'
	,RTM_Variation.RTM_Value AS 'VariationFee'
	,RTM_Dishonour.RTM_Value AS 'DishonourFee'
	,RTM_Credit.RTM_Value AS 'CreditFee'
	,RTM_Commission.RTM_Value AS 'CommissionFee'
INTO #Fees
FROM iO_Link_MasterReference LMR WITH (NOLOCK)
INNER JOIN iO_Link_MasterReference LMR_Branch WITH (NOLOCK) ON LMR.LMR_IDLINK_Code_ID = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Monthly WITH (NOLOCK)
	WHERE RTM_Monthly.RTM_IDLINK_XTRM = '{ea33d505-c29c-4afa-9018-303ac7a7ab89}' --// Money3\Fee\Loan\Monthly Fee 
	GROUP BY RTM_IDLINK_RMR
	) RTM_Monthly ON RTM_Monthly.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Establish WITH (NOLOCK)
	WHERE RTM_Establish.RTM_IDLINK_XTRM = '{6a4dfee3-1090-4ae2-9421-079da332406c}' --// Money3\Fee\Loan\Establishment Fee (Previously Mapped to Money3\Fee\Loan\Risk Premium)
	GROUP BY RTM_IDLINK_RMR
	) RTM_Establish ON RTM_Establish.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Reschedule WITH (NOLOCK)
	WHERE RTM_Reschedule.RTM_IDLINK_XTRM = '{524db6fd-1c71-47ab-9c8f-1d1841f05a29}' --// Money3\Fee\Loan\Reschedule Fee
	GROUP BY RTM_IDLINK_RMR
	) RTM_Reschedule ON RTM_Reschedule.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Arrears WITH (NOLOCK)
	WHERE RTM_Arrears.RTM_IDLINK_XTRM = '{5d85970a-fcd2-4e44-8367-8e7c85f90f30}' --// Money3\Fee\Loan\Arrears Letter Fee - New
	GROUP BY RTM_IDLINK_RMR
	) RTM_Arrears ON RTM_Arrears.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Variation WITH (NOLOCK)
	WHERE RTM_Variation.RTM_IDLINK_XTRM = '{66fccdf2-8609-4402-b55c-3c5026eacaa6}' --// Money3\Fee\Loan\Variation Fee
	GROUP BY RTM_IDLINK_RMR
	) RTM_Variation ON RTM_Variation.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Dishonour WITH (NOLOCK)
	WHERE RTM_Dishonour.RTM_IDLINK_XTRM = '{798f3a7c-3d4c-4aeb-8b3c-1e295b5b9b55}' --// Money3\Fee\Loan\Dishonour Fee (NSF) - Loan
	GROUP BY RTM_IDLINK_RMR
	) RTM_Dishonour ON RTM_Dishonour.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Credit WITH (NOLOCK)
	WHERE RTM_Credit.RTM_IDLINK_XTRM = '{7e4dc81d-b294-4d73-8fbb-f43aa564f8bd}' --// Money3\Fee\Loan\Credit Fee
	GROUP BY RTM_IDLINK_RMR
	) RTM_Credit ON RTM_Credit.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID
LEFT JOIN (
	SELECT RTM_IDLINK_RMR
		,Sum(RTM_Value) AS 'RTM_Value'
	FROM IO_Product_transaction RTM_Commission WITH (NOLOCK)
	WHERE RTM_Commission.RTM_IDLINK_XTRM = '{520934ac-5bd5-4e45-a58e-3105edb2ced9}' --// Money3\Commission\Commission Paid - Direct Credit (Previously Mapped to Money3\Fee\Broker Fee)
	GROUP BY RTM_IDLINK_RMR
	) RTM_Commission ON RTM_Commission.RTM_IDLINK_RMR = LMR.LMR_IDLINK_Code_ID

IF OBJECT_ID('tempdb..#CustomerType') IS NOT NULL
	DROP TABLE #CustomerType

SELECT ClientID
	,CASE 
		WHEN RowNum = 1
			THEN 'New'
		ELSE 'Repeat'
		END AS 'LoanType'
	,RMR_seqnumber
INTO #CustomerType
FROM (
	SELECT LMR.LMR_IDLINK_CMR AS 'ClientID'
		,ROW_NUMBER() OVER (
			PARTITION BY LMR.LMR_IDLINK_CMR ORDER BY RMR_seqnumber ASC
			) AS 'RowNum'
		,RMR_seqnumber
	FROM iO_Link_MasterReference LMR
	INNER JOIN IO_Product_masterreference ON LMR_IDLink_Code_ID = RMR_ID
	INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
		AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
		AND LMR_Branch.LMR_IDLINK_CMR IN (
			--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
			'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
			)
	WHERE LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
	) tbl

--IF OBJECT_ID('tempdb..#RCFe_TotalFee') IS NOT NULL
--	DROP TABLE #RCFe_TotalFee
--SELECT RMR.RMR_ID
--	,isnull(sum(RCFe_Fee.rcfe_value), 0) - isnull(sum(RCD_Discount.RCFe_Value), 0) AS 'Fees'
--INTO #RCFe_TotalFee
--FROM iO_Product_MasterReference RMR
--INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
--	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
--	AND LMR_Branch.LMR_IDLINK_CMR IN (
--		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
--		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
--		)
--LEFT JOIN io_product_controlfee RCFe_Fee ON RCFe_Fee.RCFe_IDLink_RMR = RMR.RMR_ID
--	AND RCFe_Fee.rcfe_type = 2
--LEFT JOIN iO_Product_ControlFee RCD_Discount ON RCD_Discount.RCFe_IDLink_RMR = RMR.RMR_ID
--	AND RCD_Discount.RCFe_Type = 130212
--	AND RCD_Discount.RCFe_IDLink_XTRM = '{fa33558d-7892-4f3f-a1ae-4dfd0fd7a703}' --//Money3\Fee\Loan\Application Fee Discount
--GROUP BY RMR.RMR_ID
IF OBJECT_ID('M3_main_rep..ZZ_Loan_Margin_Report') IS NOT NULL
	DROP TABLE M3_main_rep..ZZ_Loan_Margin_Report;

SELECT RMR.RMR_SeqNumber AS 'LoanNumber'
	,CMR.CMR_Name AS 'ClientName'
	,CSU.XSU_Detail AS 'CurrentStatus'
	--,ISNULL(RCFe_TotalFee.Fees, 0) AS 'ApprovedFee'
	--,ISNULL(PCD_Approved.RCB_CurrentValue, 0) - ISNULL(RCFe_TotalFee.Fees, 0) AS 'ApprovedLoanAmount'
	,ISNULL(PCD_Approved.RCB_CurrentValue, 0) AS 'TotalApprovedAmount'
	,CAST(RCD_Settled.RCD_CurrentStart AS DATE) AS 'SettlementDate'
	,CAST(RCD_Approved.RCD_CurrentStart AS DATE) AS 'ApprovedDate'
	,Fees.MonthlyFee
	,Fees.EstablishmentFee
	,Fees.RescheduleFee
	,Fees.ArrearsLetterFee
	,Fees.VariationFee
	,Fees.DishonourFee
	,Fees.CreditFee
	,Fees.CommissionFee
	,CT.LoanType
	,GETDATE() AS 'LoadTime'
INTO [M3_MAIN_REP].[dbo].ZZ_Loan_Margin_Report
FROM iO_Product_MasterReference RMR
INNER JOIN IO_LINK_Masterreference LMR ON LMR.LMR_IDLink_Code_ID = RMR_ID
	AND LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)
LEFT JOIN iO_Client_MasterReference CMR ON CMR.CMR_ID = LMR.LMR_IDLink_CMR
LEFT JOIN iO_Control_StatusMaster CSU ON CSU.XSU_ID = RMR.RMR_IDLink_XSU
--//Balances
LEFT JOIN IO_Product_ControlBalance PCD_Approved ON PCD_Approved.RCB_IDLink_RMR = RMR.RMR_ID
	AND PCD_Approved.RCB_IDLink_XRBl = '{57af2f0d-9ec7-46c7-9468-cf633f9b4930}' --//Loan\Standard\Approved
	--LEFT JOIN #RCFe_TotalFee RCFe_TotalFee ON RCFe_TotalFee.RMR_ID = RMR.RMR_ID
	--//Dates
LEFT JOIN IO_Product_ControlDate RCD_Settled WITH (NOLOCK) ON RCD_Settled.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Settled.RCD_Type = 6 --//Settlement Date
LEFT JOIN IO_Product_ControlDate RCD_Approved WITH (NOLOCK) ON RCD_Approved.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Approved.RCD_Type = 2 --//Approved Date
LEFT JOIN IO_Product_ControlDate RCD_Lodged WITH (NOLOCK) ON RCD_Lodged.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Lodged.RCD_Type = 106 --//Lodged Date
LEFT JOIN #CustomerType CT ON CT.RMR_seqnumber = RMR.RMR_Seqnumber
LEFT JOIN #Fees Fees ON Fees.LMR_IDLINK_Code_ID = RMR.RMR_ID
WHERE Cast(RCD_Lodged.RCD_CurrentStart AS DATE) > '2016-07-01'
--Cast(RCD_Lodged.RCD_CurrentStart AS DATE) BETWEEN '2016-06-01'AND '2016-06-30'
ORDER BY CurrentStatus

GO
