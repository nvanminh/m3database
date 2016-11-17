CREATE PROCEDURE [dbo].[sp_M3_ActivityReport_No]
	-- Add the parameters for the stored procedure here
@Loginuserbranch varchar(40)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON; 
set dateformat dmy  
Select  
	count(distinct rmr_seqnumber)
	 
		From 
	iO_Link_MasterReference base 
		left join iO_Product_MasterReference with (nolock) on RMR_ID = base.LMR_IDLink_Code_ID 
		left join io_Control_ProductMaster  with (nolock)  on RMR_IDLink_XRP = XRP_ID 
		left join iO_Control_LinkMaster  with (nolock)  on XLK_ID = base.LMR_IDLink_Association 
		left join iO_Control_StatusMaster  with (nolock)  on XSU_ID = RMR_IDLink_XSU 
		left join iO_Link_MasterReference primaryClient  with (nolock)  on primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and primaryClient.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{733300d8-748f-4ab7-a2e9-6df9d8bcb63e}') 
		left join iO_Link_MasterReference brokerClient  with (nolock)  on brokerClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and brokerClient.LMR_IDLink_Association = ('{69783579-9e83-4e82-bb25-7b3d52b0f99d}') 
		left join iO_Link_MasterReference brokerPerson  with (nolock)  on brokerperson.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and brokerperson.LMR_IDLink_Association = ('{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}') 
		left join iO_Link_MasterReference assessorperson  with (nolock)  on assessorperson.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and assessorperson.LMR_IDLink_Association = ('{d8dcb018-54c1-4ba3-8b28-66973a09dc45}') 
		 
		left join iO_Link_MasterReference settlementperson  with (nolock)  on settlementperson.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and settlementperson.LMR_IDLink_Association = ('{89517398-1927-4eb5-868e-640ed00bc956}') 
		 
		left join io_link_masterreference Branch with (nolock)  on Branch.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID and Branch.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}' 
		left join iO_Client_MasterReference primaryClient1  with (nolock) on  primaryClient1.CMR_ID = base.LMR_IDLink_CMR 
		left join iO_Client_MasterReference brokerClient1  with (nolock)  on brokerClient1.CMR_ID = brokerclient.LMR_IDLink_CMR 
		left join iO_Client_MasterReference brokerPerson1  with (nolock)  on brokerPerson1.CMR_ID = brokerperson.LMR_IDLink_CMR 
		left join iO_Client_MasterReference Assessor1  with (nolock)  on Assessor1.CMR_ID = assessorperson.LMR_IDLink_CMR 
		 
		left join iO_Client_MasterReference Settlement1  with (nolock)  on Settlement1.CMR_ID = settlementperson.LMR_IDLink_CMR 
		 
		left join iO_Status_MasterReference   with (nolock)  on SMR_ID = (select top 1 SMR_ID from iO_Status_MasterReference  with (nolock)  where SMR_IDLink_Code = RMR_ID)  
		left join iO_Product_ControlDate  with (nolock)  on RCD_ID = (SELECT TOP 1 RCD_ID FROM iO_Product_ControlDate   with (nolock)  WHERE RCD_IDLink_RMR = rmr_id And RCD_Type = 106 ORDER BY RCD_SeqNumber DESC) 
 
 
 
Where 
	base.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}', '{733300d8-748f-4ab7-a2e9-6df9d8bcb63e}', '{15acabe9-4ca1-4f3b-8b80-b53d08fb7b30}', '{f3fdab19-241b-4243-861b-4d0a4509f127}') 
	and rmr_idlink_xsu in ('{95bdb1e1-c63f-40ec-89f9-6586d159ab71}', '','{583cb447-e6e7-4317-9210-158a8a1776c5}','{6a866fa9-ccd9-4a2e-bc65-552f7f7a9251}','{5921226e-9db6-4778-9874-bca71521d9f5}', 
	'{0c8e98df-fe14-4ceb-a093-0297d2aa377b}','{fe0193bd-1e14-4f7e-9a5b-52470ac526b2}','{48621d98-a39b-4565-bceb-aadc59f9d213}','{1aad8074-9af8-4598-a033-c070cf3a49b9}', '{22b68082-f44a-448d-871c-3f7c8436119f}', '{dd165660-4a59-4eec-bfee-4652fff35fcd}', '{d77d4723-0ddc-4f56-96ca-f5859515e9a2}', '{efd0d3e3-cb01-4df3-a0f2-4da0e211ee91}') 
	and branch.LMR_IDLink_CMR = @Loginuserbranch 
	OPTION(QUERYTRACEON 2312)
END







GO
