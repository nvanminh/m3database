SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931660] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit21_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{f60711b8-ab9f-4ee2-91fd-e2c8cd2bf0d1}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit22_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{b3444ec8-f5ce-4a9c-a8af-11d93005b605}') And (FMRc_IDLink_Code = @Value_02))), 
		iLabel10_Text_3 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox1_Text_4 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{be78487a-0914-4843-a044-793467e208d0}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox10_Text_5 = (select isnull(sum(rcfe_value),0) from io_product_controlfee where rcfe_idlink_rmr = @Value_02 and rcfe_type = 2), 
		iTextBox129_Text_6 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{fdc08321-8fea-4f57-8593-9c2ba5ba60f1}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox2_Text_7 = (select xfr_detail from io_product_paymentschedulemaster left join io_control_frequency on xfr_id = rpsm_idlink_frequency where rpsm_idlink_rmr = @Value_02), 
		iTextBox3_Text_8 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{21dd8c31-6757-494a-9d4e-695c2909b9b0}') And (FMRc_IDLink_Code = @Value_02))); 

GO
