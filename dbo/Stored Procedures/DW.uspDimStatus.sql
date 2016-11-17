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
CREATE PROCEDURE [DW].[uspDimStatus]
(
    @ExtractJobID INT
    ,@StartTime DateTime
)
AS
BEGIN
 
SET NOCOUNT ON
SET XACT_ABORT ON
 
    BEGIN TRY
 
        /* drop the temporary table if exists */
        IF OBJECT_ID('tempdb..#Temp') IS NOT NULL
            DROP TABLE #Temp
 
	TRUNCATE TABLE [Interim_Reporting].ExtAPL.[DimStatus]

	INSERT INTO [Interim_Reporting].ExtAPL.[DimStatus]
	([StatusPK]
	,[StatusDateEnter]
	,[StatusDateLeave]
	,[Status]
	,[LoanPK]
	,[ExtractLoadTime]
	,[ExtractJobId]
	--)
	--SELECT StatusPK
	--	,StatusDateEnter
	--	,StatusDateLeave
	--	,[Status]
	--	,LoanPK
	--	, @StartTime
	--	, @ExtractJobID
	----INTO [Interim_Reporting].ExtAPL.[DimStatus]
	--FROM (
	--	SELECT CSM.XSU_ID StatusPK
	--		,CAST(SMR_DateEnter AS DATE) StatusDateEnter
	--		,CAST(SMR_DateLeave AS DATE) StatusDateLeave
	--		,XSU_Detail AS [Status]
	--		,SMR.SMR_IDLink_Code LoanPK
	--		,row_number() OVER (
	--			PARTITION BY SMR.SMR_IDLink_Code
	--			ORDER BY SMR_SeqNumber DESC
	--			) AS 'rownumber'
	--	FROM dbo.iO_Status_MasterReference SMR(NOLOCK)
	--	INNER JOIN dbo.iO_Control_StatusMaster CSM(NOLOCK)
	--		ON SMR.SMR_IDLink_XSU = CSM.XSU_ID
	--	WHERE COALESCE(SMR.SMR_IDLink_Code, '') <> ''
	--	) S
	--WHERE rownumber = 1

	) SELECT CSM.XSU_ID StatusPK
		,NULL [StatusDateEnter]
		,NULL [StatusDateLeave]
		,CSM.XSU_Detail [Status]
		,RMR_ID [LoanPK]		
		--,PMR.[RMR_SeqNumber] LoanID
		, @StartTime
		, @ExtractJobID
	FROM iO_Product_MasterReference PMR(NOLOCK)
	INNER JOIN dbo.iO_Control_StatusMaster CSM(NOLOCK) 
		ON PMR.RMR_IDLink_XSU = CSM.XSU_ID 

	END TRY
 
    BEGIN CATCH
        /* rollback transaction if there is open transaction */
        IF @@TRANCOUNT > 0   ROLLBACK TRANSACTION
 
        /* throw the catched error to trigger the error in SSIS package */
        DECLARE @ErrorMessage NVARCHAR(4000),
                @ErrorNumber INT,
                @ErrorSeverity INT,
                @ErrorState INT,
                @ErrorLine INT,
                @ErrorProcedure NVARCHAR(200)
 
        /* Assign variables to error-handling functions that capture information for RAISERROR */
        SELECT  @ErrorNumber = ERROR_NUMBER(), @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE(), @ErrorLine = ERROR_LINE(),
            @ErrorProcedure = ISNULL(ERROR_PROCEDURE(), '-')
 
        /* Building the message string that will contain original error information */
        SELECT  @ErrorMessage = N'Error %d, Level %d, State %d, Procedure %s, Line %d, '
         + 'Message: ' + ERROR_MESSAGE()
 
        /* Raise an error: msg_str parameter of RAISERROR will contain the original error information */
        RAISERROR (@ErrorMessage, @ErrorSeverity, 1, @ErrorNumber,
            @ErrorSeverity, @ErrorState, @ErrorProcedure, @ErrorLine)
    END CATCH
 
    --Finally Section
        /* clean up the temporary table */
 
        IF OBJECT_ID('tempdb..#Temp') IS NOT NULL
            DROP TABLE #Temp
 
 
 
END

GO
