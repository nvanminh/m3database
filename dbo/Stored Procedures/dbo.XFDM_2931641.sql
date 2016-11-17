SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931641] 

AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iTextBox1_Text_1 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{69dae5d4-162b-4aca-a6c6-dea5ed3ae6ba}') And (FMRc_IDLink_Code = ''))), 
		iTextBox2_Text_2 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{adcafad0-93b4-4c5f-9bf1-199644b7bac5}') And (FMRc_IDLink_Code = ''))), 
		iTextBox3_Text_3 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{2eeabbca-646e-4586-878a-c0f1916404ff}') And (FMRc_IDLink_Code = ''))); 

GO
