SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931635] 
    @Value_01 varchar(40),
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iTextBox1_Tag_1 = (SELECT KMR_IDLink_XTKM FROM iO_Task_MasterReference WHERE KMR_ID = ''), 
		iTextBox1_Lookup_2 = (Select XTKM_Detail From iO_Control_TaskMaster Where XTKM_ID = (SELECT KMR_IDLink_XTKM FROM iO_Task_MasterReference WHERE KMR_ID = '')), 
		iTextBox2_Text_3 = (SELECT kmr_detail FROM iO_Task_MasterReference WHERE KMR_ID = ''), 
		iTextBox3_Text_4 = (SELECT kmr_detail FROM iO_Task_MasterReference WHERE KMR_ID = ''), 
		iTextBox4_Text_5 = (select RLAm_value from iO_Product_LoanAssetMaster where RLAm_IDLink_RMR = @Value_02 and RLAM_IDLink_CMR = @Value_01 and RLAM_CurrentForClient = 1 and RLAM_IDLink_XASo = '{afd746d1-12b5-4a42-9354-0a6a7ab6fca3}'), 
		iTextBox5_Text_6 = (select RLAm_value from iO_Product_LoanAssetMaster where RLAm_IDLink_RMR = @Value_02 and RLAM_IDLink_CMR = @Value_01 and RLAM_CurrentForClient = 1 and RLAM_IDLink_XASo = '{afd746d1-12b5-4a42-9354-0a6a7ab6fca3}'), 
		iTextBox6_Text_7 = (select RLAm_value from iO_Product_LoanAssetMaster where RLAm_IDLink_RMR = @Value_02 and RLAM_IDLink_CMR = @Value_01 and RLAM_CurrentForClient = 1 and RLAM_IDLink_XASo = '{afd746d1-12b5-4a42-9354-0a6a7ab6fca3}'); 

GO
