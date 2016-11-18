SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE PROCEDURE [dbo].[sp_tony_settlement_date]
as 
IF object_id('[reporting_loan].dbo.Tony_Settlement_Date') is not null

delete from [reporting_loan].dbo.Tony_Settlement_Date

insert  into [reporting_loan].dbo.Tony_Settlement_Date 
(CM_SEQNUMBER,
Settlement_Date)
SELECT iO_Client_MasterReference.CMR_SeqNumber, Max(iO_Product_ControlDate.RCD_CurrentStart) AS 'Settlement Date'
FROM m3_main_rep.dbo.iO_Client_MasterReference iO_Client_MasterReference, m3_main_rep.dbo.iO_Link_MasterReference iO_Link_MasterReference, m3_main_rep.dbo.iO_Product_ControlDate iO_Product_ControlDate, m3_main_rep.dbo.iO_Product_MasterReference iO_Product_MasterReference
WHERE iO_Product_ControlDate.RCD_IDLink_RMR = iO_Product_MasterReference.RMR_ID AND iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID AND iO_Link_MasterReference.LMR_IDLink_Code_ID = iO_Product_MasterReference.RMR_ID AND ((iO_Product_ControlDate.RCD_Type=6) AND (iO_Link_MasterReference.LMR_IDLink_Association='{146afcaa-059b-469e-a000-0103e84144dc}'))
GROUP BY iO_Client_MasterReference.CMR_SeqNumber
having Max(iO_Product_ControlDate.RCD_CurrentStart)  is not null




GO
