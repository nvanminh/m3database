SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/* =================================================================================================================
Author		:	Daniel
Description	:	

 



===================================================================================================================*/
CREATE PROCEDURE [dbo].[usp_REPORT_Failed_Login]
AS
SET NOCOUNT ON

  SELECT
  UserName, 
  max(CMR_SeqNumber) as ClientID, 
  (
	SELECT CONCAT(clientind.[CTI_FirstName], ' ', clientind.[CTI_MiddleName], ' ' , clientind.[CTI_Surname] , '   ', convert(char(22), clientind.[CTI_DOB], 103))
	FROM  [dbo].[iO_Client_TypeIndividual] clientind
	INNER JOIN [dbo].[iO_Client_MasterReference] client3 ON clientind.[CTI_IDLink_CMR] = CMR_ID
	Where client3.CMR_SeqNumber = max(client1.CMR_SeqNumber)
  ) as name,
  substring(
        (
            Select ','+ mobile.CCD_Details AS [text()]
            From [dbo].[iO_Client_ContactDetail] mobile
			INNER JOIN [dbo].[iO_Client_MasterReference] client2 ON mobile.CCD_IDLink_CMR = CMR_ID
            Where client2.CMR_SeqNumber = max(client1.CMR_SeqNumber)
			AND (mobile.[CCD_IDLink_XCT] = '{29411831-e939-4357-940a-44f55b4a5c9b}' OR mobile.[CCD_IDLink_XCT] = '{e74fbb99-6120-4635-a090-a97a22a1ead2}' OR mobile.[CCD_IDLink_XCT] = '{9ce47620-9e65-4444-b18a-30c8239c56cb}' OR mobile.[CCD_IDLink_XCT] = '{4a4b1e54-00c6-4695-9e85-4349303c7bd9}')
            ORDER BY mobile.[CCD_SeqNumber] DESC
            For XML PATH ('')
        ), 2, 1000) [mobile],
  case min(StatusCode) WHEN 2 THEN 'wrong password' WHEN 3 THEN 'no user' ELSE 'spam?' END as error_type,
  case max(CLO_Active) WHEN 1 THEN 'active user' WHEN 0 THEN 'inactive user' ELSE 'no user' END as has_user,
  convert(char(22), max(LDAT.RCD_CurrentStart), 120) as lodgedate_of_most_recent_loan,
  convert(char(22), max(LoginDate), 120) as last_login_attempt
  FROM [WebPortal].[LoginRecord]
  left JOIN [dbo].[iO_Client_ContactDetail] email on email.[CCD_Details] = UserName
  left JOIN [dbo].[iO_Client_MasterReference] client1 ON email.CCD_IDLink_CMR = client1.CMR_ID
  left join [dbo].io_link_masterreference on lmr_idlink_cmr = client1.cmr_id
  left join [WebPortal].Client_Login on CLO_idlink_cmr = client1.cmr_id AND CLO_DisplayBrand = 'CT'
	AND LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}', '{733300d8-748f-4ab7-a2e9-6df9d8bcb63e}', '{15acabe9-4ca1-4f3b-8b80-b53d08fb7b30}', '{f3fdab19-241b-4243-861b-4d0a4509f127}')
	left join [dbo].iO_Product_ControlDate LDAT on LDAT.RCD_IDLink_RMR = LMR_IDLink_Code_ID and LDAT.RCD_Type = '106'
	    WHERE  --min(StatusCode) = 2 AND
  LoginDate < DATEADD(minute, -20, GETDATE())
  AND LoginDate > DATEADD(day, -7, GETDATE())
  AND [DisplayBrand] = 'CT'
  GROUP BY UserName
  HAVING min(StatusCode) > 1
  ORDER BY max(LoginDate) DESC



GO
