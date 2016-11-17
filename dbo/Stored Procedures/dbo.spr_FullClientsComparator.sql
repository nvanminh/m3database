SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_FullClientsComparator]
	@FirstCMR_ID VARCHAR(40)
AS
BEGIN
	-- (*) No Duplicate if they're the same one.
	--IF (@FirstCMR_ID = @SecondCMR_ID)
	--	RETURN
			
	-- (*) 
	;WITH tmp_Condition AS (
		SELECT 
			c1.ID as Client_ID, c2.ID as ComparingClient_ID,
			@FirstCMR_ID as CMR_ID, c2.CMR_ID as ComparingCMR_ID,
			ConditionFlag =
				dbo.fnc_FieldComparator(c1.FullName, c2.FullName, 'FullName', 'FuzzySearch') +
				2 * dbo.fnc_FieldComparator(c1.DOB, c2.DOB, 'DOB', 'MatchExactly') +
				2 * 2 * dbo.fnc_FieldComparator(c1.Email, c2.Email, 'Email', 'MatchExactly') +
				2 * 2 * 2 * dbo.fnc_FieldComparator(c1.BankAccount, c2.BankAccount, 'BankAccount', 'MatchExactly') +
				2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.AccountName, c2.AccountName, 'AccountName', 'FuzzySearch') +
				2 * 2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.Street, c2.Street, 'Street', 'FuzzySearch') +
				2 * 2 * 2 * 2 * 2 * 2 * dbo.fnc_FieldComparator(c1.PostalCode, c2.PostalCode, 'PostalCode', 'MatchExactly')
		FROM ##tempAllFullClients c1, ##tempAllFullClients c2
		WHERE c1.CMR_ID = @FirstCMR_ID AND c2.CMR_ID <> c1.CMR_ID
	)
	INSERT INTO FullDuplicatorClientInfo
	SELECT NEWID(), @FirstCMR_ID, ComparingCMR_ID, ConditionFlag
	FROM tmp_Condition t
	WHERE EXISTS (SELECT 1 FROM DuplicatorDecisionDictionary WHERE Decision > 0 AND ConditionFlag & t.ConditionFlag = ConditionFlag)
	

/*	
	SELECT 
		Client_ID, ComparingClient_ID,
		Result = 'Duplicate on:' +
			CASE 
				WHEN (ConditionFlag & 1) > 0 THEN '<Fullname>' + dci.Fullname + '</Fullname>'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 2) > 0 THEN 'DOB #'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 4) > 0 THEN 'Email #'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 8) > 0 THEN 'BankAccount #'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 16) > 0 THEN 'AccountName #'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 32) > 0 THEN 'Street #'
				ELSE ''
			END +
			CASE 
				WHEN (ConditionFlag & 64) > 0 THEN 'PostalCode #'
				ELSE ''
			END
	FROM ComparatorClients dci 
	JOIN tmp_DuplicateClients dc ON dc.ComparingClient_ID = dci.ID
*/
END

GO
