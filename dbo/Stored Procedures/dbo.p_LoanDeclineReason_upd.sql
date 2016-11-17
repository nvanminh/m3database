SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_LoanDeclineReason_upd]
	@LoanNoList varchar(MAX)
AS
BEGIN

	IF OBJECT_ID('tempdb..#TempLoanNoList') IS NOT NULL
		DROP TABLE #TempLoanNoList;

	CREATE TABLE #TempLoanNoList 
	(
		LoanNo bigint,
		LoanRMR varchar(40),
		LoanInDecline int,
		LoanHaveDeclineReason int
	);

	DECLARE @Pos int;
	DECLARE @LoanNo bigint;
	DECLARE @ERR_LoanInDecline bigint;
	DECLARE @ERR_LoanHaveDeclineReason bigint;
	
	SET @LoanNoList = REPLACE(LTRIM(RTRIM(@LoanNoList)), ' ', '') + ',';
	SET @Pos = CHARINDEX(',', @LoanNoList, 1);

	BEGIN
		WHILE @Pos > 0
		BEGIN
			SET @LoanNo = LTRIM(RTRIM(LEFT(@LoanNoList, @Pos - 1)))

			IF @LoanNo <> ''
			BEGIN
				INSERT INTO #TempLoanNoList(LoanNo) VALUES (CAST(@LoanNo AS bigint));
			END

			SET @LoanNoList = RIGHT(@LoanNoList, LEN(@LoanNoList) - @Pos);
			SET @Pos = CHARINDEX(',', @LoanNoList, 1);
		END
	END

	--// UPDATE RMR
	UPDATE
		TLNL
	SET
		TLNL.LoanRMR = RMR.RMR_ID
	FROM
		#TempLoanNoList TLNL
	INNER JOIN
		[dbo].[iO_Product_MasterReference] RMR ON RMR.RMR_SeqNumber = TLNL.LoanNo


	UPDATE
		TLNL
	SET
		TLNL.LoanInDecline = 1
	FROM
		#TempLoanNoList TLNL
	INNER JOIN
		[dbo].[iO_Product_MasterReference] RMR ON RMR.RMR_ID = TLNL.LoanRMR
	WHERE
		RMR.RMR_IDLink_XSU IN
		(
			--// Decline
			SELECT XSU_ID FROM [dbo].[iO_Control_StatusMaster] WHERE XSU_ID IS NOT NULL AND XSU_Detail LIKE 'Money3\Application - Unsuccessful%' OR XSU_Detail LIKE 'Money3\Declined%' OR XSU_Detail LIKE '%Repeat Decline'
		)

	UPDATE
		TLNL
	SET
		TLNL.LoanHaveDeclineReason = (SELECT COUNT(*) FROM [dbo].[iO_Product_LoanMDT] PL WITH (NOLOCK) WHERE PL.RLM_IDLink_RMR = TLNL.LoanRMR)
	FROM
		#TempLoanNoList TLNL

	
	SELECT
		@ERR_LoanInDecline = COUNT(*)
	FROM
		#TempLoanNoList
	WHERE
		LoanInDecline IS NULL


	SELECT
		@ERR_LoanHaveDeclineReason = COUNT(*)
	FROM
		#TempLoanNoList
	WHERE
		LoanHaveDeclineReason <> 1

		
	IF (@ERR_LoanInDecline = 0 AND @ERR_LoanHaveDeclineReason = 0)
	BEGIN
		UPDATE
			PL
		SET
			PL.RLM_IDLink_XRDr = '{41396e97-eb8e-492c-92e3-c87703acf8ba}' --// Unsuccessful\Web Criteria - Criteria (System only, do not use)
		--SELECT
		--	PL.RLM_IDLink_XRDr
		FROM
			[dbo].[iO_Product_LoanMDT] PL
		INNER JOIN
			#TempLoanNoList TLNL ON TLNL.LoanRMR = PL.RLM_IDLink_RMR
		WHERE
			PL.RLM_IDLink_RMR IN (SELECT myList.LoanRMR FROM #TempLoanNoList myList WHERE myList.LoanRMR IS NOT NULL)

		SELECT
			LoanNo AS 'UpdateLoanNo'
			,LoanInDecline
			,LoanHaveDeclineReason
		FROM
			#TempLoanNoList;
	END
	ELSE
	BEGIN
		SELECT @ERR_LoanInDecline AS 'NoOfLoanNotInDecline';
		SELECT @ERR_LoanHaveDeclineReason AS 'NoOfLoanHaveNoOrMoreThan1LoanDeclineReason'

		SELECT
			LoanNo
			,LoanInDecline
			,LoanHaveDeclineReason
		FROM
			#TempLoanNoList;
	END

	IF OBJECT_ID('tempdb..#TempLoanNoList') IS NOT NULL
		DROP TABLE #TempLoanNoList;


	/*
		[dbo].[p_LoanDeclineReason_upd] '1784582, 1785386, 1786429, 1784582, 1745083, '
		[dbo].[p_LoanDeclineReason_upd] '1784582, 1785386, 1786429, 1784582,'
	*/
END
GO
