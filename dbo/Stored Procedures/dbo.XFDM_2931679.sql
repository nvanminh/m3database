SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931679] 
    @Value_01 varchar(40),
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{6195ee46-0650-4c92-8054-c53e2cf7eca5}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit2_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{6195ee46-0650-4c92-8054-c53e2cf7eca5}') And (FMRc_IDLink_Code = @Value_02))), 
		iDateTimePicker2_Text_3 = (Select CTI_DOB From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox15_Text_4 = (Select CTI_MiddleName From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01 and CTI_IDLink_CMR <> ''), 
		iTextBox2_Tag_5 = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02), 
		iTextBox2_Lookup_6 = (Select XRPu_Detail From iO_Control_ProductPurpose Where XRPu_ID = (Select RLM_IDLink_XRPu From iO_Product_LoanMDT Where RLM_IDLink_RMR= @Value_02)), 
		iTextBox22_Text_7 = (Select CCD_Details From iO_Client_ContactDetail Where CCD_IDLink_CMR= @Value_01 And CCD_IDLink_XCT= '{29411831-e939-4357-940a-44f55b4a5c9b}'), 
		iTextBox24_Text_8 = (Select CCD_Details From iO_Client_ContactDetail Where CCD_IDLink_CMR= @Value_01 And CCD_IDLink_XCT= '{e97a2f58-e322-421d-afe6-7c175adfbace}'), 
		iTextBox27_Text_9 = (Select CCD_Details From iO_Client_ContactDetail Where CCD_IDLink_CMR= @Value_01 And CCD_IDLink_XCT= '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}'), 
		iTextBox3_Text_10 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{5c4e588b-2b88-4bc5-9bdc-916f1e27e645}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox33_Text_11 = (Select CTI_FirstName From iO_Client_TypeIndividual Where CTI_IDLink_CMR = @Value_01), 
		iTextBox34_Text_12 = (Select CTI_Surname From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox4_Text_13 = (Select CED_EmployerName_C From iO_Client_IndividualEmployment Where CED_IDlink_CMR = @Value_01 and CED_EmployerName_C is not null and CED_PrimaryEmployment = 1 and CED_CurrentEmployment = 1), 
		iTextBox5_Text_14 = (Select CCD_AreaCode From iO_Client_ContactDetail Where CCD_IDLink_CMR= @Value_01 And CCD_IDLink_XCT= '{e97a2f58-e322-421d-afe6-7c175adfbace}'), 
		iTextBox99_Text_15 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{55672d04-afed-4d44-9a57-e1573b2829cb}') And (FMRc_IDLink_Code = @Value_02))); 

GO
