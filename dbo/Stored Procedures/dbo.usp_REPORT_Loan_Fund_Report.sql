SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_REPORT_Loan_Fund_Report]
AS
SET NOCOUNT ON

IF OBJECT_ID('tempdb..#CustomerType') IS NOT NULL
	DROP TABLE #CustomerType

SELECT ClientID
	,CASE 
		WHEN RowNum = 1
			THEN 'New'
		ELSE 'Repeat'
		END AS 'LoanType'
	,RMR_seqnumber
INTO #CustomerType
FROM (
	SELECT LMR.LMR_IDLINK_CMR AS 'ClientID'
		,ROW_NUMBER() OVER (
			PARTITION BY LMR.LMR_IDLINK_CMR ORDER BY RMR_seqnumber ASC
			) AS 'RowNum'
		,RMR_seqnumber
	FROM iO_Link_MasterReference LMR
	INNER JOIN IO_Product_masterreference ON LMR_IDLink_Code_ID = RMR_ID
	INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
		AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
		AND LMR_Branch.LMR_IDLINK_CMR IN (
			--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
			'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
			)
	WHERE LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
		--AND RMR_IDLink_XSU IN (
		--	'{9109145f-6143-4d0e-96b5-687edb0f1ad5}' --// Money3\Arrears - Arrears Letter
		--	,'{56661393-78a1-4cda-8a7d-535fffa8fc5c}' --// Money3\Arrears - Default
		--	,'{3eba49a2-2b63-40b0-8cb9-8159b77c91b3}' --// Money3\Arrears - Do Not Action
		--	,'{c42ce2db-8732-4d4b-8be2-b6ee111695e5}' --// Money3\Arrears - Hardship
		--	,'{b5b9da80-b0b3-4b63-ac48-57c9f3d36818}' --// Money3\Arrears - Hold
		--	,'{ae06255a-2fc5-4b90-a081-af3969dbdb82}' --// Money3\Arrears - Payment Plan
		--	,'{48f5ff0f-d997-4ffd-8f0d-06aa33a54b97}' --// Money3\Arrears - Recoveries
		--	,'{199b584a-177d-46be-bb48-84c81e374070}' --// Money3\Arrears - Recoveries - HOLD
		--	,'{93ba842a-8662-4657-b464-11f609b8bed8}' --// Money3\Arrears - Special Arrangement
		--	,'{1edfeab9-8e15-4afd-926a-26c8befbaaed}' --// Money3\Collections\Active\DDR Attempt
		--	,'{f8527bf0-32f4-4fbe-9bbd-ff42001763ea}' --// Money3\Collections\Active\Do Not Action
		--	,'{4177f94f-193b-4190-b1c0-3036908dfef8}' --// Money3\Collections\Active\External
		--	,'{5e3bed22-27e9-46fd-9bd5-7b6471b02511}' --// Money3\Collections\Active\Investigating
		--	,'{4d75bf65-e93c-4741-b7df-bfea892112a2}' --// Money3\Collections\Active\Legal\Attachment
		--	,'{86a692cf-76d5-4895-a833-9fbe9052e4d2}' --// Money3\Collections\Active\Legal\Court
		--	,'{06fae08f-35a9-4515-9d2c-757a8207a73c}' --// Money3\Collections\Active\Legal\Judgement
		--	,'{ed4bb803-271d-42db-9cef-6b0f6fb68832}' --// Money3\Collections\Active\Legal\Legal
		--	,'{db15ccef-67de-46e9-9efe-dbfbe2c490fb}' --// Money3\Collections\Active\Legal\Served
		--	,'{7e186bd4-ec66-4f94-94b1-e23db8de2c0f}' --// Money3\Collections\Active\Part IX
		--	,'{9549f014-69cb-42c7-9d1c-c2cabc8dd6ed}' --// Money3\Collections\Active\Part X
		--	,'{5e0a955a-e37d-425d-a7c1-3cd984c6f3f2}' --// Money3\Collections\Active\Payment Plan
		--	,'{55c2ad7c-63d5-4130-8a87-b94c7184d42d}' --// Money3\Collections\Active\Still to Action
		--	,'{4ccc61f0-a025-4a85-8164-1fad2812b297}' --// Money3\Collections\Active\Valid Phone
		--	,'{d2d7cf0d-2f12-4ded-be1e-f0c6a2b871ac}' --// Money3\Collections\Active\Veda Listing
		--	,'{a9ca9714-843f-4992-a666-9b30d67c9dfc}' --// Money3\Collections\InActive\Bankrupt
		--	,'{491185db-f116-403a-a86b-484be79c6433}' --// Money3\Collections\InActive\Dead File
		--	,'{9a2d8920-3f6b-4176-b353-921015f1305f}' --// Money3\Collections\InActive\Dormant
		--	,'{89832085-8e39-457a-b2f6-3ea3e27e2ad6}' --// Money3\Collections\InActive\Settled
		--	,'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}' --// Money3\Current
		--	,'{eed8f1a7-9615-483e-b234-47ce66f2ee23}' --// Money3\Discharged - Negotiated payout
		--	,'{3f09eade-f2e7-4c4b-98d3-7513580cee49}' --// Money3\Discharged - Paid in Full
		--	,'{0a168683-788f-4aeb-b04e-5e95075dd33d}' --// Money3\Discharged - Paid in full early discount
		--	,'{42328faf-e454-402a-b0f5-99fe9ca3c64f}' --// Money3\Discharged - Written Off
		--	,'{ee3cdb17-f540-46bd-aa7e-c5fffb97b5e1}' --// Money3\Internal Current
		--	,'{0927edfd-d426-445d-90b8-5adebd0de1d3}' --// Money3\LACC - Hold
		--	,'{bc79bd44-471d-4ff3-a703-215216e8da60}' --// Money3\Rentals\Lease Abandoned
		--	,'{511bccd5-cea3-4fcb-bd46-08bc28811ef8}' --// Money3\Rentals\Lease Completed
		--	,'{9c71baec-ffc8-49f4-a65b-82d4a82a332c}' --// Money3\Rentals\Pending Termination
		--	)
	) tbl

IF OBJECT_ID('tempdb..#CurrentStatusDate') IS NOT NULL
	DROP TABLE #CurrentStatusDate

SELECT SMR_IDLINK_Code
	,SMR_DateEnter
	,ROW_NUMBER() OVER (
		PARTITION BY SMR_IDLINK_Code ORDER BY SMR_SeqNumber DESC
		) AS RowNum
INTO #CurrentStatusDate
FROM iO_Status_MasterReference
INNER JOIN iO_Link_MasterReference LMR_Branch ON SMR_IDLINK_Code = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)

IF OBJECT_ID('tempdb..#RCFe_TotalFee') IS NOT NULL
	DROP TABLE #RCFe_TotalFee

SELECT RMR.RMR_ID
	,isnull(sum(RCFe_Fee.rcfe_value), 0) - isnull(sum(RCD_Discount.RCFe_Value), 0) AS 'Fees'
INTO #RCFe_TotalFee
FROM iO_Product_MasterReference RMR
INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)
LEFT JOIN io_product_controlfee RCFe_Fee ON RCFe_Fee.RCFe_IDLink_RMR = RMR.RMR_ID
	AND RCFe_Fee.rcfe_type = 2
LEFT JOIN iO_Product_ControlFee RCD_Discount ON RCD_Discount.RCFe_IDLink_RMR = RMR.RMR_ID
	AND RCD_Discount.RCFe_Type = 130212
	AND RCD_Discount.RCFe_IDLink_XTRM = '{fa33558d-7892-4f3f-a1ae-4dfd0fd7a703}' --//Money3\Fee\Loan\Application Fee Discount
GROUP BY RMR.RMR_ID

IF OBJECT_ID('tempdb..#tblDecline') IS NOT NULL
	DROP TABLE #tblDecline

SELECT ROW_NUMBER() OVER (
		PARTITION BY SMR_IDLink_Code ORDER BY smr_seqnumber DESC
		) AS 'RowNo'
	,CMR_Name AS 'DecliningAgent'
	,SMR_IDLink_Code
	,SMR_DateEnter
INTO #tblDecline
FROM io_status_masterreference
INNER JOIN iO_Link_MasterReference LMR_Branch ON SMR_IDLINK_Code = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)
INNER JOIN io_control_statusmaster ON smr_idlink_xsu = xsu_id
LEFT JOIN io_client_masterreference ON smr_idlink_cmr = cmr_id
WHERE smr_dateleave IS NULL
	AND SMR_IDLINK_XSU IN (
		'{3a311bda-8d87-4226-a4fd-932396cc56d1}' --//Money3\Application - Incomplete Application
		,'{ca22bbed-9e29-4377-9186-ca57464a1ad6}' --//Money3\Application - Inconsistent Salary/MACC in Arrears/Repeat Decline
		,'{2e16b85a-816e-471d-8078-30362ae88042}' --//Money3\Application - Unsuccessful
		,'{1aad8074-9af8-4598-a033-c070cf3a49b9}' --//Money3\Application - Unsuccessful - Reason to be reviewed
		,'{33aec218-855f-42fd-a0c7-ec808aa45520}' --//Money3\Declined
		,'{f71a73b4-e8de-4854-835d-bbffa381e994}' --//Money3\Declined - Current M3/CT Loan
		,'{fe7e56b6-c298-485a-9e8a-faa942040fa9}' --//Money3\Declined - Second SACC
		,'{24da862d-bae2-484e-9ad1-6ecdea78b4e3}' --//Money3\Rejected - Other
		,'{5b60e286-11fa-4cfc-be7e-3aa48eda2348}' --//Money3\Rejected - 7 Days
		,'{77d3e686-b8fc-4524-8362-310642b05003}' --//Money3\Rejected - Affordability
		,'{fadf6760-922c-4ada-8e37-171a955424d3}' --//Money3\Rejected - Criteria
		,'{1f40e956-07ef-48b3-87e4-8d83e99cd36c}' --//Money3\Rejected - Duplicate
		,'{68907c0d-ae47-4775-8b7c-5f2ce1214dfd}' --//Money3\Rejected - Forward to Store
		,'{24da862d-bae2-484e-9ad1-6ecdea78b4e3}' --//Money3\Rejected - Other
		)

IF OBJECT_ID('tempdb..#Esign') IS NOT NULL
	DROP TABLE #Esign

SELECT ROW_NUMBER() OVER (
		PARTITION BY RES_IDLink_RMR ORDER BY RES_CreatedOn DESC
		) AS 'RowNo'
	,RES_IDLink_RMR
	,RES_IPAddress
	,RES_TimeStamp AS 'EsignDate'
INTO #Esign
FROM [WebPortal].[ProductESign]

IF OBJECT_ID('M3_main_rep..ZZ_Loan_Fund_Report') IS NOT NULL
	DROP TABLE M3_main_rep..ZZ_Loan_Fund_Report;

SELECT RMR.RMR_SeqNumber AS 'LoanNumber'
	,CMR.CMR_Name AS 'ClientName'
	,CMR_Branch.CMR_Name AS 'BranchName'
	,CMR_Approval.CMR_Name AS 'AssessorName'
	,CSU.XSU_Detail AS 'CurrentStatus'
	,CAST(StatusDate.SMR_DateEnter AS DATE) AS 'CurrentStatusDate'
	,ISNULL(RCFe_TotalFee.Fees, 0) AS 'ApprovedFee'
	,ISNULL(PCD_Approved.RCB_CurrentValue, 0) - ISNULL(RCFe_TotalFee.Fees, 0) AS 'ApprovedLoanAmount'
	,ISNULL(PCD_Approved.RCB_CurrentValue, 0) AS 'TotalApprovedAmount'
	,PCD_Application.RCB_CurrentValue AS 'ApplicationAmount'
	,CAST(RCD_Settled.RCD_CurrentStart AS DATE) AS 'SettlementDate'
	,CAST(RCD_Approved.RCD_CurrentStart AS DATE) AS 'ApprovedDate'
	,CAST(RCD_Lodged.RCD_CurrentStart AS DATE) AS 'LodgedDate'
	--,webPortalLoan.RLD_Ref AS 'REF'
	--,webPortalLoan.RLD_SubIDa AS 'SubA'
	--,webPortalLoan.RLD_SubIDb AS 'SubB'
	,'' AS 'REF'
	,'' AS 'SubA'
	,'' AS 'SubB'
	,CAST(tblEsign.EsignDate AS DATE) AS 'EsignDate'
	,tblEsign.RES_IPAddress AS 'EsignIP'
	,tblDecline.DecliningAgent
	,CAST(tblDecline.SMR_DateEnter AS DATE) AS 'DeclineDate'
	,CT.LoanType
	,CPDR.XRDr_Detail AS 'DeclineReason'
	,GETDATE() AS 'LoadTime'
INTO [M3_MAIN_REP].dbo.ZZ_Loan_Fund_Report
FROM iO_Product_MasterReference RMR
INNER JOIN IO_LINK_Masterreference LMR ON LMR.LMR_IDLink_Code_ID = RMR_ID
	AND LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
INNER JOIN iO_Link_MasterReference LMR_Branch ON RMR_ID = LMR_Branch.LMR_IDLink_Code_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	AND LMR_Branch.LMR_IDLINK_CMR IN (
		--'{2537b5aa-9e0f-49f9-a55b-892731571080}' --//Direct Unsecured Finance
		'{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
		)
LEFT JOIN iO_Client_MasterReference CMR ON CMR.CMR_ID = LMR.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference LMR_Approval ON LMR_Approval.LMR_IDLink_Code_ID = RMR.RMR_ID
	AND LMR_Approval.LMR_IDLink_Association = '{299646a4-d179-43c9-8fb0-4ac1af1d45b8}' --Loan\Approval Officer
LEFT JOIN iO_Client_MasterReference CMR_Approval ON CMR_Approval.CMR_ID = LMR_Approval.LMR_IDLink_CMR
LEFT JOIN IO_Client_Masterreference CMR_Branch ON CMR_Branch.CMR_ID = LMR_Branch.LMR_IDLINK_CMR
LEFT JOIN iO_Control_StatusMaster CSU ON CSU.XSU_ID = RMR.RMR_IDLink_XSU
LEFT JOIN iO_Product_LoanMDT PLM ON PLM.RLM_IDLINK_RMR = RMR.RMR_ID
LEFT JOIN iO_Control_ProductDeclineReason CPDR ON CPDR.XRDr_ID = PLM.RLM_IDLINK_XRDr
--//Balances
LEFT JOIN IO_Product_ControlBalance PCD_Approved ON PCD_Approved.RCB_IDLink_RMR = RMR.RMR_ID
	AND PCD_Approved.RCB_IDLink_XRBl = '{57af2f0d-9ec7-46c7-9468-cf633f9b4930}' --//Loan\Standard\Approved
LEFT JOIN iO_Product_ControlBalance PCD_Application WITH (NOLOCK) ON PCD_Application.RCB_IDLink_RMR = RMR.RMR_ID
	AND PCD_Application.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}' --//Loan\Standard\Application
LEFT JOIN #RCFe_TotalFee RCFe_TotalFee ON RCFe_TotalFee.RMR_ID = RMR.RMR_ID
LEFT JOIN #CurrentStatusDate StatusDate ON StatusDate.SMR_IDLINK_Code = RMR.RMR_ID
	AND RowNum = 1
--//Dates
LEFT JOIN IO_Product_ControlDate RCD_Settled WITH (NOLOCK) ON RCD_Settled.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Settled.RCD_Type = 6 --//Settlement Date
LEFT JOIN IO_Product_ControlDate RCD_Approved WITH (NOLOCK) ON RCD_Approved.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Approved.RCD_Type = 2 --//Approved Date
LEFT JOIN IO_Product_ControlDate RCD_Lodged WITH (NOLOCK) ON RCD_Lodged.RCD_IDLink_RMR = RMR.RMR_ID
	AND RCD_Lodged.RCD_Type = 106 --//Lodged Date
	--//Web Details
	--LEFT JOIN [WebPortal].[ProductLoanDetails] webPortalLoan WITH (NOLOCK) ON webPortalLoan.RLD_IDLink_RMR = RMR.RMR_ID
LEFT JOIN #Esign tblEsign ON tblEsign.RES_IDLink_RMR = RMR.RMR_ID
	AND tblEsign.RowNo = 1
LEFT JOIN #tblDecline tblDecline ON tblDecline.SMR_IDLink_Code = RMR.RMR_ID
	AND tblDecline.RowNo = 1
LEFT JOIN #CustomerType CT ON CT.RMR_seqnumber = RMR.RMR_Seqnumber
WHERE Cast(RCD_Lodged.RCD_CurrentStart AS DATE) > '2016-07-03'
	--AND RMR_SeqNumber = 1640442

GO
