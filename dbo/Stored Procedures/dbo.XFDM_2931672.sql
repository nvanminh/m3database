SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931672] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iDateTimePicker1_Text_1 = (Select RCD_CurrentStart From iO_Product_ControlDate Where RCD_IDLink_RMR = @Value_02 And RCD_Type = 10001), 
		iDateTimePicker2_Text_2 = (Select SYSeod_RunDate_Next From iO_System_EndOfDay Where SYSeod_IDLink_Code = '{EOD-Main}'), 
		iDateTimePicker3_Text_3 = (select top 1 rtm_datee from io_product_transaction where (rtm_idlink_rmr = @Value_02) and (rtm_idlink_xtrm = '{060c5979-653a-4cfd-89ce-d56e4e202aa8}' or rtm_idlink_xtrm = '{58c637ab-e307-4b62-a384-53a5f9c77826}' or rtm_idlink_xtrm = '' or rtm_idlink_xtrm = '') order by rtm_seqnumber desc, rtm_datee desc), 
		iDateTimePicker4_Text_4 = (select top 1 rtm_datee from io_product_transaction where (rtm_idlink_rmr = @Value_02) and (rtm_idlink_xtrm = '{0ca10d4f-b3ad-4841-96ca-73db5a8fe6c8}' or rtm_idlink_xtrm = '{58c637ab-e307-4b62-a384-53a5f9c77826}' or rtm_idlink_xtrm = '{0ca10d4f-b3ad-4841-96ca-73db5a8fe6c8}' ) order by rtm_seqnumber desc, rtm_datee desc), 
		iLabel1_Text_5 = (Select RMR_ID From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox1_Text_6 = (select top 1 rtm_value from io_product_transaction where (rtm_idlink_rmr = @Value_02) and (rtm_idlink_xtrm = '{060c5979-653a-4cfd-89ce-d56e4e202aa8}' or rtm_idlink_xtrm = '{58c637ab-e307-4b62-a384-53a5f9c77826}' or rtm_idlink_xtrm = '' or rtm_idlink_xtrm = '') order by rtm_seqnumber desc, rtm_datee desc), 
		iTextBox2_Text_7 = (Select Sum(RTA_Value) as Expr1 From iO_Product_TransactionACC Where RTA_IDLink_RMR = @Value_02 And RTA_ISProcessed = 0 AND RTA_Type in ( 300,204)), 
		iTextBox3_Text_8 = (Select Sum(RTA_Value) as Expr1 From iO_Product_TransactionACC Where RTA_IDLink_RMR = @Value_02 And RTA_ISProcessed = 0 AND RTA_Type = 350), 
		iTextBox4_Text_9 = (select top 1 rtm_value from io_product_transaction where (rtm_idlink_rmr = @Value_02) and (rtm_idlink_xtrm = '{0ca10d4f-b3ad-4841-96ca-73db5a8fe6c8}' or rtm_idlink_xtrm = '{58c637ab-e307-4b62-a384-53a5f9c77826}' or rtm_idlink_xtrm = '{0ca10d4f-b3ad-4841-96ca-73db5a8fe6c8}' ) order by rtm_seqnumber desc, rtm_datee desc); 

GO
