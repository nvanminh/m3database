SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931655] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{512d5322-9121-4162-9e51-f7698eabf0f0}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit2_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{ce228a86-a950-4f8b-8f87-a683de2b141e}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit3_Text_3 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{ce228a86-a950-4f8b-8f87-a683de2b141e}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit4_Text_4 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{512d5322-9121-4162-9e51-f7698eabf0f0}') And (FMRc_IDLink_Code = @Value_02))), 
		iComboEdit1_Text_5 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{ae1e6420-e79d-4ad5-8921-dc7bd1093c77}') And (FMRc_IDLink_Code = @Value_02))), 
		iLabel10_Text_6 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox2_Text_7 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{8385f50f-0f7c-4381-aecc-75ef177ee7f0}') And (FMRc_IDLink_Code = @Value_02))); 

GO
