SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[XFDM_2931683] 
    @Value_02 varchar(40)
AS
    Set NoCount ON;
    Set DateFormat dmy;
    SELECT 
		iComboEdit1_Text_1 = (Select RTO_PaymentType From iO_Product_TransactionOther Where RTO_IDLink_RTM = ''), 
		iDateTimePicker2_Text_2 = (Select RTQ_ChequeDated From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox1_Tag_3 = (select rtm_idlink_xtrm from io_product_transaction where rtm_id = ''), 
		iTextBox1_Lookup_4 = (Select xtrm_detail + ' (' + cast(xtrm_iduser as varchar(50)) + ')' From io_control_transactionmaster Where xtrm_id = (select rtm_idlink_xtrm from io_product_transaction where rtm_id = '')), 
		iTextBox13_Text_5 = (Select RTM_IDLink_CMR From iO_Product_Transaction Where RTM_ID = ''), 
		iTextBox2_Text_6 = (select rto_payeename from io_product_transactionother where rto_idlink_rtm = ''), 
		iTextBox3_Text_7 = (Select RTM_DateC From iO_Product_Transaction Where RTM_ID = ''), 
		iTextBox4_Text_8 = (Select RTQ_ChequeNumber From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox5_Text_9 = (Select RTQ_Drawer From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox6_Text_10 = (Select RTQ_Bank From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox7_Text_11 = (Select RTQ_Branch From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox71_Text_12 = (Select RMR_SeqNumber From iO_Product_MasterReference Where RMR_ID = @Value_02), 
		iTextBox8_Text_13 = (Select RTQ_AccountBSBNo From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''), 
		iTextBox9_Text_14 = (Select RTQ_AccountNumber From iO_Product_TransactionCHQ Where RTQ_IDLink_RTM = ''); 

GO
