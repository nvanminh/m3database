SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931622] 
    @Value_01 varchar(40),
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iLabel20_Text_1 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iLabel6_Text_2 = (Select CMR_Name From iO_Client_MasterReference Where CMR_ID = @Value_01); 

GO
