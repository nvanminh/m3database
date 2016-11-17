CREATE PROCEDURE [dbo].[sp_DashboardLoansByStatus] 
	-- Add the parameters for the stored procedure here
	--<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	--<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select 
	RMR_SeqNumber [Loan ID], 
	
	Case CMR_IDLink_XCY
		When '{e0acff68-9818-4483-bb13-b7b879fcb8aa}' Then 
			isnull(XCTi_Detail + ' ','') + isnull(CTI_FirstName + ' ','') + isnull(CTI_MiddleName+ ' ','') + isnull(CTI_Surname,'')
		Else 
			isnull(CTC_CompanyName, '')
		End [Principal Borrower],
	isnull(( 
		Select 
			 top 1 XSU_Detail 
		From 
			iO_Status_MasterReference 
				left join iO_Control_StatusMaster on SMR_IDLink_XSU = XSU_ID 
		Where 
			SMR_IDLink_Code = RMR_ID 
			and ( 
				(SMR_DateEnter < dateadd(day, 1, GETDATE()) and SMR_DateLeave >= GETDATE()) 
				or 
				(SMR_DateEnter < dateadd(day, 1, GETDATE()) and SMR_DateLeave is null)) 
		--Group 
		Order By 
			SMR_DateEnter desc ),isnull(XSU_Detail,'')) [Status As At Date], 
			isnull(RCB_CurrentValue, 0) [Approved Amount]
From 
	iO_Product_MasterReference 		
		left join iO_Link_MasterReference funder on RMR_ID = LMR_IDLink_Code_ID and LMR_IDLink_Association = '{b71597db-b0e9-47ad-82c9-9d591227ad28}'
		left join iO_Product_ControlBalance on RMR_ID = RCB_IDLink_RMR and RCB_IDLink_XRBl = '{57af2f0d-9ec7-46c7-9468-cf633f9b4930}'
		inner join iO_Product_ControlDate settlement on settlement.RCD_IDLink_RMR = RMR_ID and settlement.RCD_Type = 6 
		left join iO_Product_ControlDate discharge on discharge.RCD_IDLink_RMR = RMR_ID and discharge.RCD_Type = 3 
		left join iO_Control_StatusMaster on XSU_ID = RMR_IDLink_XSU
		inner join iO_Link_MasterReference borrower on borrower.LMR_IDLink_Code_ID = RMR_ID and borrower.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}'
		inner join iO_Client_MasterReference on CMR_ID = borrower.LMR_IDLink_CMR
		left join iO_Client_TypeIndividual on CTI_IDLink_CMR = CMR_ID
		left join iO_Client_TypeCompany on CTC_IDLink_CMR = CMR_ID
		left join iO_Control_ClientTitle on XCTi_ID = CTI_IDLink_XCT
 
Where 
	RMR_ID = ( 
		Select 
			top 1 SMR_IDLink_Code 
		From 
			iO_Status_MasterReference 
		Where 
			SMR_IDLink_Code = RMR_ID 
		Order By 
			SMR_DateEnter desc) 
	and ( 
	RMR_IDLink_XRM in ('{c70eea64-ebb0-41c7-add1-94800d3cc38f}', '{f614f889-892e-48c6-9ccf-b48697e50141}', '{b1960fc6-5ec4-48b3-bad8-5be30ff91563}', '{498c4b69-c373-4067-9dd7-26c495e23e51}')
	and GETDATE() >= settlement.RCD_CurrentStart
	and (GETDATE() < discharge.RCD_CurrentStart or discharge.RCD_CurrentStart is NULL)) 

END

GO
