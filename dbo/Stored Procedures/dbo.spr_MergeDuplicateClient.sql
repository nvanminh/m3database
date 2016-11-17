SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spr_MergeDuplicateClient]
AS
BEGIN
	-- 0. Declare variables
	DECLARE @runTime DATETIME = GETDATE()
	DECLARE @lsrt DATETIME 
	DECLARE @IsSuccess BIT = 0
	DECLARE @root_CMRSeq VARCHAR(256)
	DECLARE @Client_SeqNum VARCHAR(256)
	DECLARE @Duplicate_Client_SegNum VARCHAR(256)
	DECLARE @temp XML
	
	SELECT @lsrt = ISNULL(RunTime, '1900-1-1')
	FROM DuplicatorClientInfoProcessingHistory
	WHERE Process = 'Merge Duplicate Clients'
	
	IF (@lsrt IS NULL)
	BEGIN
		SET @lsrt = '1900-1-1'

		INSERT INTO DuplicatorClientInfoProcessingHistory
		VALUES(NEWID(), 'Merge Duplicate Clients', @lsrt, @IsSuccess)
	END

	/* TODO: Merge the duplicate clients into the Root Client */
	UPDATE c
	SET IsMergedWithAnother = 1
	FROM ComparatorClients c
	WHERE EXISTS (SELECT 1 FROM DuplicatorClientInfo WHERE Duplicate_Client_SeqNum = c.CMR_SeqNumber)
	
	SET @IsSuccess = 1
	
	DECLARE @xml XML = (
		SELECT
			-- RootClient	
			RootClient.Root_Client_SeqNum as CMR_ID, 
			-- DuplicateClient
			DuplicateClient.Client_SeqNum, DuplicateClient.Duplicate_Client_SeqNum,
			-- Detail
			Detail.Name, Detail.OriginValue, Detail.DuplicateValue
		FROM DuplicatorClientInfo RootClient
		JOIN (SELECT ID, Client_SeqNum, Duplicate_Client_SeqNum FROM DuplicatorClientInfo) DuplicateClient ON DuplicateClient.ID = RootClient.ID
		JOIN DuplicatorClientDetail Detail ON Detail.DuplicatorClientInfoID = DuplicateClient.ID
		FOR XML AUTO, ROOT ('DuplicateClients'), ELEMENTS XSINIL
	)

	DECLARE @fileName VARCHAR(200) = (SELECT 'F:\TMA\' + REPLACE(CONVERT(VARCHAR(10), GETDATE(), 101),'/',''))	
	DECLARE @isExists INT
	DECLARE @index INT = 1
	DECLARE @fileNameWithExt VARCHAR(200) = @fileName  + '.xml'
	exec master.dbo.xp_fileexist @fileNameWithExt, @isExists OUTPUT
  
	WHILE @isExists = 1
	BEGIN
		SET @fileNameWithExt = @fileName + '_' + CAST(@index AS VARCHAR)  + '.xml'
		exec master.dbo.xp_fileexist @fileNameWithExt, @isExists OUTPUT

		SET @index = @index + 1
	END		

	EXECUTE dbo.spr_SaveXMLVariableToFile @xml, @fileNameWithExt

	/* TODO: Error case */

	/* TODO: Update the last processing time for this step */
	UPDATE DuplicatorClientInfoProcessingHistory
	SET Runtime = @runTime, IsSuccess = 1
	WHERE Process = 'Merge Duplicate Clients' 

END
GO
