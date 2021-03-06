SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[spr_GetLoanByRoot]
@rootSeqNum VARCHAR(40)
AS
	BEGIN
		-- Update root client base on FundedLoan & DischargedLoan
	SELECT 
		ROW_NUMBER() OVER (ORDER BY Root_Client_SeqNum) AS Line,
		Root_Client_SeqNum
	INTO #tmpDCI
	FROM (
		SELECT DISTINCT Root_Client_SeqNum
		FROM DuplicatorClientInfo
		WHERE Root_Client_SeqNum = @rootSeqNum
	) T

	SELECT XSU_ID 
	INTO #dischargedStatus
	FROM iO_Control_StatusMaster
	WHERE XSU_ID IN (
		'{eed8f1a7-9615-483e-b234-47ce66f2ee23}',
		'{3f09eade-f2e7-4c4b-98d3-7513580cee49}',
		'{0a168683-788f-4aeb-b04e-5e95075dd33d}',
		'{42328faf-e454-402a-b0f5-99fe9ca3c64f}'
	)

	SELECT XSU_ID 
	INTO #fundedStatus
	FROM iO_Control_StatusMaster
	WHERE XSU_ID IN (
		'{0927edfd-d426-445d-90b8-5adebd0de1d3}',
		'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}',
		'{9109145f-6143-4d0e-96b5-687edb0f1ad5}',
		'{93ba842a-8662-4657-b464-11f609b8bed8}',
		'{ae06255a-2fc5-4b90-a081-af3969dbdb82}',
		'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}',
		'{a9ca9714-843f-4992-a666-9b30d67c9dfc}',
		'{9a2d8920-3f6b-4176-b353-921015f1305f}',
		'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}',
		'{ed4bb803-271d-42db-9cef-6b0f6fb68832}',
		'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}',
		'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}',
		'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}',
		'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}',
		'{86a692cf-76d5-4895-a833-9fbe9052e4d2}',
		'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}',
		'{4177f94f-193b-4190-b1c0-3036908dfef8}',
		'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}',
		'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}',
		'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}',
		'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}',
		'{06fae08f-35a9-4515-9d2c-757a8207a73c}',
		'{199b584a-177d-46be-bb48-84c81e374070}',
		'{1edfeab9-8e15-4afd-926a-26c8befbaaed}',
		'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}',
		'{491185db-f116-403a-a86b-484be79c6433}',
		'{4ccc61f0-a025-4a85-8164-1fad2812b297}',
		'{4d75bf65-e93c-4741-b7df-bfea892112a2}',
		'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}',
		'{56661393-78a1-4cda-8a7d-535fffa8fc5c}'
	)

	;WITH tmp AS (
		SELECT DISTINCT 
			Client_SeqNum, CMR_ID
		FROM (
			SELECT DISTINCT Client_SeqNum FROM M3Demo.dbo.DuplicatorClientInfo	WHERE Root_Client_SeqNum = @rootSeqNum
			UNION
			SELECT DISTINCT Duplicate_Client_SeqNum FROM M3Demo.dbo.DuplicatorClientInfo WHERE Root_Client_SeqNum = @rootSeqNum
		) T 
			LEFT JOIN ClientSeqNumAndCMR CC ON CC.CMR_SeqNumber = T.Client_SeqNum
	) SELECT * INTO #tmp FROM tmp

	;WITH CTE_Loan AS
	(
		SELECT
			LMR_Client.LMR_IDLink_CMR AS 'Customer_CMR'
			,cLoanStatus.XSU_ID
			,cLoanStatus.XSU_Detail AS 'Current_LoanStatus'
			,LoanType = CASE 
				WHEN cLoanStatus.XSU_ID IN (SELECT * FROM #dischargedStatus) THEN 'Discharged'
				WHEN cLoanStatus.XSU_ID IN (SELECT * FROM #fundedStatus) THEN 'Funded'
				ELSE 'Other' END
		FROM
			[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK)
			INNER JOIN
			Simple_Link_MasterReference LMR_Client WITH (NOLOCK) ON LMR_Client.LMR_IDLink_Code_ID = RMR.RMR_ID
			LEFT OUTER JOIN 
			[dbo].[iO_Control_StatusMaster] cLoanStatus WITH (NOLOCK) ON cLoanStatus.XSU_ID = RMR.RMR_IDLink_XSU
		WHERE
			LMR_Client.LMR_IDLink_CMR IN (SELECT CMR_ID FROM #tmp)
	)

	SELECT 
		Client_SeqNum, 
		XSU_ID, 
		Current_LoanStatus,
		LoanType
	INTO #finalResult
	FROM #tmp t
		LEFT JOIN CTE_Loan ts On t.CMR_ID = ts.Customer_CMR


	SELECT
		T.Client_SeqNum,
		Funded = (SELECT COUNT(*) FROM #finalResult WHERE Client_SeqNum = T.Client_SeqNum AND LoanType = 'Funded'),
		Discharged = (SELECT COUNT(*) FROM #finalResult WHERE Client_SeqNum = T.Client_SeqNum AND LoanType = 'Discharged'),
		Other = (SELECT COUNT(*) FROM #finalResult WHERE Client_SeqNum = T.Client_SeqNum AND LoanType = 'Other')
	FROM (
		SELECT DISTINCT
			Client_SeqNum
		FROM #finalResult
	) T
	ORDER BY 
		Funded DESC,
		Discharged DESC,
		Other DESC,
		CONVERT(BIGINT, Client_SeqNum) DESC

	SELECT * FROM #finalResult ORDER BY Client_SeqNum DESC


	END

GO
