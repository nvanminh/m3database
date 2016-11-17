SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_REPORT_MACC_Report] @DateFROM DATE
	,@DateTO DATE
AS
SET NOCOUNT ON

SELECT DTM.DOWTMA_ID AS ' RedrawID'
	,[WebPortal].[Encrypt](DTM.DOWTMA_CMR_ID) AS 'CustomerPK'
	,CMR.CMR_SeqNumber AS 'CustomerID'
	,CTI.CTI_FirstName AS 'FirstName'
	,CTI.CTI_Surname AS 'Surname'
	,CCD_Email.Email AS 'Email'
	,CCD_Mobile.Mobile AS 'Mobile'
	,Address_State.CAD_State AS 'State'
	,DTM.DOWTMA_XRP_ID AS 'ProductPK'
	,[WebPortal].[Encrypt](DTM.DOWTMA_SecurityToken) AS 'SecurityToken'
	,DTM.DOWTMA_DateCreated AS 'MACCOffer_DateCreated'
	,DTM.DOWTMA_DateExpired AS 'MACCOffer_DateExpired'
	,DTM.DOWTMA_MaxOffer AS 'MACCOffer'
	,DTM.DOWTMA_Campain AS 'Campaign'
FROM WebPortal.DOWTMA DTM
INNER JOIN iO_Client_MasterReference CMR ON CMR.CMR_ID = DTM.DOWTMA_CMR_ID
LEFT JOIN iO_Client_TypeIndividual CTI ON CTI.CTI_IDLink_CMR = DTM.DOWTMA_CMR_ID
LEFT JOIN (
	SELECT CCD_IDLink_CMR AS 'CustomerPK'
		,CCD_Details AS 'Email'
		,ROW_NUMBER() OVER (
			PARTITION BY CCD_IDLink_CMR ORDER BY CCD_SeqNumber DESC
			) AS 'RowNumber'
	FROM iO_Client_ContactDetail
	WHERE CCD_IDLink_XCT = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}' --// Email
	) CCD_Email ON CCD_Email.CustomerPK = DTM.DOWTMA_CMR_ID
	AND CCD_Email.RowNumber = 1
LEFT JOIN (
	SELECT CCD_IDLink_CMR AS 'CustomerPK'
		,CCD_Details AS 'Mobile'
		,ROW_NUMBER() OVER (
			PARTITION BY CCD_IDLink_CMR ORDER BY CCD_SeqNumber DESC
			) AS 'RowNumber'
	FROM iO_Client_ContactDetail
	WHERE CCD_IDLink_XCT = '{29411831-e939-4357-940a-44f55b4a5c9b}' --// Mobile
	) CCD_Mobile ON CCD_Mobile.CustomerPK = DTM.DOWTMA_CMR_ID
	AND CCD_Mobile.RowNumber = 1
LEFT JOIN (
	SELECT CAD_IDLink_CMR AS 'CustomerPK'
		,CAD_State
		,Row_Number() OVER (
			PARTITION BY CAD_IDLink_CMR ORDER BY CAD_SeqNumber DESC
			) AS 'RowNumber'
	FROM [iO_Client_AddressDetail ]
	WHERE ISNULL(CAD_State, '') <> ''
	) Address_State ON Address_State.CustomerPK = DTM.DOWTMA_CMR_ID
	AND Address_State.RowNumber = 1
WHERE CAST(DTM.DOWTMA_DateCreated AS DATE) BETWEEN @DateFROM
		AND @DateTO

GO
