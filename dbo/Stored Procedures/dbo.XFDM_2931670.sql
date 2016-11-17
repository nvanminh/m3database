SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931670] 
    @Value_02 varchar(40),
    @Value_03 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iLabel20_Text_1 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iLabel6_Text_2 = (select cmr_name from io_link_masterreference inner join io_client_masterreference on lmr_idlink_cmr = cmr_id where lmr_idlink_association = '{90038b95-9eb8-43d4-a068-a4a8e6043ac8}' and lmr_idlink_code_id = @Value_03); 

GO
