SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_REPORT_LoanTask]
AS
SET NOCOUNT ON
SET DATEFORMAT dmy;

IF OBJECT_ID('tempdb..#Result') IS NOT NULL
	DROP TABLE #Result

SELECT DISTINCT RMR_Seqnumber
	,xtkm_alternatedetail AS TaskeName
	,kmr_date AS Created_date
	,convert(VARCHAR(10), kmr_dateDue, 103) AS DueDate
	,convert(VARCHAR(10), KMR_DateEnd, 103) AS ClosedDate
	,(
		SELECT TOP 1 replace(cmr_name, 'Cashtrain Branch', '')
		FROM io_client_masterreference
		LEFT JOIN io_link_masterreference ON lmr_idlink_cmr = cmr_id
		LEFT JOIN io_task_masterreference ON lmr_idlink_code_id = kmr_id
		WHERE lmr_idlink_association = '{60ac811a-357a-4836-b945-340dcdb5feb8}' --//Task\Assigned To
			AND kmr_id = link1.lmr_idlink_code_id
		) AS Agent
	,replace(CSM_Task.XSU_Detail, 'ARMnet\Task\', '') AS 'TaskStatus'
	,CSM_Loan.XSU_Detail AS 'Current_Status'
	,CMR_Branch.CMR_Name
INTO #Result
FROM io_link_masterreference link1
INNER JOIN io_task_masterreference TMR ON link1.lmr_idlink_code_id = TMR.kmr_id
LEFT JOIN io_product_masterreference RMR ON RMR.rmr_id = TMR.kmr_idlink_rmr
LEFT JOIN iO_Link_MasterReference LMR_Branch ON LMR_Branch.LMR_IDLink_Code_ID = RMR_ID
	AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --Loan\Branch Owning
LEFT JOIN iO_Client_MasterReference CMR_Branch ON CMR_ID = LMR_Branch.LMR_IDLINK_CMR
LEFT JOIN io_control_statusmaster CSM_Task ON TMR.kmr_idlink_xsu = CSM_Task.xsu_id
LEFT JOIN IO_Control_StatusMaster CSM_Loan ON CSM_Loan.XSU_ID = RMR.RMR_IDLINK_XSU
LEFT JOIN io_control_taskmaster ON TMR.kmr_idlink_xtkm = xtkm_id
LEFT JOIN io_control_linkmaster ON TMR.kmr_idlink_xlk = xlk_id
LEFT JOIN io_keys_masterreference ON kmr_idlink_rmr = ymr_idlink_armnet
	AND ymr_idlink_xfk = '{ef3baea0-8d36-4c5a-8a2d-6ce9e119335b}'
WHERE
	--kmr_idlink_xsu = '{7d7f8e76-c07a-4560-8a4f-07e7262d3f73}'
	--cast(convert(varchar(10),kmr_datestart,103) as datetime) <= cast('05/07/2016' as datetime)
	--cast(convert(varchar(10),kmr_datedue,103) as datetime) >= cast('05/07/2016' as datetime)
	(
		(
			link1.lmr_idlink_cmr = '{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
			AND link1.lmr_idlink_association = '{0451227c-cb41-4f9e-80d0-985ded6eb558}' --//Task\Branch
			)
		OR (
			link1.lmr_idlink_cmr = '{cf65e2fb-5964-491a-9511-ca361149ebb2}' --//Cashtrain Branch
			AND link1.lmr_idlink_association = '{a6a0633d-0270-478e-8b18-cab30a7c7dce}' --//Task\Created By
			)
		)
	--and xtkm_detail not like '%collection%'
	--and xtkm_detail not like '%dishonour%'
	--and xtkm_detail not like '%discharge%'
	--and xtkm_detail not like '%charged%'
	AND (xtkm_detail LIKE '%online%' OR xtkm_detail LIKE '%Discharge Loan%')

IF OBJECT_ID('M3_MAIN_REP..ZZ_Report_Task') IS NOT NULL
	DROP TABLE M3_MAIN_REP..ZZ_Report_Task;

SELECT result.RMR_SeqNumber AS 'LoanNo'
	,result.TaskeName
	,result.Created_date
	,result.DueDate
	,Current_Status
	,isnull(result.ClosedDate, '') AS ClosedDate
	,CASE 
		WHEN agent IS NULL
			THEN 'No'
		WHEN agent = 'Cashtrain Branch'
			THEN 'No'
		WHEN agent = ''
			THEN 'No'
		ELSE 'Yes'
		END AS Assigned
	,isnull(result.Agent, '') AS Agent
	,result.TaskStatus
	,CMR_Name
	,GETDate() AS 'DataLoadTime'
INTO [M3_MAIN_REP].[dbo].[ZZ_Report_Task]
FROM #Result result

SET NOCOUNT OFF

GO
