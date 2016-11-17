SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_Redraw_sel]
	@RDW_ID varchar(40)
AS
BEGIN

	WITH
		CTE_MasterReference AS
		(
			SELECT
				RMR.RMR_ID
				,RMR.RMR_SeqNumber AS 'LoanNo'
				,LMR_Branch.LMR_IDLink_CMR AS 'LMR_Branch_CMR'
				,LMR_Client.LMR_IDLink_CMR AS 'LMR_Client_CMR'
				,LMR_SecondClient.LMR_IDLink_CMR AS 'LMR_SecondClient_CMR'
				,LMR_Refer.LMR_IDLink_CMR AS 'LMR_Refer_CMR'
			FROM
				[dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK)
			INNER JOIN
				[dbo].[iO_Link_MasterReference] LMR_Branch WITH (NOLOCK) ON LMR_Branch.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Branch.LMR_IDLink_Association = '{7e504c4d-821c-4623-a928-28ee65c3b8c8}' --// Loan\Branch Owning
			INNER JOIN
				[dbo].[iO_Link_MasterReference] LMR_Client WITH (NOLOCK) ON LMR_Client.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Client.LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' --// Loan\Principal Borrower
			LEFT OUTER JOIN
				[dbo].[iO_Link_MasterReference] LMR_SecondClient WITH (NOLOCK) ON LMR_SecondClient.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_SecondClient.LMR_IDLink_Association = '{627cb28d-8393-4878-b06f-38747946b792}' --//Loan\Borrower
			LEFT OUTER JOIN
				[dbo].[iO_Link_MasterReference] LMR_Refer WITH (NOLOCK) ON LMR_Refer.LMR_IDLink_Code_ID = RMR.RMR_ID AND LMR_Refer.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}' --// Loan\Referring Branch
			WHERE
				RMR.RMR_ID = (SELECT RD.RDW_LinkID_RMR FROM [WebPortal].[Redraw] RD WITH (NOLOCK) WHERE RD.RDW_LinkID_RMR IS NOT NULL AND RD.RDW_ID = @RDW_ID)
		),

		CTE_CustomerAddress AS
		(
			SELECT
				ROW_NUMBER() OVER (PARTITION BY tblCustomerAddress.CAD_IDLink_CMR ORDER BY tblCustomerAddress.CDC_Detail DESC, tblCustomerAddress.AddressPriority ASC, tblCustomerAddress.CAD_SeqNumber DESC) AS 'RowNo'
				,tblCustomerAddress.CAD_IDLink_CMR
				,tblCustomerAddress.CAD_UnitNumber
				,tblCustomerAddress.CAD_StreetNumber
				,tblCustomerAddress.CAD_StreetName
				,tblCustomerAddress.StreetType
				,tblCustomerAddress.City
				,tblCustomerAddress.CAD_State
				,tblCustomerAddress.CAD_PostCode
				,tblCustomerAddress.Country
			FROM
				(
					SELECT
						CAD.CAD_ID
						,CAD.CAD_SeqNumber
						,CAD.CAD_IDLink_CMR
						,CAD.CAD_UnitNumber
						,CAD.CAD_StreetNumber
						,CAD.CAD_StreetName
						,cSystemStreetType.XSYSst_Description AS 'StreetType'
						,cSystemPostcode.XSYSpc_CITY AS 'City'
						,CAD.CAD_State
						,CAD.CAD_PostCode
						,cSystemCountry.XSYSct_Description AS 'Country'
						,CDC.CDC_Detail
						,CASE
							WHEN CAD.CAD_IDLink_XAT = '{382c4074-1b80-4a5f-abc0-221571215da6}' THEN 1   --// Residential
							WHEN CAD.CAD_IDLink_XAT = '{5d4be829-4ef3-4262-b952-64939ca586ee}' THEN 2   --// Previous
							WHEN CAD.CAD_IDLink_XAT = '{18774f8c-1bd6-4e1b-8687-42ab9730c4a8}' THEN 3   --// Other
							ELSE 9
						END AS 'AddressPriority'
					FROM
						[dbo].[iO_Client_AddressDetail ] CAD WITH (NOLOCK)
					LEFT OUTER JOIN
						[dbo].[iO_Client_DefaultContact] CDC WITH (NOLOCK) ON CDC.CDC_Detail = CAD.CAD_IDLink_XAT AND CDC.CDC_IDLink_CMR = CAD.CAD_IDLink_CMR
					LEFT OUTER JOIN
						[dbo].[iO_Control_SystemStreetTypes] cSystemStreetType WITH (NOLOCK) ON cSystemStreetType.XSYSst_ID = CAD.CAD_IDLink_StreetType
					LEFT OUTER JOIN
						[dbo].[iO_Control_SystemPostcode] cSystemPostcode WITH (NOLOCK) ON cSystemPostcode.XSYSpc_ID = CAD.CAD_City
					LEFT OUTER JOIN
						[dbo].[iO_Control_SystemCountry] cSystemCountry WITH (NOLOCK) ON cSystemCountry.XSYSct_ID = CAD.CAD_IDLink_Country
					WHERE
						CAD.CAD_IDLink_CMR IN 
						(
							SELECT LMR_Client_CMR FROM CTE_MasterReference WHERE LMR_Client_CMR IS NOT NULL

							UNION

							SELECT LMR_SecondClient_CMR FROM CTE_MasterReference WHERE LMR_SecondClient_CMR IS NOT NULL
						)
					--ORDER BY
					--	CDC.CDC_Detail DESC	     --// GOT Default GO FIRST
					--	,AddressPriority ASC     --// Address Type > Residential > Previous > Other else
					--	,CAD.CAD_SeqNumber DESC  --// Then SeqNumber
				) tblCustomerAddress
		)

		SELECT
			RD.RDW_LinkID_RMR AS 'RMR_ID'
			,CTE_MR.LoanNo AS 'LoanID'
			,RD.RDW_MaximumAllowedAmount
			,RD.RDW_RequestedAmount
			,RD.RDW_Template
			,RD.RDW_Source
			,RD.RDW_Status
			,FORMAT(RD.RDW_LastChangeStatusDate, 'yyyyMMdd HH:mm:ss.fff') AS 'RDW_LastChangeStatusDate'
			,FORMAT(RD.RDW_Expire, 'yyyyMMdd HH:mm:ss.fff') AS 'RDW_Expire'

			,CTE_MR.LMR_Client_CMR AS 'Principal_CMR_ID'
			,CCT_Principal.XCTi_Detail AS 'Principal_Title'
			,CTI_Principal.CTI_FirstName AS 'Principal_FirstName'
			,CTI_Principal.CTI_Surname AS 'Principal_Surname'
			,FORMAT(CTI_Principal.CTI_DOB, 'yyyyMMdd HH:mm:ss.fff') AS 'Principal_DOB'
			,(SELECT TOP 1 CCD.CCD_Details FROM [dbo].[iO_Client_ContactDetail] CCD WITH (NOLOCK) WHERE CCD.CCD_IDLink_XCT = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}' AND CCD.CCD_Details IS NOT NULL AND CCD.CCD_Details <> '' AND CCD.CCD_IDLink_CMR = CTE_MR.LMR_Client_CMR ORDER BY CCD.CCD_SeqNumber DESC) AS 'Principal_Email'
			,CTE_PrincipalAddress.CAD_UnitNumber AS 'Principal_UnitNumber'
			,CTE_PrincipalAddress.CAD_StreetNumber AS 'Principal_StreetNumber'
			,CTE_PrincipalAddress.CAD_StreetName AS 'Principal_StreetName'
			,CTE_PrincipalAddress.StreetType AS 'Principal_StreetType'
			,CTE_PrincipalAddress.City AS 'Principal_City'
			,CTE_PrincipalAddress.CAD_PostCode AS 'Principal_PostCode'
			,CTE_PrincipalAddress.CAD_State AS 'Principal_State'

			,CTE_MR.LMR_SecondClient_CMR AS 'SecondBorrower_CMR_ID'
			,CCT_Second.XCTi_Detail AS 'SecondBorrower_Title'
			,CTI_Second.CTI_FirstName AS 'SecondBorrower_FirstName'
			,CTI_Second.CTI_Surname AS 'SecondBorower_Surname'
			,FORMAT(CTI_Second.CTI_DOB, 'yyyyMMdd HH:mm:ss.fff') AS 'SecondBorower_DOB'
			,(SELECT TOP 1 CCD.CCD_Details FROM [dbo].[iO_Client_ContactDetail] CCD WITH (NOLOCK) WHERE CCD.CCD_IDLink_XCT = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}' AND CCD.CCD_Details IS NOT NULL AND CCD.CCD_Details <> '' AND CCD.CCD_IDLink_CMR = CTE_MR.LMR_SecondClient_CMR ORDER BY CCD.CCD_SeqNumber DESC) AS 'SecondBorower_Email'
			,CTE_SecondAddress.CAD_UnitNumber AS 'Second_UnitNumber'
			,CTE_SecondAddress.CAD_StreetNumber AS 'Second_StreetNumber'
			,CTE_SecondAddress.CAD_StreetName AS 'Second_StreetName'
			,CTE_SecondAddress.StreetType AS 'Second_StreetType'
			,CTE_SecondAddress.City AS 'Second_City'
			,CTE_SecondAddress.CAD_PostCode AS 'Second_PostCode'
			,CTE_SecondAddress.CAD_State AS 'Second_State'
		FROM
			[WebPortal].[Redraw] RD WITH (NOLOCK)
		INNER JOIN
			CTE_MasterReference CTE_MR ON CTE_MR.RMR_ID = RD.RDW_LinkID_RMR
		INNER JOIN
			[dbo].[iO_Client_TypeIndividual] CTI_Principal WITH (NOLOCK) ON CTI_Principal.CTI_IDLink_CMR = CTE_MR.LMR_Client_CMR
		LEFT OUTER JOIN
			[dbo].[iO_Client_TypeIndividual] CTI_Second WITH (NOLOCK) ON CTI_Second.CTI_IDLink_CMR = CTE_MR.LMR_SecondClient_CMR
		LEFT OUTER JOIN
			[dbo].[iO_Control_ClientTitle] CCT_Principal WITH (NOLOCK) ON CCT_Principal.XCTi_ID = CTI_Principal.CTI_IDLink_XCT
		LEFT OUTER JOIN
			[dbo].[iO_Control_ClientTitle] CCT_Second WITH (NOLOCK) ON CCT_Second.XCTi_ID = CTI_Second.CTI_IDLink_XCT
		LEFT OUTER JOIN
			CTE_CustomerAddress CTE_PrincipalAddress ON CTE_PrincipalAddress.CAD_IDLink_CMR = CTE_MR.LMR_Client_CMR AND CTE_PrincipalAddress.RowNo = 1
		LEFT OUTER JOIN
			CTE_CustomerAddress CTE_SecondAddress ON CTE_SecondAddress.CAD_IDLink_CMR = CTE_MR.LMR_SecondClient_CMR AND CTE_SecondAddress.RowNo = 1
		WHERE
			RD.RDW_ID = @RDW_ID
END



GO
