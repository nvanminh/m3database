SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_GroupRootClient]
AS
	BEGIN
		DECLARE @MyTable TABLE (
			SeqNum VARCHAR(40)
		)

		DECLARE @tmpDCI TABLE (
			Client_SeqNum VARCHAR(40),
			Line INT,
			IsUpdated BIT
		)

		SELECT
			Client_SeqNum,
			ROW_NUMBER() OVER (ORDER BY Client_SeqNum) AS Line,
			0 AS IsUpdated
		INTO #tmpDCI
		FROM
		(
			SELECT DISTINCT
				Client_SeqNum
			FROM DuplicatorClientInfo	
		) D

		INSERT INTO @tmpDCI
			SELECT * FROM #tmpDCI

		DROP TABLE #tmpDCI

		DECLARE @i INT = (SELECT COUNT(1) FROM @tmpDCI)

		WHILE @i > 0
			BEGIN
				DELETE FROM @MyTable

				DECLARE @curRoot VARCHAR(40)
				DECLARE @isUpdated BIT

				SELECT 
					@curRoot = Client_SeqNum,
					@isUpdated = IsUpdated
				FROM @tmpDCI 
				WHERE Line = @i

				SET @i -= 1

				IF @isUpdated = 1
					BEGIN
						PRINT 'Pass the loop'
						CONTINUE
					END
				
				PRINT 'Start the loop'

				INSERT INTO @MyTable VALUES (@curRoot)

				DECLARE @hasItem INT = 1

				WHILE @hasItem > 0
					BEGIN
						SELECT
							Client_SeqNum,
							Duplicate_Client_SeqNum
						INTO #tmp
						FROM DuplicatorClientInfo 
						WHERE 
							IsUpdated = 0 AND 
							(
								Client_SeqNum IN (SELECT SeqNum FROM @MyTable)
								OR Duplicate_Client_SeqNum IN (SELECT SeqNum FROM @MyTable)
							)

						IF (SELECT COUNT(Client_SeqNum) FROM #tmp) > 0
							BEGIN
								SELECT
									ROW_NUMBER() OVER (ORDER BY Client_SeqNum) AS Line,
									Client_SeqNum,
									Duplicate_Client_SeqNum
								INTO #tmp2
								FROM #tmp

								DECLARE @flag INT = 0

								DECLARE @j INT = (SELECT COUNT(1) FROM #tmp2)
								WHILE @j > 0
									BEGIN
										DECLARE @cmrSeqNum VARCHAR(40)
										DECLARE @dupSeqNum VARCHAR(40)

										SELECT
											@cmrSeqNum = Client_SeqNum,
											@dupSeqNum = Duplicate_Client_SeqNum
										FROM #tmp2 
										WHERE Line = @j

										

										IF NOT EXISTS (SELECT 1 FROM @MyTable WHERE SeqNum = @cmrSeqNum)
											BEGIN
												INSERT INTO @MyTable VALUES (@cmrSeqNum)
												SET @flag += 1
											END
										ELSE
											

										IF NOT EXISTS (SELECT 1 FROM @MyTable WHERE SeqNum = @dupSeqNum)
											BEGIN
												INSERT INTO @MyTable VALUES (@dupSeqNum)
												SET @flag += 1
											END
										
										SET @j -= 1
									END

								DROP TABLE #tmp2

								IF @flag = 0
									SET @hasItem = 0
							END
						ELSE
							SET @hasItem = 0

						DROP TABLE #tmp
					END


				UPDATE DuplicatorClientInfo 
				SET 
					Root_Client_SeqNum = @curRoot,
					IsUpdated = 1
				WHERE 
					Client_SeqNum IN (SELECT SeqNum FROM @MyTable)
					OR Duplicate_Client_SeqNum IN (SELECT SeqNum FROM @MyTable)

				UPDATE @tmpDCI 
				SET 
					IsUpdated = 1
				WHERE 
					Client_SeqNum IN (SELECT SeqNum FROM @MyTable)
			END
		
	END

GO
