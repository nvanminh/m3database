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
				2015-11-26 Added LoadJunkDims sp
				2016-01-11 Added uspDimBroker

===================================================================================================================*/
CREATE PROCEDURE [DW].[uspRunAll]
AS
BEGIN
 
SET NOCOUNT ON
SET XACT_ABORT ON
 
    BEGIN TRY
 

DECLARE		@ExtractJobID INT = -99
DECLARE		@StartTime DateTime = GETDATE()


EXEC [DW].[uspDimLoan] @ExtractJobID,@StartTime
EXEC [DW].[uspDimStatus] @ExtractJobID,@StartTime
EXEC [DW].[uspDimProduct] @ExtractJobID,@StartTime
EXEC [DW].[uspDimStatusDetail] @ExtractJobID,@StartTime
EXEC [DW].[uspDimTransactionType] @ExtractJobID,@StartTime
EXEC [DW].[uspDimCustomer] @ExtractJobID,@StartTime
EXEC [DW].[uspDimBroker] @ExtractJobID,@StartTime
EXEC [DW].[uspLoadJunkDims] @ExtractJobID,@StartTime
EXEC [DW].[uspFactLoanTransaction] @ExtractJobID,@StartTime



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
