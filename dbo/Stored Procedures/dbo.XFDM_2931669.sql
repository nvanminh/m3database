SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931669] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iLabel14_Text_1 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox16_Text_2 = (SELECT SUM(RLAm_Value) FROM iO_Product_LoanAssetMaster left join iO_Control_AssetOther on RLAm_IDLink_XASo = XASo_id left join iO_Client_MasterReference ON iO_Product_LoanAssetMaster.RLAm_IDLink_cMR = iO_Client_MasterReference.CMR_ID left JOIN iO_Link_MasterReference ON iO_Product_LoanAssetMaster.RLAm_IDLink_cMR = iO_Link_MasterReference.LMR_IDLink_CMR AND iO_Product_LoanAssetMaster.RLAm_IDLink_RMR = iO_Link_MasterReference.LMR_IDLink_Code_ID left JOIN iO_Control_LinkMaster ON iO_Link_MasterReference.LMR_IDLink_Association = iO_Control_LinkMaster.XLK_ID WHERE RLAm_IDLink_RMR = @Value_02 and LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')), 
		iTextBox17_Text_3 = (Select SUM(RLAp_EstimatedValue) AS Expr1 From iO_Product_LoanAssetProperty left JOIN iO_Link_MasterReference ON iO_Product_LoanAssetProperty.RLAp_IDLink_RMR = iO_Link_MasterReference.LMR_IDLink_Code_ID and iO_Product_LoanAssetProperty.RLAp_IDLink_cMR = iO_Link_MasterReference.LMR_IDLink_CMR Where RLAp_IDLink_RMR = @Value_02 and LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')); 

GO
