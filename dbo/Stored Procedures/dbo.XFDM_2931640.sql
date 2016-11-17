SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931640] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{434b806e-2c8d-4c71-9793-b071e0e25977}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit2_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{434b806e-2c8d-4c71-9793-b071e0e25977}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit3_Text_3 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{09345131-ee4d-41e0-8f7a-fff2a1710a28}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit4_Text_4 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{09345131-ee4d-41e0-8f7a-fff2a1710a28}') And (FMRc_IDLink_Code = @Value_02))), 
		iComboEdit1_Text_5 = (Select RMR_CustomerType From io_product_masterreference where RMR_ID = @Value_02), 
		iComboEdit4_Tag_6 = (Select RLM_IDLink_XSCa From io_product_loanMDT where RLM_Idlink_RMR = @Value_02), 
		iComboEdit4_Lookup_7 = (Select XSCa_Detail From iO_Control_SalesCampaign Where XSCa_ID = (Select RLM_IDLink_XSCa From io_product_loanMDT where RLM_Idlink_RMR = @Value_02)), 
		iLabel10_Text_8 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox1_Text_9 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{e7d80544-e19d-4c65-aaf9-2f7a29fd7171}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox103_Text_10 = (select isnull(sum(rcfe_value),0) from io_product_controlfee where rcfe_idlink_rmr = @Value_02 and rcfe_type = 2), 
		iTextBox31_Text_11 = (Select RCB_CurrentValue From iO_Product_ControlBalance Where RCB_IDLink_RMR = @Value_02 And RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'), 
		iTextBox34_Text_12 = (Select RCB_CurrentValue From iO_Product_ControlBalance Where RCB_IDLink_RMR = @Value_02 And RCB_IDLink_XRBl = '{fa9b4019-3380-435c-bcdd-40b78d39471e}'), 
		iTextBox85_Tag_13 = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02), 
		iTextBox85_Lookup_14 = (Select XRPu_Detail From iO_Control_ProductPurpose Where XRPu_ID = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02)), 
		iTextBox86_Text_15 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{804542da-abc7-48c6-95bf-b5a82aa57f43}') And (FMRc_IDLink_Code = @Value_02))); 

GO
