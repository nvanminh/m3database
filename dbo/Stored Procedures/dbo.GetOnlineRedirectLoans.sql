SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO














-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetOnlineRedirectLoans]
	-- Add the parameters for the stored procedure here
@logeddate datetime

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
SET NOCOUNT ON;
set dateformat dmy;
with cc as (
select lmr_idlink_code_id as [lmrloanid] from io_link_masterreference lmr where lmr.lmr_idlink_association = '{e7c16435-e664-43b3-ba0e-4a4adeb8b56f}' and lmr_idlink_cmr = '{5b277056-d65c-4296-a72d-237ab4b834bf}'
), c as (
select rmr.rmr_id, rmr.RMR_SeqNumber, rcd.RCD_CurrentStart as [RLDate] from iO_Product_ControlDate rcd with (nolock) inner join cc with (nolock)  on rcd.RCD_IDLink_RMR 
= cc.[lmrloanid] inner join io_product_masterreference rmr with (nolock)  on rmr.rmr_id = cc.[lmrloanid] and rmr.RMR_IDLink_XSU in 
(
'{efd0d3e3-cb01-4df3-a0f2-4da0e211ee91}', 
'{fe0193bd-1e14-4f7e-9a5b-52470ac526b2}',
'{6a866fa9-ccd9-4a2e-bc65-552f7f7a9251}',
'{0c8e98df-fe14-4ceb-a093-0297d2aa377b}',
'{583cb447-e6e7-4317-9210-158a8a1776c5}',
'{05e4ceb3-1eee-456e-a497-1026c0768ede}',
'{95bdb1e1-c63f-40ec-89f9-6586d159ab71}',
'{abbd8f3f-51f3-4000-9052-ee6d81b8834c}',
'{0f93bdc2-2d17-4624-b367-385f6ac33eb6}',
'{5921226e-9db6-4778-9874-bca71521d9f5}',
'{2e16b85a-816e-471d-8078-30362ae88042}',
'{1cce33b0-bc4d-4f3f-aede-9fcd16685af5}',
'{abbd8f3f-51f3-4000-9052-ee6d81b8834c}',
'{8441da2e-2ace-4d19-9608-87a5c5acb5a8}'
) and rcd.RCD_Type = 106 and RCD_CurrentStart >= @logeddate
), d as (
select c.RMR_ID as [LoanID],c.RMR_SeqNumber [LoanNo],CMR_Name as [Redirected From], [RLDate] from c inner join iO_Link_MasterReference lmr with (nolock)  on lmr.LMR_IDLink_Code_ID = c.RMR_ID inner join 
iO_Client_MasterReference cmr  with (nolock)  on lmr.LMR_IDLink_CMR = cmr.CMR_ID  where lmr.LMR_IDLink_Association in 
('{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'))
,e as (
select d.LoanID as [LoanID],d.LoanNo, d.[Redirected From], CMR_Name as [Redirected To], [RLDate] from d inner join iO_Link_MasterReference lmr with (nolock)  on lmr.LMR_IDLink_Code_ID = d.LoanID inner join 
iO_Client_MasterReference cmr with (nolock)  on lmr.LMR_IDLink_CMR = cmr.CMR_ID  where lmr.LMR_IDLink_Association in 
('{b55145aa-2697-43b5-9c6a-c4a0960823d8}'))
, f as (
select e.LoanID, e.LoanNo,e.[Redirected From], e.[Redirected To], [RLDate] as [LodgedDate], smr.smr_dateenter as [StatusEnter], DATEDIFF(hour,smr.smr_dateenter,getdate()) as [NoActionInHours] from e inner join iO_Status_MasterReference smr with (nolock) on e.LoanID = smr.smr_idlink_code and smr.smr_dateleave is null )

select f.LoanNo,f.[Redirected From],f.[Redirected To],f.[LodgedDate], xsu.XSU_AlternateDetail as [Current Status] , f.[StatusEnter] as [StatusEnter], f.NoActionInHours from f inner join iO_Product_MasterReference rmr with (nolock) on f.LoanID = rmr.RMR_ID inner join iO_Control_StatusMaster xsu with (nolock) on rmr.RMR_IDLink_XSU = xsu.XSU_ID  where [Redirected To] not in 
(
--'Direct Secured Finance',
'Loan Centre',
'Loan Centre Credit Team',
--'Micro Motor',
'Tiny terms'
) order by NoActionInHours desc



END















GO
