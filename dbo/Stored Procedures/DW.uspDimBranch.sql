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
CREATE PROCEDURE [DW].[uspDimBranch] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY
		TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimBranch]

		INSERT INTO [Interim_Reporting].[ExtAPL].[DimBranch] (
			[BranchPK]
			,[BranchCompany]
			,[BranchGroup]
			,[BranchCountry]
			,[BranchEntity]
			,[BranchStateCode]
			,[BranchSubGroupState]
			,[BranchAreaCode]
			,[BranchArea]
			,[Branch]
			,[ABN]
			,[ACL]
			,[Shop]
			,[Street]
			,[Suburb]
			,[PostCode]
			,[Phone]
			,[Fax]
			)
		VALUES (
			'-2'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			,'UNKNOWN'
			)
			,(
			'-1'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			,'No Value'
			)

		INSERT INTO [Interim_Reporting].[ExtAPL].[DimBranch] (
			[BranchPK]
			,[BranchCompany]
			,[BranchGroup]
			,[BranchCountry]
			,[BranchEntity]
			,[BranchStateCode]
			,[BranchSubGroupState]
			,[BranchAreaCode]
			,[BranchArea]
			,[Branch]
			,[ABN]
			,[ACL]
			,[Shop]
			,[Street]
			,[Suburb]
			,[PostCode]
			,[Phone]
			,[Fax]
			,[ExtractLoadTime]
			,[ExtractJobId]
			)
		SELECT
			RTRIM(LTRIM([ID])) [BranchPK] 
			,RTRIM(LTRIM([Company])) [BranchCompany]
			,RTRIM(LTRIM([Group])) [BranchGroup]
			,RTRIM(LTRIM([Country])) [BranchCountry]
			,RTRIM(LTRIM([Entity])) [BranchEntity]
			,RTRIM(LTRIM([StateCode])) [BranchStateCode]
			,RTRIM(LTRIM([Sub Group State])) [BranchSubGroupState]
			,RTRIM(LTRIM([AreaCode])) [BranchAreaCode]
			,RTRIM(LTRIM([Area])) [BranchArea]
			,RTRIM(LTRIM([Branch])) [Branch]
			,RTRIM(LTRIM([ABN])) [ABN]
			,RTRIM(LTRIM([ACL])) [ACL]
			,RTRIM(LTRIM([Shop])) [Shop]
			,RTRIM(LTRIM([Street])) [Street]
			,RTRIM(LTRIM([Suburb])) [Suburb]
			,RTRIM(LTRIM([PostCode])) [PostCode]
			,RTRIM(LTRIM([Phone])) [Phone]
			,RTRIM(LTRIM([Fax])) [Fax]
			,@StartTime
			,@ExtractJobID
		FROM [Interim_Reporting].[dbo].[ExcelBranch]
			-- WHERE ID = '{2537b5aa-9e0f-49f9-a55b-892731571080}'
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
