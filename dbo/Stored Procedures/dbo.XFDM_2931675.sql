SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931675] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iCheckEdit1_Text_1 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{e4474e0f-8020-4a04-a7fd-10c135571a37}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit10_Text_2 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{7f7ee67f-06eb-45bd-8827-f650d76f9722}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit11_Text_3 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{902cf670-8037-414d-9622-6a4d5852cfec}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit12_Text_4 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{e20395e1-4846-40d9-a451-ddd321d657a5}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit14_Text_5 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{d4bb63cf-ffa3-4eb8-bb3d-9cdbaeec7d31}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit17_Text_6 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{ee8d60ed-3988-4eae-bd9a-b2d4a18c8343}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit18_Text_7 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{b48e6095-5fc2-44e2-acab-0ce9811f0233}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit21_Text_8 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{4cda8527-9e3d-4693-b392-4a969f939af4}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit22_Text_9 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{54ae2877-876d-49e3-b583-e5c560e017cd}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit23_Text_10 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{8afc81fe-071d-4703-a22a-5557365e6f72}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit24_Text_11 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{021802ad-4b2c-4faa-a403-b76c418e6cb8}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit25_Text_12 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{af4bc044-cf42-4999-9f0c-4abd40f222e8}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit27_Text_13 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{6e2890bd-9cd7-4f24-b35f-066697d1c6a0}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit3_Text_14 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{dec5ebe2-c3da-4f86-8d70-ca13cc349cba}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit4_Text_15 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{c70492af-e7ab-4963-92f9-8f011cd77fde}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit45_Text_16 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{702bf114-3bcc-405e-b876-a67e52a8ac3b}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit5_Text_17 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{8d93fe64-6855-481c-9978-ac7d2eb83a61}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit6_Text_18 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{be996573-7c41-4f52-b522-9e9d2d937ede}') And (FMRc_IDLink_Code = @Value_02))), 
		iCheckEdit9_Text_19 = (Select isnull(FTNc_Numeric,'') From iO_Field_TypeNumeric With(NoLock) Where FTNc_ID = (Select FMRc_IDLink_Type From iO_Field_MasterReference With(NoLock) Where (FMRc_IDLink_XFDC = '{e8bc3ce7-6cc3-4e51-a6eb-86e91fb4bdf2}') And (FMRc_IDLink_Code = @Value_02))), 
		iLabel10_Text_20 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02); 

GO
