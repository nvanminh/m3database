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

History		:	2016-01-11 Sp Created by Dylan harvey 

===================================================================================================================*/
CREATE PROCEDURE [DW].[uspDimBroker] (
	@ExtractJobID INT
	,@StartTime DATETIME
	)
AS
BEGIN
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRY
	
	IF OBJECT_ID('tempdb..#Broker') IS NOT NULL
	DROP TABLE #Broker

	-- Broker
	SELECT 
	[BrokerPK],
	[LoanPK],
	[Broker]		

	INTO #Broker
	FROM (
		SELECT CMRBroker.CMR_Name [Broker],
			BrokerLink.lmr_idlink_code_id LoanPK,
			CMRBroker.CMR_ID BrokerPK,
			row_number() OVER (
				PARTITION BY BrokerLink.lmr_idlink_code_id ORDER BY CMRBroker.CMR_DateTime DESC
				) AS 'rownumber'
		FROM iO_Link_MasterReference AS BrokerLink(NOLOCK)
		LEFT JOIN io_client_masterreference AS CMRBroker(NOLOCK)
			ON CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR
		WHERE brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
			AND BrokerLink.lmr_idlink_code_id IS NOT NULL
			AND CMRBroker.CMR_Name IS NOT NULL
		) [Broker]
	WHERE rownumber = 1

	TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimBroker]

	INSERT INTO [Interim_Reporting].[ExtAPL].[DimBroker] 
	(
		[BrokerPK],
		[LoanPK],
		[Broker])
	VALUES 
	(	- 1,
		- 1,
		'No Value'),
	(	- 2,
		- 2,
		'UNKNOWN')
	INSERT INTO [Interim_Reporting].[ExtAPL].[DimBroker] 
	(
		[BrokerPK],
		[LoanPK],
		[Broker],
		[ExtractLoadTime],
		[ExtractJobID]	
		)
	SELECT 	[BrokerPK],
		[LoanPK],
		[Broker]	
		,@StartTime
		,@ExtractJobID	
	FROM #Broker



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
