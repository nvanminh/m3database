SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[Crystal_APVC_Transactions] 
AS 
set dateformat dmy 
SELECT 
[Loan ID]=	(Select RMR_SeqNumber 
			From io_Product_MasterReference PMR 
			Where PMR.RMR_ID = PT.RTM_IDLink_RMR), 
[Description]=	(Select XRP_Detail 
				From iO_Control_ProductMaster CPM 
				INNER JOIN iO_Product_MasterReference on iO_Product_MasterReference.RMR_IDLink_XRP = CPM.XRP_ID 
				Where RMR_ID = PT.RTM_IDLink_RMR), 
[Loan Status]=	(Select XSU_Detail 
				From iO_Control_StatusMaster CSM 
				INNER JOIN iO_Product_MasterReference on iO_Product_MasterReference.RMR_IDLink_XSU = CSM.XSU_ID 
				Where RMR_ID = PT.RTM_IDLink_RMR), 
[Effective Date]=	Cast(DatePart(dd,RTM_DateE) as varchar(3)) + '/' + Cast(DatePart(mm,RTM_DateE) as varchar(3)) + '/' + Cast(DatePart(yyyy,RTM_DateE) as varchar(4)), 
[Transaction Date]=	Cast(DatePart(dd,RTM_DateC) as varchar(3)) + '/' + Cast(DatePart(mm,RTM_DateC) as varchar(3)) + '/' + Cast(DatePart(yyyy,RTM_DateC) as varchar(4)), 
[Amount]=(Select RTM_Value 
					From iO_Product_Transaction PT2 
					Where PT2.RTM_ID = PT.RTM_ID), 
[Transaction Type]=	(Select XTRM_IDUser 
					From io_Control_TransactionMaster CTM 
					INNER JOIN iO_Product_Transaction PT2 on PT2.RTM_IDLink_XTRM = CTM.XTRM_ID 
					Where PT2.RTM_ID = PT.RTM_ID), 
[DR/CR]=	Case When RTM_ValueCR > 0 THEN 'CR' ELSE 'DR' END, 
[Note]=(Select RTM_Note 
					From iO_Product_Transaction PT2 
					Where PT2.RTM_ID = PT.RTM_ID) 
FROM iO_Product_Transaction PT 
Where PT.RTM_DateE >= CAST('22/12/2005' AS DATETIME) AND 
PT.RTM_DateE <= CAST('22/12/2005' AS DATETIME)
GO
