SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

/* =================================================================================================================
Author		:	Dylan Harvey
Description	:	This is an interim stored procedure to load the dim. 
				This procedure will need to be altered to use a merge statement and potentially be a delta load.
				Load time, Modified time, JobID and Modified job id will need to be added to the schema as well.
				It currently uses 3 part naming, this will need to be fixed at some stage. 

History		:	2015-09-21 Sp Created by Dylan harvey 

===================================================================================================================*/
CREATE PROCEDURE [DW].[uspLoadJunkDims] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY

	IF OBJECT_ID('tempdb..#Assessor') IS NOT NULL
		DROP TABLE #Assessor

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimAssessor]

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_Assessor.CMR_Name,0,255) Assessor ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #Assessor
FROM dbo.iO_Client_MasterReference CMR_Assessor(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_Assessor(NOLOCK)
	ON LMR_Assessor.LMR_IDLink_CMR = CMR_Assessor.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_Assessor.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_Assessor.LMR_IDLink_Association = '{d8dcb018-54c1-4ba3-8b28-66973a09dc45}' -- Assessor 
	--AND LMR_PrincipalBorrower.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' -- Borrower


INSERT INTO [Interim_Reporting].[ExtAPL].[DimAssessor]
([LoanPK], [Assessor])
SELECT [LoanPK],[Assessor]
FROM #Assessor
WHERE rownumber = 1

-- DataEntryClerk

	IF OBJECT_ID('tempdb..#DataEntryClerk') IS NOT NULL
		DROP TABLE #DataEntryClerk

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimDataEntryClerk]

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_DataEntryClerk.CMR_Name,0,255) DataEntryClerk ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #DataEntryClerk
FROM dbo.iO_Client_MasterReference CMR_DataEntryClerk(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_DataEntryClerk(NOLOCK)
	ON LMR_DataEntryClerk.LMR_IDLink_CMR = CMR_DataEntryClerk.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_DataEntryClerk.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_DataEntryClerk.LMR_IDLink_Association ='{03949df9-d7ad-4f3b-910a-f8a5a4f9bb4e}' 

INSERT INTO [Interim_Reporting].[ExtAPL].[DimDataEntryClerk]
([LoanPK], DataEntryClerk)
SELECT [LoanPK],DataEntryClerk
FROM #DataEntryClerk
WHERE rownumber = 1


--Approval Officer

	IF OBJECT_ID('tempdb..#ApprovalOfficer') IS NOT NULL
		DROP TABLE #ApprovalOfficer

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimApprovalOfficer]

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_ApprovalOfficer.CMR_Name,0,255) ApprovalOfficer ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #ApprovalOfficer
FROM dbo.iO_Client_MasterReference CMR_ApprovalOfficer(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_ApprovalOfficer(NOLOCK)
	ON LMR_ApprovalOfficer.LMR_IDLink_CMR = CMR_ApprovalOfficer.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_ApprovalOfficer.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_ApprovalOfficer.LMR_IDLink_Association ='{299646a4-d179-43c9-8fb0-4ac1af1d45b8}'


INSERT INTO [Interim_Reporting].[ExtAPL].[DimApprovalOfficer]
([LoanPK], ApprovalOfficer)
SELECT [LoanPK],ApprovalOfficer
FROM #ApprovalOfficer
WHERE rownumber = 1




-- Settlement Officer

	IF OBJECT_ID('tempdb..#SettlementOfficer') IS NOT NULL
		DROP TABLE #SettlementOfficer

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimSettlementOfficer]

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_SettlementOfficer.CMR_Name,0,255) SettlementOfficer ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #SettlementOfficer
FROM dbo.iO_Client_MasterReference CMR_SettlementOfficer(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_SettlementOfficer(NOLOCK)
	ON LMR_SettlementOfficer.LMR_IDLink_CMR = CMR_SettlementOfficer.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_SettlementOfficer.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_SettlementOfficer.LMR_IDLink_Association ='{89517398-1927-4eb5-868e-640ed00bc956}'

INSERT INTO [Interim_Reporting].[ExtAPL].[DimSettlementOfficer]
([LoanPK], SettlementOfficer)
SELECT [LoanPK],SettlementOfficer
FROM #SettlementOfficer
WHERE rownumber = 1



--SELECT COUNT (*) FROM #SettlementOfficer
--WHERE rownumber > 1
-- Lender

	IF OBJECT_ID('tempdb..#Lender') IS NOT NULL
		DROP TABLE #Lender

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimLender]

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_Lender.CMR_Name,0,255) Lender ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #Lender
FROM dbo.iO_Client_MasterReference CMR_Lender(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_Lender(NOLOCK)
	ON LMR_Lender.LMR_IDLink_CMR = CMR_Lender.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_Lender.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_Lender.LMR_IDLink_Association ='{b71597db-b0e9-47ad-82c9-9d591227ad28}' --Loan\Lender

INSERT INTO [Interim_Reporting].[ExtAPL].[DimLender]
([LoanPK], Lender)
SELECT [LoanPK],Lender
FROM #Lender
WHERE rownumber = 1


-- Lending Team

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimLendingTeam]

	IF OBJECT_ID('tempdb..#LendingTeam') IS NOT NULL
		DROP TABLE #LendingTeam

SELECT  SUBSTRING(PMR.RMR_ID,0,40)LoanPK,
	SUBSTRING(CMR_LendingTeam.CMR_Name,0,255) LendingTeam ,
	CMR_DateTime,
	row_number() OVER (
		PARTITION BY PMR.RMR_SeqNumber ORDER BY CMR_DateTime DESC
		) AS 'rownumber' -- This is not a great solution but it works...	
INTO #LendingTeam
FROM dbo.iO_Client_MasterReference CMR_LendingTeam(NOLOCK)
LEFT JOIN dbo.iO_Link_MasterReference LMR_LendingTeam(NOLOCK)
	ON LMR_LendingTeam.LMR_IDLink_CMR = CMR_LendingTeam.CMR_ID
JOIN dbo.iO_Product_MasterReference PMR(NOLOCK)
	ON LMR_LendingTeam.LMR_IDLink_Code_ID = PMR.RMR_ID
WHERE LMR_LendingTeam.LMR_IDLink_Association ='{f53c875d-63b6-454e-a58e-d7cec8fc247c}' 

INSERT INTO [Interim_Reporting].[ExtAPL].[DimLendingTeam]
([LoanPK], LendingTeam)
SELECT [LoanPK],LendingTeam
FROM #LendingTeam
WHERE rownumber = 1

--	IF OBJECT_ID('tempdb..#Broker') IS NOT NULL
--		DROP TABLE #Broker

--TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimBroker]

---- Broker
--SELECT [Broker],LoanPK 
--INTO #Broker
--FROM (
--SELECT CMRBroker.CMR_Name [Broker],
--	BrokerLink.lmr_idlink_code_id LoanPK,
--	row_number() OVER (	PARTITION BY BrokerLink.lmr_idlink_code_id ORDER BY CMRBroker.CMR_DateTime DESC) AS 'rownumber'
--FROM iO_Link_MasterReference AS BrokerLink(NOLOCK)
--LEFT JOIN io_client_masterreference AS CMRBroker(NOLOCK)
--	ON CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR
--WHERE brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
--	AND BrokerLink.lmr_idlink_code_id IS NOT NULL
--	AND CMRBroker.CMR_Name IS NOT NULL
--) Broker
--WHERE rownumber = 1

--INSERT INTO [Interim_Reporting].[ExtAPL].[DimBroker]
--([LoanPK], [Broker])
--SELECT [LoanPK], [Broker] 
--FROM #Broker



	IF OBJECT_ID('tempdb..#BrokerContact') IS NOT NULL
		DROP TABLE #BrokerContact


TRUNCATE TABLE  [Interim_Reporting].[ExtAPL].[DimBrokerContact]

-- Broker contact
SELECT SUBSTRING([BrokerContact],0,255)[BrokerContact]
, SUBSTRING(LoanPK,0,40)LoanPK
INTO #BrokerContact
FROM (
SELECT CMRBrokerCont.CMR_Name [BrokerContact],
	BrokerConLink.lmr_idlink_code_id LoanPK,
	row_number() OVER (PARTITION BY BrokerConLink.lmr_idlink_code_id ORDER BY CMRBrokerCont.CMR_DateTime DESC) AS 'rownumber'
FROM iO_Link_MasterReference AS BrokerConLink(NOLOCK)
LEFT JOIN io_client_masterreference AS CMRBrokerCont(NOLOCK)
	ON CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR
WHERE BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}'
	AND BrokerConLink.lmr_idlink_code_id IS NOT NULL 
	AND  CMRBrokerCont.CMR_Name IS NOT NULL
	) BrokerContact
WHERE rownumber = 1

INSERT INTO [Interim_Reporting].[ExtAPL].[DimBrokerContact]
([LoanPK], [BrokerContact])
SELECT [LoanPK], [BrokerContact] 
FROM #BrokerContact

	END TRY

	BEGIN CATCH
		/* rollback transaction if there is open transaction */
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION

		/* throw the catched error to trigger the error in SSIS package */
		DECLARE @ErrorMessage NVARCHAR(4000)
			,@ErrorNumber INT
			,@ErrorSeverity INT
			,@ErrorState INT
			,@ErrorLine INT
			,@ErrorProcedure NVARCHAR(200)

		/* Assign variables to error-handling functions that capture information for RAISERROR */
		SELECT @ErrorNumber = ERROR_NUMBER()
			,@ErrorSeverity = ERROR_SEVERITY()
			,@ErrorState = ERROR_STATE()
			,@ErrorLine = ERROR_LINE()
			,@ErrorProcedure = ISNULL(ERROR_PROCEDURE(), '-')

		/* Building the message string that will contain original error information */
		SELECT @ErrorMessage = N'Error %d, Level %d, State %d, Procedure %s, Line %d, ' + 'Message: ' + ERROR_MESSAGE()

		/* Raise an error: msg_str parameter of RAISERROR will contain the original error information */
		RAISERROR (
				@ErrorMessage
				,@ErrorSeverity
				,1
				,@ErrorNumber
				,@ErrorSeverity
				,@ErrorState
				,@ErrorProcedure
				,@ErrorLine
				)
	END CATCH

	--Finally Section
	/* clean up the temporary table */
	IF OBJECT_ID('tempdb..#Temp') IS NOT NULL
		DROP TABLE #Temp
END

GO
