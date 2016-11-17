SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spr_IdentifyRootClientForDuplication]
AS
BEGIN
	-- 0. Declare variables
	DECLARE @comparing_CMRSeqNum VARCHAR(256)
	DECLARE @root_CMRSeqNum VARCHAR(256)
	DECLARE @ConnectingDuplicateClients TABLE (ID UniqueIdentifier, Root_Client_SeqNum VARCHAR(256))
	DECLARE @rowAffected INT = 1

	WHILE @rowAffected > 0
	BEGIN
		DELETE FROM @ConnectingDuplicateClients

		INSERT INTO @ConnectingDuplicateClients
		SELECT
			d2.ID, d1.Root_Client_SeqNum
		FROM DuplicatorClientInfo d1
		JOIN DuplicatorClientInfo d2 ON d2.Client_SeqNum = d1.Duplicate_Client_SeqNum AND d1.Root_Client_SeqNum <> d2.Root_Client_SeqNum

		SET @rowAffected = @@ROWCOUNT

		UPDATE d
		SET Root_Client_SeqNum = c.Root_Client_SeqNum
		FROM DuplicatorClientInfo d
		JOIN @ConnectingDuplicateClients c ON c.ID = d.ID

		

	END
END

GO
