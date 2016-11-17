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
CREATE PROCEDURE [DW].[uspDimProduct] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY
		/* drop the temporary table if exists */

		IF OBJECT_ID('tempdb..#TmpProduct') IS NOT NULL
			DROP TABLE #TmpProduct

		SELECT DISTINCT CPM.XRP_ID [ProductPk]
			,CPM.XRP_Detail [Product]
			,SUBSTRING(CPM.XRP_Detail, (Charindex('\', CPM.XRP_Detail) + 1), LEN(CPM.XRP_Detail) - Charindex('\', CPM.XRP_Detail) + 1) [ProductShortName]
			,CPM.XRP_ValueMin [ProductMINLoan]
			,CPM.XRP_ValueMax [ProductMAXLoan]
			,CPM.XRP_TermMin [ProductMinTerm]
			,CPM.XRP_TermMax [ProductMaxTerm]
			,CPM.XRP_DateStart [ProductStartDate]
			,CPM.XRP_DateEnd [ProductEndDate]
		INTO #TmpProduct
		FROM dbo.iO_Product_MasterReference PMR
		INNER JOIN dbo.iO_Control_ProductMaster CPM
			ON PMR.RMR_IDLink_XRP = CPM.XRP_ID

		TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimProduct]

		INSERT INTO [Interim_Reporting].[ExtAPL].[DimProduct] (
			[ProductPK]
			,[Product]
			,[ProductShortName]
			)
		VALUES (
			- 1
			,'No Value'
			,'No Value'
			)
			,(
			- 2
			,'UNKNOWN'
			,'UNKNOWN'
			)

		INSERT INTO [Interim_Reporting].[ExtAPL].[DimProduct] (
			[ProductPK]
			,[Product]
			,[ProductShortName]
			,[ProductMINLoan]
			,[ProductMAXLoan]
			,[ProductMinTerm]
			,[ProductMaxTerm]
			,[ProductStartDate]
			,[ProductEndDate]
			,[ExtractLoadTime]
			,[ExtractJobId]
			)
		SELECT [ProductPK]
			,[Product]
			,[ProductShortName]
			,[ProductMINLoan]
			,[ProductMAXLoan]
			,[ProductMinTerm]
			,[ProductMaxTerm]
			,[ProductStartDate]
			,[ProductEndDate]
			,@StartTime
			,@ExtractJobID
		FROM #tmpProduct
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
