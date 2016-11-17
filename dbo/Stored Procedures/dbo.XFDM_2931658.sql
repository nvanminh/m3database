SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931658] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (select RCA_BorrowerDetailsByWhitePages from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit10_Text_2 = (select RCA_BorrowerDetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit11_Text_3 = (select RCA_BorrowerDetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit12_Text_4 = (select RCA_ExistingCustomer from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit13_Text_5 = (select RCA_ExistingCustomer from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit14_Text_6 = (select RCA_ConfirmAllNumbersConnected from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit15_Text_7 = (select RCA_ConfirmAllNumbersConnected from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit16_Text_8 = (select RCA_CreditHistoryAcceptable from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit17_Text_9 = (select RCA_CreditHistoryAcceptable from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit18_Text_10 = (select RCA_VedaCheckRequired from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit19_Text_11 = (select RCA_VedaCheckRequired from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit2_Text_12 = (select RCA_BorrowerDetailsByWhitePages from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit20_Text_13 = (select RCA_PrivacyHasBeenSigned from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit21_Text_14 = (select RCA_PrivacyHasBeenSigned from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit22_Text_15 = (select RCA_C1WPListed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit23_Text_16 = (select RCA_C1WPListed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit24_Text_17 = (select RCA_C1SpokeTo from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit25_Text_18 = (select RCA_C1SpokeTo from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit26_Text_19 = (select RCA_C1DetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit27_Text_20 = (select RCA_C1DetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit28_Text_21 = (select RCA_C2DetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit29_Text_22 = (select RCA_C2SpokeTo from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit3_Text_23 = (select RCA_ThreeMonthsOfStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit30_Text_24 = (select RCA_C2WPListed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit31_Text_25 = (select RCA_C2DetailsConfirmed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit32_Text_26 = (select RCA_C2SpokeTo from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit33_Text_27 = (select RCA_C2WPListed from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit4_Text_28 = (select RCA_ThreeMonthsOfStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit5_Text_29 = (select RCA_AdditionalLoanStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit6_Text_30 = (select RCA_AdditionalLoanStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit7_Text_31 = (select RCA_CreditCardStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit8_Text_32 = (select RCA_CreditCardStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iCheckEdit9_Text_33 = (select RCA_CreditCardStatements from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iLabel10_Text_34 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iMemoEdit4_Text_35 = (select RCA_BorrowerNote from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iMemoEdit5_Text_36 = (select RCA_C1Note from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iMemoEdit6_Text_37 = (select RCA_C2Note from iO_Product_CheckListAssessment where RCA_IDLink_RMR = @Value_02), 
		iTextBox3_Text_38 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{ee41dd30-2a2c-417e-b591-8a0710c4021e}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox4_Text_39 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{787d5b94-afef-45b4-8029-52fd733aed47}') And (FMRc_IDLink_Code = @Value_02))); 

GO
