SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create view  [dbo].[List_of_branches]
as 
SELECT DISTINCT iO_Client_MasterReference.CMR_ID, iO_Link_MasterReference.LMR_IDLink_Association, iO_Client_MasterReference.CMR_Name
FROM            iO_Link_MasterReference INNER JOIN
                         iO_Client_MasterReference ON iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID AND 
                         iO_Link_MasterReference.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}' AND iO_Client_MasterReference.CMR_Name IS NOT NULL
--ORDER BY iO_Client_MasterReference.CMR_Name
GO
