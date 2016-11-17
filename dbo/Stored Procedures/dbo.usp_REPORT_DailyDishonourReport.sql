CREATE PROCEDURE [dbo].[usp_REPORT_DailyDishonourReport]
AS
SET NOCOUNT ON

SELECT DISTINCT RMR.RMR_SeqNumber AS 'Loan_Number'
	--,CMR.CMR_SeqNumber AS 'Client ID'
	,CTI.CTI_FirstName AS 'Client_First_Name'
	,CTI.CTI_Surname AS 'Client_Sur_name'
	,CONVERT(VARCHAR(20), CTI.CTI_DOB, 103) AS 'Dob'
	,LTRIM(RTRIM(CONCAT (
				--trimming space to prepare for concatenation
				LTRIM(RTRIM(CAD.CAD_UnitNumber))
				,' '
				,LTRIM(RTRIM(CAD.CAD_SuiteNumber))
				,' '
				,lTRIM(RTRIM(CAD.CAD_StreetNumber))
				,' '
				,lTRIM(RTRIM(CAD.CAD_StreetName))
				,' '
				,lTRIM(RTRIM(XSYSst.XSYSst_Description))
				,' '
				,lTRIM(RTRIM(XSYSpc.XSYSpc_CITY))
				,' '
				,lTRIM(RTRIM(XSYSpc.XSYSpc_POSTCODE))
				))) AS 'Address'
	,(
		SELECT TOP 1 Replace(Ltrim(RTrim(Isnull(ccd_areacode, '') + Isnull(ccd_details, ''))), ' ', '')
		FROM io_client_contactdetail WITH (NOLOCK)
		WHERE ccd_idlink_cmr = CMR.cmr_id
			AND ccd_idlink_xct = '{e97a2f58-e322-421d-afe6-7c175adfbace}'
		ORDER BY ccd_seqnumber DESC
		) AS 'phone'
	,(
		SELECT TOP 1 Replace(Ltrim(RTrim(Isnull(ccd_areacode, '') + Isnull(ccd_details, ''))), ' ', '')
		FROM io_client_contactdetail WITH (NOLOCK)
		WHERE ccd_idlink_cmr = CMR.cmr_id
			AND ccd_idlink_xct = '{29411831-e939-4357-940a-44f55b4a5c9b}'
		ORDER BY ccd_seqnumber DESC
		) AS 'mobile'
	--,(
	--	SELECT TOP 1 Isnull(ccd_areacode, '') + ' ' + Isnull(ccd_details, '')
	--	FROM io_client_contactdetail WITH (NOLOCK)
	--	WHERE ccd_idlink_cmr = cmr_id
	--		AND ccd_idlink_xct = '{fde55d9b-a337-41e9-a08f-1cc2f013ee3a}'
	--	ORDER BY ccd_seqnumber DESC
	--	) AS [Work phone]
	,CMR_Branch.CMR_Name AS 'branch'
	,XSU.Xsu_detail AS 'Loan_Status'
	,TMR_DishonourLatest.Task AS 'dishonour_type'
	,CONVERT(VARCHAR(20), TMR_DishonourLatest.DateCreated, 103) AS 'dishonour_date1'
	,CONVERT(VARCHAR(20), TMR_DishonourFirst.DateCreated, 103) AS 'First_dishonour_date'
	,CASE 
		WHEN cast(TMR_DishonourLatest.DateCreated AS DATE) = cast(TMR_DishonourFirst.DateCreated AS DATE)
			THEN '1st DH'
		ELSE 'Subsequent DH'
		END AS '1st DH'
	,CASE 
		WHEN Arrears.ArrearsBalance > RCB.RCB_CurrentValue
			THEN RCB.RCB_CurrentValue
		WHEN Arrears.ArrearsBalance < 0
			THEN 0
		ELSE Arrears.ArrearsBalance
		END AS 'arrears_balance'
	,CONVERT(VARCHAR(20), SettledDate.RCD_CurrentStart, 103) AS 'settlement_date'
	--,TaskDetails.TaskStatus
	,XFR.XFR_Detail AS 'Payment Frequency'
	,DishonourAmount.RTM_ValueDB AS 'DebitAmount'
FROM iO_Product_masterreference RMR
INNER JOIN iO_Link_MasterReference LMR ON RMR.RMR_ID = LMR.LMR_IDLink_Code_ID
	AND LMR.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --Loan\Principal Borrower
INNER JOIN iO_Client_MasterReference CMR ON LMR.LMR_IDLink_CMR = CMR.CMR_ID
--Branch Link
INNER JOIN iO_Link_MasterReference LMR_Branch ON LMR_Branch.LMR_IDLINK_Code_ID = RMR.RMR_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
	--Branch Ower
INNER JOIN dbo.iO_Client_MasterReference CMR_Branch ON LMR_Branch.LMR_IDLINK_CMR = CMR_Branch.CMR_ID
	AND CMR_Branch.CMR_Name IN (
		'Loan Centre'
		,'Micro Motor'
		,'Direct Unsecured Finance'
		,'Cashtrain Branch'
		)
--Contact details
LEFT JOIN io_client_contactdetail ON ccd_idlink_cmr = CMR.cmr_id
--residential Address
LEFT JOIN iO_Client_TypeIndividual CTI ON CTI.CTI_IDLInk_CMR = CMR.CMR_ID
LEFT JOIN [iO_Client_AddressDetail ] CAD ON CAD.CAD_IDLInk_CMR = CMR.CMR_ID
LEFT JOIN iO_Control_SystemStreetTypes XSYSst ON CAD.CAD_IDLink_StreetType = XSYSst.XSYSst_ID
LEFT JOIN iO_Control_AddressType XAT ON CAD.CAD_IDLink_XAT = XAT.XAT_ID
LEFT JOIN iO_Control_SystemPostcode XSYSpc ON XSYSpc.XSYSpc_ID = CAD.CAD_City
--Loan Status
LEFT JOIN IO_Control_statusmaster XSU ON XSU.XSU_ID = RMR.RMR_IDLINK_XSU
--settlement date
LEFT JOIN dbo.iO_Product_ControlDate SettledDate(NOLOCK) ON SettledDate.RCD_IDLink_RMR = RMR.RMR_ID
	AND SettledDate.RCD_Type = 6
--Active Task Assigned
LEFT JOIN (
	(
		SELECT PMR.RMR_ID
			,PMR.rmr_seqnumber AS 'loan_number'
			,TMR.Kmr_Detail AS 'task'
			,TMR.kmr_DateStart AS 'DateCreated'
			,replace(xsu_detail, 'ARMnet\Task\', '') AS 'TaskStatus'
		FROM
			--Only show transactions
			io_link_masterreference LMR
		INNER JOIN io_task_masterreference TMR ON LMR.lmr_idlink_code_id = TMR.kmr_id
		LEFT JOIN io_product_masterreference PMR ON PMR.rmr_id = TMR.kmr_idlink_rmr
		--link Status
		LEFT JOIN io_control_statusmaster ON TMR.kmr_idlink_xsu = xsu_id
		--show only Active Status
		WHERE PMR.RMR_ID IS NOT NULL
		)
	) TMR_DishonourLatest ON TMR_DishonourLatest.RMR_ID = lmr.lmr_idlink_code_id
LEFT JOIN (
	(
		SELECT details.DateCreated
			,details.task
			,details.kmr_idlink_rmr
		FROM (
			--select the all the tasks and assign row number
			SELECT kmr_Date AS DateCreated
				,Kmr_Detail AS task
				,kmr_idlink_rmr
				,row_number() OVER (
					PARTITION BY KMR_idlink_rmr ORDER BY kmr_Date
					) AS rownumber
			FROM io_task_masterreference WITH (NOLOCK)
			WHERE Kmr_Detail IN (
					'Payment Dishonoured'
					,'Payment Dishonoured, Account on HOLD. Ensure notes are recorded'
					,'Payment Dishonoured. Contact client, Send 1st d/h letter and Record notes.'
					)
			) Details
		WHERE details.rownumber = 1
		)
	) TMR_DishonourFirst ON TMR_DishonourFirst.kmr_idlink_rmr = lmr.lmr_idlink_code_id
--Arrears Balance
LEFT JOIN (
	SELECT RMR.RMR_SeqNumber
		,RMR.RMR_ID
		,RCB_MissedPayment.RCB_CurrentValue AS 'ArrearsBalance'
	FROM iO_Product_MasterReference RMR
	LEFT JOIN iO_Product_ControlBalance RCB_MissedPayment ON RCB_MissedPayment.RCB_IDLink_RMR = RMR.RMR_ID
	LEFT JOIN iO_Control_ProductBalance XRBL_MissedPayment ON XRBL_MissedPayment.XRBl_ID = RCB_MissedPayment.RCB_IDLink_XRBl
	WHERE XRBL_MissedPayment.XRBl_Detail LIKE '%Arrears\Missed Payments\Total'
	) Arrears ON LMR.LMR_IDLink_Code_ID = arrears.RMR_ID
--Debit Amount
LEFT JOIN (
	SELECT RTM_ID
		,RTM_IDLink_CMR
		,RTM_IDLink_RMR
		,RTM_DateE
		,RTM_ValueDB
		,row_number() OVER (
			PARTITION BY RTM_IDLink_RMR ORDER BY RTM_ValueDB DESC
			) AS 'RowNo'
	FROM iO_Product_Transaction
	WHERE RTM_IDLINK_XTRM = '{e832ac26-3c19-41aa-871c-a08f9b698d69}'
	) DishonourAmount ON DishonourAmount.RTM_IDLink_RMR = RMR.RMR_ID
	AND RowNo = 1
--Payment Schedule
LEFT JOIN iO_Product_PaymentScheduleMaster PPSM WITH (NOLOCK) ON PPSM.RPSM_IDLINK_RMR = LMR.LMR_IDLINK_CODE_ID
LEFT JOIN iO_Control_Frequency XFR WITH (NOLOCK) ON RPSM_IDLink_Frequency = XFR.XFR_ID
--Loan Balance
LEFT JOIN iO_Product_ControlBalance RCB ON RCB.RCB_IDLink_RMR = RMR.RMR_ID
	AND RCB_IDLINK_XRBL = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' --Loan\Standard\Principal
WHERE CAD.cad_idlink_xat = '{382c4074-1b80-4a5f-abc0-221571215da6}' --residential address
	AND TMR_DishonourLatest.task IN (
		'Payment Dishonoured'
		,'Payment Dishonoured, Account on HOLD. Ensure notes are recorded'
		,'Payment Dishonoured. Contact client, Send 1st d/h letter and Record notes.'
		)
	--show only active tasks
	AND TMR_DishonourLatest.TaskStatus = 'Active'
	--AND Cast(TMR_DishonourLatest.DateCreated AS DATE) BETWEEN '2016-06-27'
	--	AND '2016-06-28'
ORDER BY Loan_Number


GO
