SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_IdentifyDuplicateClients]
AS
BEGIN
	DECLARE @runTime DATETIME = GETDATE()
	
	-- 0. Declare variables
	DECLARE @lsrt DATETIME 
	DECLARE @client_seqnum BIGINT
	DECLARE @isSuccess BIT

	-- 1. Check Last Merge is Success or Not
	SELECT @isSuccess = ISNULL(IsSuccess, 1)
	FROM DuplicatorClientInfoProcessingHistory
	WHERE Process = 'Merge Duplicate Clients'

	SET @isSuccess = ISNULL(@isSuccess, 1)

	IF (@isSuccess <> 1)
		RETURN

	-- 2. Get last success runtime & current runtime
	SELECT @lsrt = ISNULL(RunTime, '1900-1-1')
	FROM DuplicatorClientInfoProcessingHistory
	WHERE Process = 'Check Duplicate Clients'
	
	IF (@lsrt IS NULL)
	BEGIN
		SET @lsrt = '1900-1-1'

		INSERT INTO DuplicatorClientInfoProcessingHistory
		VALUES(NEWID(), 'Check Duplicate Clients', @lsrt, NULL)
	END
		
	-- 3. Get Source Clients
	IF OBJECT_ID('tempdb..##SourceClients') IS NOT NULL
		DROP TABLE ##SourceClients
	
	SELECT *
	INTO ##SourceClients
	FROM ComparatorClients
	WHERE IsMergedWithAnother = 0
	ORDER BY CMR_SeqNumber ASC

	-- 4. Get Candidate Clients
	SELECT DISTINCT CMR_SeqNumber
	INTO #CandidateClients
	FROM ##SourceClients
	WHERE CreatedDate > @lsrt
	ORDER BY CMR_SeqNumber ASC
	
	-- 5. Clean the Duplicate Client have processed before
	DELETE FROM DuplicatorClientDetail
	DELETE FROM DuplicatorClientInfo
	
	-- 6. Traverse each Candidate Client to lookup the duplicate ones
	DECLARE client_cursor CURSOR FOR
	SELECT DISTINCT CMR_SeqNumber
	FROM #CandidateClients

	-- 7. Fetch each record in New or Modified clients
	OPEN client_cursor
	FETCH NEXT FROM client_cursor INTO @client_seqnum 

	WHILE @@FETCH_STATUS = 0
	BEGIN

		EXEC spr_ClientsComparator @client_seqnum
		
		-- 8. Remove checked client from ALL clients
		DELETE 
		FROM ##SourceClients
		WHERE CMR_SeqNumber = @client_seqnum

		FETCH NEXT FROM client_cursor INTO @client_seqnum
	END

	-- 10. Close Cursor and Drop temp table
	CLOSE client_cursor
	DEALLOCATE client_cursor
	DROP TABLE ##SourceClients

	-- 9. Identify Root Clients 
	EXEC spr_IdentifyRootClientForDuplication

	-- 11. Update last success runtime
	UPDATE DuplicatorClientInfoProcessingHistory
	SET Runtime = @runTime, IsSuccess = 1
	WHERE Process = 'Check Duplicate Clients' 

END

GO
