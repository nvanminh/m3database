SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931646] 
    @Value_01 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (select cti_australianresident from io_client_typeindividual where cti_idlink_cmr = @Value_01), 
		iDateTimePicker1_Text_2 = (Select CTI_DOB From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iLabel8_Text_3 = (Select CTI_DOB From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox1_Tag_4 = (Select CTI_IDLink_CountryBirth From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox1_Lookup_5 = (Select XSYSct_Description From iO_Control_SystemCountry Where XSYSct_ID = (Select CTI_IDLink_CountryBirth From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01)), 
		iTextBox10_Text_6 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{6c05d866-d2be-4e7a-ac32-a7d9ae168daa}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox11_Text_7 = (Select CTI_NumDependants From iO_Client_TypeIndividual Where CTI_IDLink_CMR = @Value_01), 
		iTextBox12_Text_8 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{74786b70-b0f8-4884-bd05-00b0c332b686}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox13_Text_9 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{96521de1-fa59-441f-97cf-1b65f3cef259}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox14_Text_10 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{f740181e-2c85-48f0-87e9-d9a04646f9b8}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox15_Text_11 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{5d1dd5ad-eae9-436e-90a6-01cb87bf6325}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox16_Text_12 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{d9e9d7b9-e127-4d7d-b638-140e852feb41}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox17_Tag_13 = (Select CTI_IDLink_XCM From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox17_Lookup_14 = (Select XCM_Detail From iO_Control_ClientMaritalStatus Where XCM_ID = (Select CTI_IDLink_XCM From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01)), 
		iTextBox19_Text_15 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{390c58ba-352c-4d82-a826-0889360fa39d}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox2_Text_16 = (SELECT SUM(iO_Control_ClientUniqueIdentifier.XDI_Points) AS TotalPoints FROM iO_Control_ClientUniqueIdentifier INNER JOIN iO_Client_UniqueIdentifier ON iO_Control_ClientUniqueIdentifier.XDI_ID = iO_Client_UniqueIdentifier.CUI_IDLink_XDI WHERE CUI_IDLink_CMR = @Value_01), 
		iTextBox20_Text_17 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{4a243cbd-23e0-414a-8469-b46141df2595}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox21_Text_18 = (Select CAC_EmployerName From iO_Client_ApplicationClientDetails WHERE CAC_IDLink_CMR = @Value_01 and CAC_Type = 1), 
		iTextBox22_Text_19 = (Select CAC_Income From iO_Client_ApplicationClientDetails WHERE CAC_IDLink_CMR = @Value_01 and CAC_Type = 1), 
		iTextBox3_Text_20 = (Select CTI_MiddleName From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01 and CTI_IDLink_CMR <> ''), 
		iTextBox4_Tag_21 = (Select CTI_IDLink_XCT From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01), 
		iTextBox4_Lookup_22 = (Select XCTi_Detail From iO_Control_ClientTitle Where XCTi_ID = (Select CTI_IDLink_XCT From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01)), 
		iTextBox5_Text_23 = (Select CTI_Surname From iO_Client_TypeIndividual Where CTI_IDLink_CMR= @Value_01 and CTI_IDLink_CMR <> ''), 
		iTextBox6_Text_24 = (Select CTI_FirstName From iO_Client_TypeIndividual Where CTI_IDLink_CMR = @Value_01 and CTI_IDLink_CMR <> ''), 
		iTextBox7_Text_25 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{6cb56c43-f065-4f7c-8e27-3fcc009116e1}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox8_Text_26 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{4154f6b6-2fde-41f4-bbb8-8e189b43c10c}') And (FMRc_IDLink_Code = @Value_01))), 
		iTextBox9_Text_27 = (Select CAC_Name From iO_Client_ApplicationClientDetails WHERE CAC_IDLink_CMR = @Value_01 and CAC_Type = 1); 

GO
