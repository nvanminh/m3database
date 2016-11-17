SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DisplayTillsCrossCompany]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
SET NOCOUNT ON; 
select 
                cmr.cmr_id,
                cmr.cmr_name as BranchName,
                (Select top 1 
                                CMR_Name
                From 
                                iO_Link_MasterReference LMR
                                Left Join iO_Client_MasterReference ON LMR_IDLink_Code_ID = CMR_ID
                Where 
                                LMR_IDLink_CMR = cmr.cmr_id 
                                And LMR_IDLink_Association =  '{d9582a15-9516-4f42-bda8-8d45aa31ff10}') 
                as ZoneName,
                (Select top 1
                                CMR_Name
                From 
                                iO_Link_MasterReference LMR
                                Left Join iO_Client_MasterReference ON LMR_IDLink_Code_ID = CMR_ID
                                Left join io_security_masterreference ON smr_idlink_cmr = CMR_ID
                Where 
                                LMR_IDLink_CMR = cmr.cmr_id 
                                And LMR_IDLink_Association =  '{cc5f150e-df08-431f-8db1-0c7864a785b5}' 
                                And smr_idlink_profile = '{cf7afee6-5ed8-418e-8d15-8769c0ebbe00}'),
                (SELECT     
                                SUM(iO_Product_ControlBalance.RCB_CurrentValue) AS Expr1
                FROM         
                                iO_Client_MasterReference 
                                INNER JOIN iO_Link_MasterReference ON iO_Client_MasterReference.CMR_ID = iO_Link_MasterReference.LMR_IDLink_CMR 
                                INNER JOIN iO_Product_MasterReference ON iO_Link_MasterReference.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID 
                                INNER JOIN iO_Control_ProductMaster ON iO_Product_MasterReference.RMR_IDLink_XRP = iO_Control_ProductMaster.XRP_ID 
                                INNER JOIN iO_Control_ClassProduct ON iO_Control_ProductMaster.XRP_IDLink_Code = iO_Control_ClassProduct.XRM_ID 
                                INNER JOIN iO_Product_ControlBalance ON iO_Product_MasterReference.RMR_ID = iO_Product_ControlBalance.RCB_IDLink_RMR 
                                INNER JOIN iO_Control_ProductBalance ON iO_Product_ControlBalance.RCB_IDLink_XRBl = iO_Control_ProductBalance.XRBl_ID
                WHERE     
                                iO_Client_MasterReference.CMR_ID = cmr.cmr_id
                                AND iO_Control_ClassProduct.XRM_IDUser = 55 
                                AND iO_Control_ProductBalance.XRBl_IDUser = 130000)                              
from
                io_Client_MasterReference as cmr
                inner join io_link_masterreference as lmr on lmr.lmr_idlink_cmr = cmr.cmr_id
where 
                lmr.lmr_idlink_code_id = '{91f1cc0a-3952-4dae-ad95-1078a38d9676}'
order by cmr.cmr_name


END

GO
