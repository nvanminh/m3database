SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spr_checkFullDuplicateClients]
AS
BEGIN
	-- 0. Declare variables
	DECLARE @lsrt DATETIME 
	DECLARE @crt DATETIME
	DECLARE @compare_result TINYINT
	DECLARE @cmr_id VARCHAR(40)
	DECLARE @compare_cmr_id VARCHAR(40)
	DECLARE @duplicate_client_ids VARCHAR(MAX)
	DECLARE @duplicatorClientInfo TABLE (CMR_ID VARCHAR(256), DuplicateCMR_IDs VARCHAR(MAX))

	-- 1. Get last success runtime & current runtime
	SELECT @lsrt = '1900-1-1'	
	SET @crt = GETDATE()

	-- 2. Get list all client to lookup
	-- TODO: Need a Merging flag to exclude the merged clients from the lookup table
	SELECT *
	INTO ##tempAllFullClients
	FROM ComparatorClients
	ORDER BY CMR_ID ASC

	-- 3. Get list of new or modified clients and push it into cursor
	-- TODO: use ModifiedDate instead of CreatedDate. Fix the transforming (u_sp_convert_ER_to_Table) as well
	SELECT DISTINCT CMR_ID
	INTO #TraversingClients
	FROM ##tempAllFullClients
	WHERE Created_date > @lsrt AND Created_date <= @crt
	ORDER BY CMR_ID ASC
	
	DECLARE client_cursor CURSOR FOR
	SELECT DISTINCT CMR_ID
	FROM #TraversingClients

	-- 3. Fetch each record in New or Modified clients
	OPEN client_cursor
	FETCH NEXT FROM client_cursor INTO @cmr_id 

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @duplicate_client_ids = ''
		
		EXEC spr_FullClientsComparator @cmr_id
		
		-- 3.4. Remove checked client from ALL clients
		DELETE 
		FROM ##tempAllFullClients
		WHERE CMR_ID = @cmr_id
		
		FETCH NEXT FROM client_cursor INTO @cmr_id
	END

	-- 4. Close Cursor and Drop temp table
	CLOSE client_cursor
	DEALLOCATE client_cursor
	-- Remove Global Temp Table
	DROP TABLE ##tempAllFullClients
END

GO
