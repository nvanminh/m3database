SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [dbo].[spr_ETLTranformClientInfo_removeAddress]
AS
BEGIN
	-- 0. Declare temp table
	DECLARE @editClients TABLE (CMR_ID VARCHAR(40))
	 
	-- 1. Extract raw data and parse it into flat table
	SELECT DISTINCT a.CMR_ID, a.CMR_SeqNumber, a.FirstName, a.LastName, a.FullName, a.DOB, a.Title, a.BankAccountID, a.BankAccount, a.AccountName, a.AddressID, a.Street, a.PostalCode, a.OtherAddressInfo, a.Email, a.Mobile, a.OtherContactInfo, a.CreatedDate,
		(a.CMR_ID+'#'+ISNULL(a.FirstName,'')+'#'+ISNULL(a.LastName,'')+'#'+ISNULL(a.FullName,'')+'#'+ISNULL(CONVERT(VARCHAR(10),a.DOB),'')+'#'+ISNULL(a.Title,'')+'#'+ISNULL(CONVERT(VARCHAR(50), a.BankAccountID),'')+'#'+ISNULL(a.BankAccount,'')+'#'+ISNULL(a.AccountName,'')+'#'+ISNULL(CONVERT(VARCHAR(50),a.AddressID),'')+'#'+ISNULL(a.Street,'')+'#'+ISNULL(a.PostalCode,'')+'#'+ISNULL(a.OtherAddressInfo,'')+'#'+ISNULL(a.Email,'')+'#'+ISNULL(a.Mobile,'')+'#'+ISNULL(a.OtherContactInfo,'')) AS Hashkeys, 0 AS IsMergeWithAnother,
		FundedLoan,
		DischargedLoan
	INTO #comparatorClients
	FROM 
	(
		SELECT CM.CMR_ID, CM.CMR_SeqNumber, CT.CTI_FirstName AS FirstName, 
		(CASE WHEN CT.CTI_MiddleName IS NULL 
			THEN CT.CTI_Surname 
			ELSE (CT.CTI_Surname + ' ' + CT.CTI_MiddleName) 
		END) AS LastName,
		(CASE CCT.XCTi_Detail
			WHEN 'Mr' THEN LOWER(ISNULL(REPLACE(CT.CTI_FirstName,' ',''),'') + ' ' + ISNULL(REPLACE(CT.CTI_Surname,' ',''),'') + ' ' + ISNULL(REPLACE(CT.CTI_MiddleName,' ',''),''))
			ELSE LOWER(ISNULL(REPLACE(CT.CTI_FirstName,' ',''),'') + ' ' + ISNULL(REPLACE(CT.CTI_MiddleName,' ',''),''))
		END) AS FullName, CONVERT(DATE,CT.CTI_DOB) AS DOB,
		CCT.XCTi_Detail AS 'Title', 
		-- Bank Account Info
		CB.CBD_ID AS BankAccountID, (ISNULL(CB.CBD_BankName,'') + '-' + CB.CBD_AccountNumber) AS BankAccount, REPLACE(LOWER(CB.CBD_AccountName),' ','') AS AccountName,
		-- Address Infor
		'Unknown' AS AddressID, 'Unknown' AS Street, 'Unknown' AS PostalCode, 'Unknown' AS OtherAddressInfo,
		-- Contact Infor
		CCD_Email.Email, REPLACE(CCD_Mobile.Mobile,' ','') AS Mobile,'' AS OtherContactInfo,
		-- Timestamp
		GETDATE() AS CreatedDate,
		--FundedLoan = (SELECT TOP 1 LoanCount FROM dbo.fnc_CountLoan(CM.CMR_ID, 'FundedLoan')),
		--DischargedLoan = (SELECT TOP 1 LoanCount FROM dbo.fnc_CountLoan(CM.CMR_ID, 'DischargedLoan'))
		FundedLoan = 0,
		DischargedLoan = 0

		FROM iO_Client_MASterReference CM 
			JOIN iO_Client_TypeIndividual CT ON CM.CMR_ID = CT.CTI_IDLink_CMR
			LEFT JOIN iO_Control_ClientTitle CCT WITH (NOLOCK) ON CCT.XCTi_ID = CT.CTI_IDLink_XCT
			LEFT JOIN iO_Control_ClientGender CG WITH (NOLOCK) ON CG.XCGn_ID = CT.CTI_IDLink_XCGn
			LEFT JOIN iO_Client_BankDetail CB ON CM.CMR_ID = CB.CBD_IDLink_CMR
			LEFT JOIN (SELECT CCD_IDLink_CMR, CCD_Details AS Email FROM iO_Client_ContactDetail WHERE CCD_IDLink_XCT = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}') CCD_Email ON CM.CMR_ID = CCD_Email.CCD_IDLink_CMR
			LEFT JOIN (SELECT CCD_IDLink_CMR, CCD_Details AS Mobile FROM iO_Client_ContactDetail WHERE CCD_IDLink_XCT = '{29411831-e939-4357-940a-44f55b4a5c9b}' ) CCD_Mobile ON CM.CMR_ID = CCD_Mobile.CCD_IDLink_CMR
	) AS a

	-- 2. Get data from ComparatorClients
	-- DELETE/INSERT detail info
	INSERT INTO @editClients 
	SELECT a.CMR_ID
	FROM 
		(SELECT CMR_ID, COUNT(1) AS CountNew
		FROM #comparatorClients
		GROUP BY CMR_ID) a
	JOIN
		(SELECT CMR_ID, COUNT(1) AS CountOld
		FROM ComparatorClients
		GROUP BY CMR_ID) b ON a.CMR_ID = b.CMR_ID AND a.CountNew <> b.CountOld

	-- 3. Finding All Client with new checkSum --> Insert to @editClients
	INSERT INTO @editClients 
	SELECT CMR_ID
	FROM #comparatorClients a
	WHERE NOT EXISTS 
	(
		SELECT Hashkeys
		FROM ComparatorClients b
		WHERE a.Hashkeys = b.Hashkeys
	)

	-- 3. Check data in DuplicatorClientInfo
	-- 3.1. If CRM_ID is existing --> Delete all record in ComparatorClients with existing CRM_ID, then insert new record with this CRM_ID from Step 2
	DELETE 
	FROM  [ComparatorClients]
	WHERE CMR_ID IN 
	(
		SELECT DISTINCT CMR_ID
		FROM @editClients 
	)

	-- 3.2. Insert all data into ComparatorClients
	INSERT INTO  [ComparatorClients]
	SELECT NEWID(), *
	FROM #comparatorClients
	WHERE CMR_ID IN 
	(
		SELECT DISTINCT CMR_ID
		FROM @editClients
	)

	-- 3.3. DROP all #temptable
	-- DROP TABLE #comparatorClients
END

GO
