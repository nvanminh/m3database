SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_MACC_DirectOffer]
    @ProductTypeID	varchar(40),
    @Campain		varchar(250)
AS
BEGIN
	SET NOCOUNT ON;

	WAITFOR DELAY '000:00:10';

    --// Temp table to hold the data from CSV
    IF OBJECT_ID('tempdb..#TempMACCCustomer') IS NOT NULL
        DROP TABLE #TempMACCCustomer;

    CREATE TABLE #TempMACCCustomer
    (
        CustomerID bigint
		,Amount decimal(18, 2)
    );

    --// Copy CSV data into the temp table
    BULK INSERT
        #TempMACCCustomer
    FROM
        '\\money3.local\shared\M3Shared\MACC Offering\MACC.csv'
		--'\\M3Accounting\IT\MACC\MACC.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',  --// CSV field delimiter
        ROWTERMINATOR = '\n',   --// Use to shift the control to next row
        --ERRORFILE = '\\M3Accounting\IT\Logs\MACC1_Error.csv',
        TABLOCK
    )
            
    --// Temp table to hold distinct customer id
    IF OBJECT_ID('tempdb..#TempUniqueMACCCustomer') IS NOT NULL
        DROP TABLE #TempUniqueMACCCustomer;

    CREATE TABLE #TempUniqueMACCCustomer
    (
        CustomerID bigint
		,Amount decimal(18, 2)
    );

    INSERT INTO #TempUniqueMACCCustomer
    (
        CustomerID
		,Amount
    )
    SELECT DISTINCT
        CustomerID
		,Amount
    FROM
        #TempMACCCustomer
    WHERE
        CustomerID IS NOT NULL
	AND
		Amount IS NOT NULL
		

	--// Additional for the calculation MACC Offer
	--IF OBJECT_ID('tempdb..#TempMACCOffer') IS NOT NULL
 --       DROP TABLE #TempMACCOffer;

	--WITH CTE_CashTrainFundedLoan AS
	--(
	--SELECT
	--	RMR.RMR_ID
	--	,RMR.RMR_SeqNumber AS 'LoanNo'
	--	,LMR_Branch.LMR_IDLink_CMR AS 'LMR_Branch_CMR'
	--	,LMR_Client.LMR_IDLink_CMR AS 'LMR_Client_CMR'
	--	,LMR_Refer.LMR_IDLink_CMR AS 'LMR_Refer_CMR'
	--FROM
	--	[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK)
	--INNER JOIN
	--	[dbo].[iO_Link_MasterReference] LMR_Branch WITH (NOLOCK) ON LMR_Branch.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}'
	--INNER JOIN
	--	[dbo].[iO_Link_MasterReference] LMR_Client WITH (NOLOCK) ON LMR_Client.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Client.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --// Loan\Principal Borrower
	--LEFT OUTER JOIN
	--	[dbo].[iO_Link_MasterReference] LMR_Refer WITH (NOLOCK) ON LMR_Refer.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Refer.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
	--WHERE
	--	(LMR_Branch.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}' OR LMR_Refer.LMR_IDLink_CMR = '{cf65e2fb-5964-491a-9511-ca361149ebb2}')
	--AND
	--	RMR.RMR_IDLink_XSU IN 
	--		(
	--			--// Funded/Current Status
	--			'{0927edfd-d426-445d-90b8-5adebd0de1d3}'	--// Money3\LACC - Hold
	--			,'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}'	--// Money3\Current
	--			,'{9109145f-6143-4d0e-96b5-687edb0f1ad5}'	--// Money3\Arrears - Arrears Letter
	--			,'{93ba842a-8662-4657-b464-11f609b8bed8}'	--// Money3\Arrears - Special Arrangement
	--			,'{ae06255a-2fc5-4b90-a081-af3969dbdb82}'	--// Money3\Arrears - Payment Plan
	--			,'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}'	--// Money3\Arrears - Hardship
	--			,'{a9ca9714-843f-4992-a666-9b30d67c9dfc}'	--// Money3\Collections\InActive\Bankrupt
	--			,'{9a2d8920-3f6b-4176-b353-921015f1305f}'	--// Money3\Collections\InActive\Dormant
	--			,'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}'	--// Money3\Collections\Active\Veda Listing
	--			,'{ed4bb803-271d-42db-9cef-6b0f6fb68832}'	--// Money3\Collections\Active\Legal\Legal
	--			,'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}'	--// Money3\Internal Current
	--			,'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}'	--// Money3\Collections\Active\Do Not Action
	--			,'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}'	--// Money3\Collections\Active\Legal\Served
	--			,'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}'	--// Money3\Collections\InActive\Settled
	--			,'{86a692cf-76d5-4895-a833-9fbe9052e4d2}'	--// Money3\Collections\Active\Legal\Court
	--			,'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}'	--// Money3\Collections\Active\Part X
	--			,'{4177f94f-193b-4190-b1c0-3036908dfef8}'	--// Money3\Collections\Active\External
	--			,'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}'	--// Money3\Collections\Active\Part IX
	--			,'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}'	--// Money3\Collections\Active\Still to Action
	--			,'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}'	--// Money3\Collections\Active\Payment Plan
	--			,'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}'	--// Money3\Collections\Active\Investigating
	--			,'{06fae08f-35a9-4515-9d2c-757a8207a73c}'	--// Money3\Collections\Active\Legal\Judgement
	--			,'{199b584a-177d-46be-bb48-84c81e374070}'	--// Money3\Arrears - Recoveries - HOLD
	--			,'{1edfeab9-8e15-4afd-926a-26c8befbaaed}'	--// Money3\Collections\Active\DDR Attempt
	--			,'{42328faf-e454-402a-b0f5-99fe9ca3c64f}'	--// Money3\Discharged - Written Off
	--			,'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}'	--// Money3\Arrears - Recoveries
	--			,'{491185db-f116-403a-a86b-484be79c6433}'	--// Money3\Collections\InActive\Dead File
	--			,'{4ccc61f0-a025-4a85-8164-1fad2812b297}'	--// Money3\Collections\Active\Valid Phone
	--			,'{4d75bf65-e93c-4741-b7df-bfea892112a2}'	--// Money3\Collections\Active\Legal\Attachment
	--			,'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}'	--// Money3\Arrears - Hold
	--			,'{56661393-78a1-4cda-8a7d-535fffa8fc5c}'	--// Money3\Arrears - Default
	--		)
	--AND
	--	LMR_Client.LMR_IDLink_CMR IN 
	--	(
	--		SELECT CMR.CMR_ID FROM [dbo].[iO_Client_MasterReference] CMR WITH (NOLOCK) WHERE CMR.CMR_SeqNumber IN (SELECT CustomerID FROM #TempUniqueMACCCustomer WHERE CustomerID IS NOT NULL)
	--	)
	--)

	--// Top Loan for the customer who in funded.
	--SELECT
	--	*
	--INTO
	--	#TempMACCOffer
	--FROM
	--(
	--SELECT
	--	ROW_NUMBER() OVER (PARTITION BY LMR_Client_CMR ORDER BY LoanNo DESC) AS 'RowNo'
	--	,* 
	--FROM
	--	CTE_CashTrainFundedLoan
	--) tbl
	--WHERE
	--	tbl.RowNo = 1

	--// Additional for the calculation MACC Offer
	DECLARE @InsertOutput table
	(
		DOWTMA_ID INT
	);

    INSERT INTO [WebPortal].[DOWTMA]
        (
        --[DOWTMA_ID]
        [DOWTMA_CMR_ID]
        ,[DOWTMA_XRP_ID]
        ,[DOWTMA_SecurityToken]
        ,[DOWTMA_DateCreated]
        ,[DOWTMA_DateExpired]
        ,[DOWTMA_MaxOffer]
        ,[DOWTMA_Campain])
    OUTPUT
        inserted.DOWTMA_ID INTO @InsertOutput
    SELECT
        --'{' + LOWER(NEWID()) + '}' AS 'DOWTMA_ID'
		CMR.CMR_ID AS 'DOWTMA_CMR_ID'
        ,@ProductTypeID AS 'DOWTMA_XRP_ID'
        ,SUBSTRING([master].[dbo].[fn_varbintohexstr](HASHBYTES('md5', CMR.CMR_ID + LEFT(CONVERT(varchar, GETDATE(), 120), 19))), 3, 60) AS 'DOWTMA_SecurityToken'
        ,GETDATE() AS 'DOWTMA_DateCreated'
        ,GETDATE() + 7 AS 'DOWTMA_DateExpired'
        --,[dbo].[udf_GetMACCOfferAmmount](CMR.CMR_ID) AS 'DOWTMA_MaxOffer'
		--,ISNULL(tblMACCOffer.MaxOffer, 0.00) AS 'DOWTMA_MaxOffer'
		,TUMC.Amount AS 'DOWTMA_MaxOffer'
        ,@Campain AS 'DOWTMA_Campain'
    FROM
        #TempUniqueMACCCustomer TUMC WITH (NOLOCK)
    INNER JOIN
        [dbo].[iO_Client_MasterReference] CMR WITH (NOLOCK) ON CMR.CMR_SeqNumber = TUMC.CustomerID
	--LEFT OUTER JOIN
	--	(
	--		SELECT
	--			LMR_Client_CMR
	--			,RMR_ID
	--			,ISNULL((
	--				SELECT TOP 1
	--					--ISNULL(DSAT.DSA_TWeeklySurplus, 0.00)
	--					--,-([dbo].[udf_PresentValue](0.480000000000/52 * 100, 52, ISNULL(DSAT.DSA_TWeeklySurplus, 0.00), 0, 0)) - 400.00 AS 'TotalAffordableMACC'
	--					--,CONVERT(int, (-([dbo].[udf_PresentValue](0.480000000000/52 * 100, 52, ISNULL(DSAT.DSA_TWeeklySurplus, 0.00), 0, 0)) - 400.00) / 250) * 250 AS 'TotalAffordableMACCRound'
	--					CASE
	--						WHEN ((CONVERT(int, (-([dbo].[udf_PresentValue](0.480000000000/52 * 100, 52, ISNULL(DSAT.DSA_TWeeklySurplus, 0.00), 0, 0)) - 400.00) / 250) * 250) < 2250.00) THEN 0.00
	--						WHEN ((CONVERT(int, (-([dbo].[udf_PresentValue](0.480000000000/52 * 100, 52, ISNULL(DSAT.DSA_TWeeklySurplus, 0.00), 0, 0)) - 400.00) / 250) * 250) > 3500.00) THEN 3500.00
	--						ELSE
	--							(CONVERT(int, (-([dbo].[udf_PresentValue](0.480000000000/52 * 100, 52, ISNULL(DSAT.DSA_TWeeklySurplus, 0.00), 0, 0)) - 400.00) / 250) * 250)
	--					END
	--				FROM
	--					[dbo].[iO_DataStorage_AssessmentTotals] DSAT WITH (NOLOCK)
	--				WHERE
	--					DSAT.DSA_IDLink_RMR = TMO.RMR_ID
	--				ORDER BY
	--					DSAT.DSA_SeqNumber DESC
	--			), 0.00) AS 'MaxOffer'
	--		FROM
	--			#TempMACCOffer TMO
	--	) tblMACCOffer ON tblMACCOffer.LMR_Client_CMR = CMR.CMR_ID
	
	SELECT 
		DTM.DOWTMA_ID AS 'RedrawID'
		,[WebPortal].[Encrypt](DTM.DOWTMA_CMR_ID) AS 'CustomerPK'
		,CMR.CMR_SeqNumber AS 'CustomerID'
		,CTI.CTI_FirstName AS 'FirstName'
		,CTI.CTI_Surname AS 'Surname'
		,CCD_Email.Email AS 'Email'
		,CCD_Mobile.Mobile AS 'Mobile'
		,Address_State.CAD_State AS 'State'
		,DTM.DOWTMA_XRP_ID AS 'ProductPK'
		,[WebPortal].[Encrypt](DTM.DOWTMA_SecurityToken) AS 'SecurityToken'
		,DTM.DOWTMA_DateCreated AS 'MACCOffer_DateCreated'
		,DTM.DOWTMA_DateExpired AS 'MACCOffer_DateExpired'
		,DTM.DOWTMA_MaxOffer AS 'MACCOffer'
		,DTM.DOWTMA_Campain AS 'Campaign'
	FROM 
		 [WebPortal].[DOWTMA] DTM WITH (NOLOCK)
	INNER JOIN 
		[dbo].[iO_Client_MasterReference] CMR WITH (NOLOCK) ON CMR.CMR_ID = DTM.DOWTMA_CMR_ID
	LEFT OUTER JOIN
		[dbo].[iO_Client_TypeIndividual] CTI WITH (NOLOCK) ON CTI.CTI_IDLink_CMR = DTM.DOWTMA_CMR_ID
	LEFT OUTER JOIN (
		SELECT 
			CCD_IDLink_CMR AS 'CustomerPK'
			,CCD_Details AS 'Email'
			,ROW_NUMBER() OVER (PARTITION BY CCD_IDLink_CMR ORDER BY CCD_SeqNumber DESC) AS 'RowNumber'
		FROM 
			[dbo].[iO_Client_ContactDetail] WITH (NOLOCK)
		WHERE 
			CCD_IDLink_XCT = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}' --// Email
		) CCD_Email ON CCD_Email.CustomerPK = DTM.DOWTMA_CMR_ID AND CCD_Email.RowNumber = 1
	LEFT OUTER JOIN (
		SELECT 
			CCD_IDLink_CMR AS 'CustomerPK'
			,CCD_Details AS 'Mobile'
			,ROW_NUMBER() OVER (PARTITION BY CCD_IDLink_CMR ORDER BY CCD_SeqNumber DESC) AS 'RowNumber'
		FROM 
			[dbo].[iO_Client_ContactDetail] WITH (NOLOCK)
		WHERE 
			CCD_IDLink_XCT = '{29411831-e939-4357-940a-44f55b4a5c9b}' --// Mobile
		) CCD_Mobile ON CCD_Mobile.CustomerPK = DTM.DOWTMA_CMR_ID AND CCD_Mobile.RowNumber = 1
	LEFT OUTER JOIN (
		SELECT 
			CAD_IDLink_CMR AS 'CustomerPK'
			,CAD_State
			,ROW_NUMBER() OVER (PARTITION BY CAD_IDLink_CMR ORDER BY CAD_SeqNumber DESC) AS 'RowNumber'
		FROM 
			[dbo].[iO_Client_AddressDetail ] WITH (NOLOCK)
		WHERE
			ISNULL(CAD_State, '') <> ''
		) Address_State ON Address_State.CustomerPK = DTM.DOWTMA_CMR_ID AND Address_State.RowNumber = 1
	WHERE
		DTM.DOWTMA_ID IN (SELECT IOP.DOWTMA_ID FROM @InsertOutput IOP)


	IF OBJECT_ID('tempdb..#TempMACCCustomer') IS NOT NULL
        DROP TABLE #TempMACCCustomer;

	 IF OBJECT_ID('tempdb..#TempUniqueMACCCustomer') IS NOT NULL
        DROP TABLE #TempUniqueMACCCustomer;

        /*
        SELECT * FROM [WebPortal].[DOWTMA]


        EXEC [dbo].[p_MACC_DirectOffer] '{5ceb7f31-3b2c-4508-96ed-b8ac1c987650}', 'My Testing'

        --// 5 Record to testing
        443570 MCDONALD Shirley
        443571 MORTON Susan
        445271 BAYLISS Trent
        463571 NAWAIKULA Saimone 
        488571 BOWLER Shane John

        443570
        443571
        445271
        463571
        488571
        */
        
END
GO
