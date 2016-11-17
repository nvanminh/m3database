SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931626] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iLabel20_Text_1 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02); 

GO
