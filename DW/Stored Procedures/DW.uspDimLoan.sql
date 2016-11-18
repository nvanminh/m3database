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
 CREATE PROCEDURE [DW].[uspDimLoan] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY
		/* drop the temporary table if exists */
		IF OBJECT_ID('tempdb..#DimLoan') IS NOT NULL
			DROP TABLE #DimLoan

		
		SELECT PMR.RMR_ID LoanPK
			,PMR.RMR_SeqNumber LoanID
			,Term.RLM_Term_Month LoanTermMonth
			, SUBSTRING(CPP.[XRPu_Detail],1,50) LoanPurpose
			, SUBSTRING(Term.RLM_PurposeExplanation,1,512) PurposeExplanation
			,Freq.[Frequency]
			,LodgementDate.RCD_CurrentStart LodgementDate
			,ApprovedDate.RCD_CurrentStart ApprovedDate
			,SettledDate.RCD_CurrentStart SettledDate
			,DischargedDate.RCD_CurrentStart DischargedDate
			,Branch.CMR_ID branchPK
		INTO #DimLoan
		FROM dbo.iO_Product_MasterReference PMR (NOLOCK)
			LEFT JOIN	(SELECT LMR_Branch.LMR_IDLink_Code_ID, CMR_Branch.CMR_ID,row_number() OVER (PARTITION BY  LMR_Branch.LMR_IDLink_Code_ID, CMR_Branch.CMR_ID ORDER BY LMR_SeqNumber DESC) rownumber
						FROM  dbo.iO_Link_MasterReference LMR_Branch (NOLOCK)  		
						LEFT JOIN dbo.iO_Client_MasterReference CMR_Branch (NOLOCK)  
								ON LMR_Branch.LMR_IDLink_CMR = CMR_Branch.CMR_ID
						WHERE  LMR_Branch.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}'
						AND ISNULL(LMR_Branch.LMR_IDLink_Code_ID,'') <> ''
						AND ISNULL(CMR_Branch.CMR_ID,'') <> ''
						) Branch
				ON Branch.LMR_IDLink_Code_ID = PMR.RMR_ID
				AND Branch.rownumber = 1
		LEFT JOIN dbo.iO_Product_LoanMDT Term (NOLOCK)
			ON Term.RLM_IDLink_RMR = PMR.RMR_ID
		LEFT JOIN iO_Control_ProductPurpose CPP (NOLOCK)
			ON CPP.[XRPu_ID] =Term.RLM_IDLink_XRPu
		LEFT JOIN (		-- This should be payment details, -- other method is outstanding unprocessed payments, flag processed = 0
					SELECT RPSM_IDLink_RMR ,
						xfr_detail [Frequency]
					FROM io_product_paymentschedulemaster WITH (NOLOCK)
					INNER JOIN iO_Control_Frequency (NOLOCK)
						ON XFR_ID = RPSm_IDLink_Frequency
					) AS Freq
	ON Freq.RPSM_IDLink_RMR = PMR.RMR_ID
		LEFT JOIN dbo.iO_Product_ControlDate LodgementDate (NOLOCK)
			ON LodgementDate.RCD_IDLink_RMR = PMR.RMR_ID
				AND LodgementDate.RCD_Type = 106
		LEFT JOIN dbo.iO_Product_ControlDate ApprovedDate (NOLOCK) -- Secured
			ON ApprovedDate.RCD_IDLink_RMR = PMR.RMR_ID
				AND ApprovedDate.RCD_Type = 2
		LEFT JOIN dbo.iO_Product_ControlDate SettledDate (NOLOCK)
			ON SettledDate.RCD_IDLink_RMR = PMR.RMR_ID
				AND SettledDate.RCD_Type = 6
		LEFT JOIN dbo.iO_Product_ControlDate DischargedDate (NOLOCK)
			ON DischargedDate.RCD_IDLink_RMR = PMR.RMR_ID
				AND DischargedDate.RCD_Type = 3
		
		/*
	Logged date: 106
	Approved Date: 2
	Settled Date: 6
	Discharged Date: 3
	*/
		TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimLoan]

		INSERT INTO [Interim_Reporting].[ExtAPL].[DimLoan] (
			[LoanPK]
			,[DischargedDate]
			,[LodgementDate]
			,[ApprovedDate]
			,[SettledDate]
			)
		VALUES (
			- 1
			,'1900-01-01'
			,'1900-01-01'
			,'1900-01-01'
			,'1900-01-01'
			)
			,(
			- 2
			,'1900-01-01'
			,'1900-01-01'
			,'1900-01-01'
			,'1900-01-01'
			)


		INSERT INTO [Interim_Reporting].[ExtAPL].[DimLoan] (
			[LoanPK]
			,[LoanID]
			,[LoanTermMonth]
			,[Frequency]
			,[LoanPurpose]
			,[PurposeExplanation]
			,[LodgementDate]
			,[ApprovedDate]
			,[SettledDate]
			,[DischargedDate]
			,[BranchPK]
			,[ExtractLoadTime]
			,[ExtractJobId]
			)
		SELECT [LoanPK]
			,[LoanID]
			,[LoanTermMonth]
			,[Frequency]
			,[LoanPurpose]
			,[PurposeExplanation]
			,[LodgementDate]
			,[ApprovedDate]
			,[SettledDate]
			,[DischargedDate]
			,[BranchPK]
			,@StartTime
			,@ExtractJobID
		FROM #DimLoan


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
