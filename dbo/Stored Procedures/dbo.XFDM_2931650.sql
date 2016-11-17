SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931650] 
    @Value_01 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iTextBox1_Text_1 = (Select Top 1 SMR_DateEnter From iO_Status_MasterReference Where SMR_IDLink_Code = @Value_01 Order by SMR_SeqNumber Desc), 
		iTextBox18_Text_2 = (Select CMR_IDLink_XSU From iO_Client_MasterReference Where CMR_ID = @Value_01); 

GO
