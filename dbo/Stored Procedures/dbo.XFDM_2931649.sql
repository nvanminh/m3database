SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931649] 

AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iTextBox1_Text_1 = (Select isnull(FTSc_String,'') From iO_Field_TypeString With(NoLock) Where FTSc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{e38d7f89-2398-49ee-8d1e-b30b516b39ca}') And (FMRc_IDLink_Code = ''))); 

GO
