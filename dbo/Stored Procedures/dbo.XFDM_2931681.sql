SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931681] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit14_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{2b99b66a-88e6-4849-960e-76063db14d72}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit15_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{2b99b66a-88e6-4849-960e-76063db14d72}') And (FMRc_IDLink_Code = @Value_02))), 
		iComboEdit1_Text_3 = (Select isnull(FTTc_Text,'') From iO_Field_TypeText With(NoLock) Where FTTc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{c50ce4bf-6169-4b72-a20f-755a93c9cd67}') And (FMRc_IDLink_Code = @Value_02))), 
		iMemoEdit1_Text_4 = (Select isnull(FTTc_Text,'') From iO_Field_TypeText With(NoLock) Where FTTc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{3122b390-e011-488d-b0b4-e1ada35ccedf}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox1_Text_5 = (Select case when left(YMR_IDLink_Foreign,1) = '8' then left(YMR_IDLink_Foreign,len(YMR_IDLink_Foreign)-2) else RMR_SeqNumber end From iO_Product_MasterReference left join io_keys_masterreference kmr on (kmr.ymr_idlink_armnet = rmr_id) and (kmr.ymr_idlink_xfk = '{7bfaedbe-f415-4851-a6f2-b737116870e7}') Where RMR_ID = @Value_02), 
		iTextBox17_Text_6 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{24a49d0a-0a50-45f2-9e8a-d5113906ea24}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox19_Text_7 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{108102aa-5e3d-4b7b-b8d0-b6da2c6c4e0b}') And (FMRc_IDLink_Code = @Value_02))), 
		iTextBox2_Text_8 = (SELECT LMR_IDLink_CMR FROM iO_Link_MasterReference WHERE LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' AND LMR_IDLink_Code_ID = @Value_02), 
		iTextBox40_Text_9 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{547673e6-bce2-45a1-9808-924a22f3aada}') And (FMRc_IDLink_Code = @Value_02))); 

GO
