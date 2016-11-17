SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931674] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit30_Text_1 = (Select RCR_Option From iO_Product_ControlRate Where RCR_IDLink_RMR = @Value_02 And RCR_Type = 1), 
		iCheckEdit31_Text_2 = (Select RCR_Option From iO_Product_ControlRate Where RCR_IDLink_RMR = @Value_02 And RCR_Type = 1), 
		iComboEdit1_Text_3 = (Select RCTe_Months From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 1), 
		iComboEdit2_Text_4 = (Select RCTe_Years From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 1), 
		iComboEdit3_Text_5 = (Select RCTe_Months From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 3), 
		iComboEdit4_Text_6 = (Select RCTe_Years From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 2), 
		iComboEdit5_Text_7 = (Select RCTe_Months From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 2), 
		iComboEdit6_Text_8 = (Select RCTe_Years From iO_Product_ControlTerm Where RCTe_IDLink_RMR= @Value_02 And RCTe_Type = 3), 
		iLabel10_Text_9 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox2_Text_10 = (Select RCB_CurrentValue From iO_Product_ControlBalance Where RCB_IDLink_RMR = @Value_02 And RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'), 
		iTextBox26_Tag_11 = (Select RMR_IDLink_XRP From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox26_Lookup_12 = (Select XRP_Detail From iO_Control_ProductMaster Where XRP_ID = (Select RMR_IDLink_XRP From iO_Product_MasterReference Where RMR_ID = @Value_02)), 
		iTextBox31_Tag_13 = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02), 
		iTextBox31_Lookup_14 = (Select XRPu_Detail From iO_Control_ProductPurpose Where XRPu_ID = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02)), 
		iTextBox38_Tag_15 = (Select RLM_IDLink_SplitType From iO_Product_LoanMDT Where RLM_IDLink_RMR = @Value_02), 
		iTextBox38_Lookup_16 = (Select xrtu_detail From io_control_productpropertyuse Where xrtu_id = (Select RLM_IDLink_SplitType From iO_Product_LoanMDT Where RLM_IDLink_RMR = @Value_02)), 
		iTextBox5_Tag_17 = (Select RCTK_IDLink_XTKM From iO_Product_ControlTask Where RCTK_IDLink_RMR = @Value_02 And RCTK_Type = 1), 
		iTextBox5_Lookup_18 = (Select XTKM_Detail From iO_Control_TaskMaster Where XTKM_ID = (Select RCTK_IDLink_XTKM From iO_Product_ControlTask Where RCTK_IDLink_RMR = @Value_02 And RCTK_Type = 1)), 
		iTextBox6_Tag_19 = (Select RCTk_IDLink_XTKM From iO_Product_ControlTask Where RCTK_IDLink_RMR = @Value_02 And RCTK_Type = 2), 
		iTextBox6_Lookup_20 = (Select XTKM_Detail From iO_Control_TaskMaster Where XTKM_ID = (Select RCTk_IDLink_XTKM From iO_Product_ControlTask Where RCTK_IDLink_RMR = @Value_02 And RCTK_Type = 2)); 

GO
