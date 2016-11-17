SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931667] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iLabel1_Text_1 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox1_Text_2 = (Select SUM(RLLc_BalanceOwing) AS Expr1 from io_product_loanliabilitycredit left join io_control_liabilitiescredit on rllc_idlink_xlbc = xlbc_id left join iO_Client_MasterReference ON io_product_loanliabilitycredit.rllc_idlink_cmr = iO_Client_MasterReference.CMR_ID left JOIN iO_Link_MasterReference ON io_product_loanliabilitycredit.rllc_idlink_cmr = iO_Link_MasterReference.LMR_IDLink_CMR AND io_product_loanliabilitycredit.rllc_idlink_rmr = iO_Link_MasterReference.LMR_IDLink_Code_ID left JOIN iO_Control_LinkMaster ON iO_Link_MasterReference.LMR_IDLink_Association = iO_Control_LinkMaster.XLK_ID where rllc_idlink_rmr = @Value_02 and LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')), 
		iTextBox7_Text_3 = (Select SUM(RLLc_MonthlyRepayment) AS Expr1 from io_product_loanliabilitycredit left join io_control_liabilitiescredit on rllc_idlink_xlbc = xlbc_id left join iO_Client_MasterReference ON io_product_loanliabilitycredit.rllc_idlink_cmr = iO_Client_MasterReference.CMR_ID left JOIN iO_Link_MasterReference ON io_product_loanliabilitycredit.rllc_idlink_cmr = iO_Link_MasterReference.LMR_IDLink_CMR AND io_product_loanliabilitycredit.rllc_idlink_rmr = iO_Link_MasterReference.LMR_IDLink_Code_ID left JOIN iO_Control_LinkMaster ON iO_Link_MasterReference.LMR_IDLink_Association = iO_Control_LinkMaster.XLK_ID where rllc_idlink_rmr = @Value_02 and LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')); 

GO
