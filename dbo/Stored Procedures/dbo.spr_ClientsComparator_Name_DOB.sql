SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_ClientsComparator_Name_DOB]
	@client_seqnum BIGINT
AS
BEGIN
	
	/* STEP 01: Identity Duplicate Flag between records */
	DECLARE @comparing_client_seqnum BIGINT
	-- (*) 
	;WITH tmp_Condition AS (
		SELECT 
			c1.ID as Client_ID, c2.ID as ComparingClient_ID,
			@client_seqnum as CMR_SeqNumber, c2.CMR_SeqNumber as ComparingCMR_SeqNumber,
			ConditionFlag =
				dbo.fnc_FieldComparator(c1.FullName, c2.FullName, 'FullName', 'FuzzySearch') +
				2 * dbo.fnc_FieldComparator(c1.DOB, c2.DOB, 'DOB', 'MatchExactly') 
				--2 * 2 * dbo.fnc_FieldComparator(c1.Email, c2.Email, 'Email', 'FuzzySearch') +
				--2 * 2 * 2 * dbo.fnc_FieldComparator(c1.Mobile, c2.Mobile, 'Mobile', 'FuzzySearch') +
				--2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.BankAccount, c2.BankAccount, 'BankAccount', 'MatchExactly') +
				--2 * 2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.AccountName, c2.AccountName, 'AccountName', 'FuzzySearch') +
				--2 * 2 * 2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.Street, c2.Street, 'Street', 'FuzzySearch') +
				--2 * 2 * 2 * 2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.PostalCode, c2.PostalCode, 'PostalCode', 'MatchExactly') 
		FROM ##SourceClients c1, ##SourceClients c2
		WHERE c1.CMR_SeqNumber = @client_seqnum AND c2.CMR_SeqNumber <> c1.CMR_SeqNumber
	), 

	/* STEP 02: Identity Duplicate Client (Info & Detail) */
	tmp_DuplicateClients AS (
		SELECT DISTINCT Client_ID, ComparingClient_ID, CMR_SeqNumber, ComparingCMR_SeqNumber,  t.ConditionFlag
		FROM DuplicatorDecisionDictionary dd
		JOIN tmp_Condition t ON (dd.ConditionFlag & t.ConditionFlag) = dd.ConditionFlag
		WHERE Decision > 0
	)
	SELECT *
	INTO #tmp_comparing
	FROM tmp_DuplicateClients
	
	SELECT 
		DISTINCT
		CMR_SeqNumber as RootCMR_SeqNo,

		-- Bag Keys
		CMR_SeqNumber as CMR_SeqNo, 
		ComparingCMR_SeqNumber as DuplicateCMR_SeqNo
	INTO #DuplicatorClientInfo 
	FROM #tmp_comparing

	;WITH tmpDuplicateValues AS(
		SELECT 
			-- Bag Keys
			a.CMR_SeqNumber as CMR_SeqNo, 
			a.ComparingCMR_SeqNumber as DuplicateCMR_SeqNo,
			a.ConditionFlag,		

			b.FullName as DuplicateFullName, b.DOB as DuplicateDOB, 
			--b.Email as DuplicateEmail, b.Mobile as DuplicateMobile, 
			--b.BankAccount as DuplicateBankAccount, b.AccountName as DuplicateAccountName, 
			--b.Street as DuplicateStreet, b.PostalCode as DuplicatePostalCode, 

			c.FullName as OriginFullName, c.DOB as OriginDOB
			--c.Email as OriginEmail, c.Mobile as OriginMobile, 
			--c.BankAccount as OriginBankAccount, c.AccountName as OriginAccountName, 
			--c.Street as OriginStreet, c.PostalCode as OriginPostalCode
		FROM #tmp_comparing a
		JOIN ComparatorClients b on a.ComparingClient_ID = b.ID
		JOIN ComparatorClients c on c.ID = a.Client_ID
	)
	SELECT
			DISTINCT
			-- Bag Keys
			CMR_SeqNo, 
			DuplicateCMR_SeqNo,
			FieldName,
			OriginValue,
			DuplicateValue
	INTO #DuplicatorClientDetail
	FROM (
		SELECT 
			-- Bag Keys
			CMR_SeqNo, 
			DuplicateCMR_SeqNo,
			ConditionFlag,
			'FullName' as FieldName, DuplicateFullName  as DuplicateValue, OriginFullName as OriginValue
		FROM tmpDuplicateValues
		WHERE (ConditionFlag & 1) > 0
		UNION
		SELECT 
			-- Bag Keys
			CMR_SeqNo, 
			DuplicateCMR_SeqNo,
			ConditionFlag,
			'DOB' as FieldName, CONVERT(VARCHAR(256),DuplicateDOB)  as DuplicateValue, CONVERT(VARCHAR(256),OriginDOB) as OriginValue
		FROM tmpDuplicateValues
		WHERE (ConditionFlag & 2) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'Email' as FieldName, DuplicateEmail  as DuplicateValue, OriginEmail as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 4) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'Mobile' as FieldName, DuplicateMobile  as DuplicateValue, OriginMobile as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 8) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'BankAccount' as FieldName, DuplicateBankAccount  as DuplicateValue, OriginBankAccount as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 16) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'AccountName' as FieldName, DuplicateAccountName  as DuplicateValue, OriginAccountName as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 32) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'Street' as FieldName, DuplicateStreet  as DuplicateValue, OriginStreet as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 64) > 0
		--UNION
		--SELECT 
		--	-- Bag Keys
		--	CMR_SeqNo, 
		--	DuplicateCMR_SeqNo,
		--	ConditionFlag,
		--	'PostalCode' as FieldName, DuplicatePostalCode  as DuplicateValue, OriginPostalCode as OriginValue
		--FROM tmpDuplicateValues
		--WHERE (ConditionFlag & 128) > 0
	) tmp

	
	
	SELECT NEWID() as ID, CMR_SeqNo, DuplicateCMR_SeqNo, RootCMR_SeqNo		
	INTO #FinalDuplicatorClientInfo
	FROM #DuplicatorClientInfo

	INSERT INTO DuplicatorClientInfo
	SELECT * FROM #FinalDuplicatorClientInfo

	INSERT INTO DuplicatorClientDetail
	SELECT 
		NEWID(), i.ID, FieldName, OriginValue, DuplicateValue
	FROM #DuplicatorClientDetail d
	JOIN #FinalDuplicatorClientInfo i ON i.CMR_SeqNo = d.CMR_SeqNo AND i.DuplicateCMR_SeqNo = d.DuplicateCMR_SeqNo
END

/*
	- Test Store Procedure

DROP TABLE ##SourceClients
SELECT *
	INTO ##SourceClients
	FROM ComparatorClients
	ORDER BY CMR_ID ASC

DECLARE @cmr_id BIGINT
SET @cmr_id = 13
EXEC [spr_ClientsComparator] @cmr_id

*/

GO
