SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_MergeRoot]
AS
	BEGIN
		SELECT
			ROW_NUMBER() OVER (ORDER BY Root_Client_SeqNum) AS Line,
			Root_Client_SeqNum,
			HasFunded
		INTO #tmpDCI
		FROM (
			SELECT DISTINCT Root_Client_SeqNum, HasFunded
			FROM DuplicatorClientInfo
			--WHERE Root_Client_SeqNum = 484566
		) T

		DECLARE @i INT = (SELECT COUNT(1) FROM #tmpDCI)

		WHILE @i > 0
			BEGIN
				DECLARE @hasFunded BIT
				DECLARE @currentRoot VARCHAR(40)
				DECLARE @listDup VARCHAR(1000) = NULL

				SELECT 
					@currentRoot = Root_Client_SeqNum,
					@hasFunded = HasFunded
				FROM #tmpDCI 
				WHERE Line = @i

				

				SELECT @listDup = ISNULL(@listDup + ',', '') + Client_SeqNum FROM
				(
					SELECT DISTINCT Client_SeqNum FROM DuplicatorClientInfo	WHERE Root_Client_SeqNum = @currentRoot
					UNION
					SELECT DISTINCT Duplicate_Client_SeqNum FROM DuplicatorClientInfo WHERE Root_Client_SeqNum = @currentRoot
				) T

				INSERT INTO DuplicateClientFinal VALUES (@currentRoot, @listDup, @hasFunded)

				SET @i -= 1
			END
	END

GO
