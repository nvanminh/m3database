SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/* =================================================================================================================
Author		:	Dylan Harvey
Description	:	This is an interim stored procedure to load the dim. 
				This procedure will need to be altered to use a merge statement and potentially be a delta load.
				Load time, Modified time, JobID and Modified job id will need to be added to the schema as well.
				It currently uses 3 part naming, this will need to be fixed at some stage. 

History		:	2015-09-21 Sp Created by Dylan harvey 

===================================================================================================================*/
CREATE PROCEDURE [DW].[uspDimCustomer]
(
    @ExtractJobID INT
    ,@StartTime DateTime
)
AS
BEGIN
 
SET NOCOUNT ON
SET XACT_ABORT ON
 
    BEGIN TRY

	   IF OBJECT_ID('tempdb..#Promo') IS NOT NULL
            DROP TABLE #Promo


-- Get 
SELECT 
	CMR.CMR_SeqNumber
	,FTNC_Numeric
	,FTN.FTNc_SeqNumber
,row_number() OVER (PARTITION BY CMR.CMR_SeqNumber ORDER BY FTN.FTNc_SeqNumber DESC) AS 'rownumber'	
INTO #Promo
FROM iO_Field_MasterReference FMR
INNER JOIN iO_Control_FieldMaster CFM
	ON FMR.FMRc_IDLink_XFDC = CFM.XFDM_ID
INNER JOIN iO_Client_MasterReference CMR
	ON FMR.FMRc_IDLink_Code = CMR.CMR_ID
INNER JOIN iO_Field_TypeNumeric FTN
	ON FMR.FMRc_ID = FTN.FTNc_IDLink_FMRc
WHERE CFM.XFDM_ID = '{25f47f80-ea86-4675-8143-feb9b021615d}' -- Guid for opt in/out of promotions
ORDER BY CMR.CMR_SeqNumber DESC

	   IF OBJECT_ID('tempdb..#PromoFix') IS NOT NULL
            DROP TABLE #PromoFix	

-- Remove duplicates
SELECT ClientNo, Promo
INTO #PromoFix
FROM (
		SELECT p.CMR_SeqNumber ClientNo
		,CASE	WHEN Duplicate = 2 THEN 'No'
				WHEN FTNc_Numeric = 1 THEN 'Yes'
				WHEN FTNc_Numeric = 2 then 'No'				
				END AS Promo
		FROM #Promo  p
		LEFT JOIN 
		(	SELECT COUNT(*)Duplicate ,CMR_SeqNumber
			FROM (	SELECT DISTINCT CMR_SeqNumber	,FTNc_Numeric
					FROM #Promo) q
			GROUP BY CMR_SeqNumber
			HAVING COUNT(*) > 1
			) q ON 
			q.CMR_SeqNumber = p.CMR_SeqNumber
		WHERE rownumber = 1 ) a


 
  IF OBJECT_ID('tempdb..#Customer') IS NOT NULL
		DROP TABLE #Customer


SELECT CMR.CMR_ID
,LTRIM(RTRIM(CMR.CMR_SeqNumber)) AS 'ClientNo'
	,LTRIM(RTRIM(CCT.[XCTi_Detail])) [Title]
	,LTRIM(RTRIM([CTI_FirstName])) [FirstName]
	,LTRIM(RTRIM([CTI_MiddleName])) [MiddleName]
	,LTRIM(RTRIM([CTI_Surname])) [LastName]
	--,LTRIM(RTRIM(CG.XCGn_Detail)) [Sex] -- Sex recorded in APL
	, CASE	WHEN  CCT.[XCTi_Detail] = 'Mr' THEN 'Male' -- NULLS are Female 
			WHEN  CCT.[XCTi_Detail] IN ('Ms','Mrs','Miss') THEN 'Female'
			ELSE 'Unknown'
			END AS Sex
	,  CCT.[XCTi_Detail]
	,CAST ([CTI_DOB] AS DATE) DOB 
	,LTRIM(RTRIM(Resi_Address.UnitNumber))UnitNumber
	,LTRIM(RTRIM(Resi_Address.StreetNumber))StreetNumber
	,LTRIM(RTRIM(Resi_Address.StreetName))StreetName
	,LTRIM(RTRIM(Resi_Address.CITY))CITY
	,LTRIM(RTRIM(Resi_Address.CAD_State)) AS [State]
	--,Resi_Address.CAD_City
	,LTRIM(RTRIM(Resi_Address.XSYSpc_POSTCODE)) AS [Postcode]
	,Replace(Ltrim(RTrim(Isnull(CCD_Phone.ccd_areacode, '') + Isnull(CCD_Phone.ccd_details, ''))), ' ', '') AS [Phone]
	,Replace(Ltrim(RTrim(Isnull(CCD_Mobile.ccd_areacode, '') + Isnull(CCD_Mobile.ccd_details, ''))), ' ', '') AS [Mobile]
	,Ltrim(RTrim(CCD_Email.ccd_details)) as [Email]
	,LTRIM(RTRIM([CTI_AustralianResident])) [AustralianResident]
	,LTRIM(RTRIM([CTI_CurrentlyEmployed])) [CurrentlyEmployed]
	,LTRIM(RTRIM(Employment.CompanyName)) AS [Employer]
	,LTRIM(RTRIM(COALESCE([CTI_NumDependants],0))) NumOfDependants
	,LTRIM(RTRIM(CMS.XCM_Detail))	[MaritalStatus]
	--,[CMR_BlackList] 
	,CASE WHEN ISNULL([CMR_BlackList],0) = 0
		THEN 'No'
		WHEN [CMR_BlackList] = 1 
		THEN 'Yes'
		ELSE 'WTF'
		END AS BlackListed
	, P.Promo
INTO #Customer
FROM IO_Client_Masterreference CMR (NOLOCK)
INNER JOIN iO_Client_TypeIndividual CTI
	ON CTI.[CTI_IDLink_CMR] = CMR.CMR_ID
--Client Address
LEFT JOIN (
	SELECT CAD_IDLInk_CMR
		,COALESCE(lTRIM(RTRIM(CAD.CAD_UnitNumber)), lTRIM(RTRIM(CAD.CAD_SuiteNumber)), '') UnitNumber
		,lTRIM(RTRIM(CAD.CAD_StreetNumber)) StreetNumber
		,lTRIM(RTRIM(CAD.CAD_StreetName)) + ' ' + lTRIM(RTRIM(XSYSst.XSYSst_Description)) StreetName
		,lTRIM(RTRIM(XSYSpc.XSYSpc_CITY)) CITY
		,CAD.CAD_State 
		--,CAD.CAD_City 
		,XSYSpc.XSYSpc_POSTCODE
		,row_number() OVER (PARTITION BY CAD_IDLInk_CMR ORDER BY CAD_Seqnumber DESC) AS 'rownumber'		
	FROM [iO_Client_AddressDetail] CAD (NOLOCK)
	--Street
	LEFT JOIN iO_Control_SystemStreetTypes XSYSst (NOLOCK)
		ON CAD.CAD_IDLink_StreetType = XSYSst.XSYSst_ID
	--Postcode
	LEFT JOIN iO_Control_SystemPostcode XSYSpc (NOLOCK)
		ON XSYSpc.XSYSpc_ID = CAD.CAD_City
	WHERE CAD.cad_idlink_xat = '{382c4074-1b80-4a5f-abc0-221571215da6}' --residential address	
	) Resi_Address
	ON Resi_Address.CAD_IDLInk_CMR = CMR.CMR_ID
		AND Resi_Address.rownumber = 1
--Phone
	LEFT JOIN (
		SELECT ccd_idlink_cmr
			,ccd_areacode
			,ccd_details
			,row_number() OVER (
				PARTITION BY ccd_idlink_cmr ORDER BY ccd_seqnumber DESC
				) AS rownumber
		FROM io_client_contactdetail WITH (NOLOCK)
		WHERE ccd_idlink_xct = '{e97a2f58-e322-421d-afe6-7c175adfbace}'
		) CCD_Phone
		ON CCD_Phone.ccd_idlink_cmr = cmr_id
			AND CCD_Phone.rownumber = 1
	--Mobile
	LEFT JOIN (
		SELECT ccd_idlink_cmr
			,ccd_areacode
			,ccd_details
			,row_number() OVER (
				PARTITION BY ccd_idlink_cmr ORDER BY ccd_seqnumber DESC
				) AS rownumber
		FROM io_client_contactdetail WITH (NOLOCK)
		WHERE ccd_idlink_xct = '{29411831-e939-4357-940a-44f55b4a5c9b}'
		) CCD_Mobile
		ON CCD_Mobile.ccd_idlink_cmr = cmr_id
			AND CCD_Mobile.rownumber = 1
	LEFT JOIN (
		SELECT ccd_idlink_cmr
			,ccd_areacode
			,ccd_details
			,row_number() OVER (
				PARTITION BY ccd_idlink_cmr ORDER BY ccd_seqnumber DESC
				) AS rownumber
		FROM io_client_contactdetail CCD_Email WITH (NOLOCK)
		WHERE ccd_idlink_xct = '{f8d0cbcc-ad81-4ed2-a4eb-ec39ac35168c}' --Email
		) CCD_Email
		ON CCD_Email.ccd_idlink_cmr = cmr_id
			AND CCD_Email.rownumber = 1
--Employment
LEFT JOIN (
	SELECT CED_IDLINK_CMR
		,ced_employername_c AS 'CompanyName'
		,row_number() OVER (PARTITION BY CED_IDLINK_CMR ORDER BY CED_Seqnumber DESC) AS 'RowNumber'
	FROM iO_Client_IndividualEmployment
	WHERE ced_employername_c <> ''
		AND CED_PrimaryEmployment = 1
		AND ced_employername_c IS NOT NULL
	) Employment
	ON Employment.CED_IDLink_CMR = CMR.CMR_ID
	AND Employment.RowNumber = 1
LEFT JOIN [iO_Control_ClientGender] CG
	ON CG.XCGn_ID = CTI.[CTI_IDLink_XCGn]
LEFT JOIN [iO_Control_ClientTitle] (NOLOCK)CCT
	ON CTI_IDLink_XCT = [XCTi_ID]
LEFT JOIN iO_Control_ClientMaritalStatus CMS
	ON CMS.XCM_ID = CTI.CTI_IDLink_XCM
LEFT JOIN #PromoFix P
	ON P.ClientNo = CMR.CMR_SeqNumber


IF OBJECT_ID('tempdb..#EmploymentStatus') IS NOT NULL
	DROP TABLE #EmploymentStatus

SELECT CMR_ID
	,ClientNo
	,Title
	,FirstName
	,MiddleName
	,LastName
	,Sex
	,DOB
	,UnitNumber
	,StreetNumber
	,StreetName
	,Postcode
	,CASE 
		WHEN ISNULL(CITY, '') = ''
			AND [State] = 'NSW'
			THEN 'Sydney'
		WHEN ISNULL(CITY, '') = ''
			AND [State] = 'VIC'
			THEN 'Melbourne'
		ELSE CITY
		END AS CITY
	,CASE 
		WHEN [State] = 'Western Australia'
			OR [State] = 'WA'
			THEN 'WA'
		WHEN [State] = 'Northern Territory'
			OR [State] = 'NT'
			THEN 'NT'
		WHEN [State] = 'Australian Capital Territory'
			OR [State] = 'ACT'
			THEN 'ACT'
		WHEN [State] = 'New South Wales'
			OR [State] = 'NSW'
			THEN 'NSW'
		WHEN [State] = 'Tasmania'
			OR [State] = 'TAS'
			THEN 'TAS'
		WHEN [State] = 'South Australia'
			OR [State] = 'SA'
			THEN 'SA'
		WHEN [State] = 'Queensland'
			OR [State] = 'QLD'
			THEN 'QLD'
		WHEN [State] = 'Victoria'
			OR [State] = 'VIC'
			THEN 'VIC'
		ELSE 'Unknown'
		END AS [State]
	,[Phone]
	,[Mobile]
	,[Email]
	--,[State] AS OLD_State
	--ISNULL(LTRIM(RTRIM(Postcode)),'3000') AS Postcode
	,AustralianResident
	,CurrentlyEmployed
	,LTRIM(RTRIM(Employer)) Employer
	,CASE 
		WHEN LTRIM(RTRIM(Employer)) LIKE '%newstart%'
			OR LTRIM(RTRIM(Employer)) LIKE '%nsa%'
			OR LTRIM(RTRIM(Employer)) LIKE '%Unemployed%'
			OR LTRIM(RTRIM(Employer)) LIKE '%Centrelink%'
			OR LTRIM(RTRIM(Employer)) LIKE '%Centerlink%'
			THEN 'Centrelink'
		WHEN LTRIM(RTRIM(Employer)) IN (
				'pension'
				,'Department of Human Services'
				,'centrleink'
				,'gov benefits'
				,'DSP'
				,'dhs'
				,'Youth Allowance'
				,'PENSIONER'
				,'YTH ALLOWANCE'
				,'centerlnik'
				,'government benefits'
				,'Disability Pension'
				,'Cen'
				,'dhhs'
				,'cl'
				,'gov beneifts'
				,'centre'
				,'C/L DSP'
				,'C/L'
				,'Y/A'
				,'C/L Parent'
				,'PARENTING PAYMENT'
				,'Centrelnk'
				,'Centrelin'
				,'Parenting Payment Single'
				,'C/L PPS'
				,'Centrelinlk'
				,'Centrelnik'
				,'new start'
				,'Centrelik'
				,'Disability SA'
				,'PARENTING/FAM TAX'
				,'Carers Pension'
				,'dept human services'
				,'family benifits'
				,'Centrelinik'
				,'disability support'
				,'C/L Y/A'
				,'CENTRELIINK'
				,'C/link'
				,'clink'
				,'Centre Link'
				,'centrlink'
				,'Centelink'
				,'Cenrelink'
				,'cnetrelink'
				,'Cetrelink'
				,'Assetlink'
				,'Cetnrelink'
				,'Center Link'
				,'centrellink'
				,'C;apos;Link'
				,'Cemtrelink'
				,'cenrtrelink'
				--,'Tradelink'
				,'Centralink'
				,'centerelink'
				,'centrrelink'
				,'Centrerlink'
				,'Cerntrelink'
				,'Cntrelink'
				,'Cenrtelink'
				--,'Southlink'
				,'CENTTRELINK'
				,'CENTRTELINK'
				,'Centrlink pension'
				,'CENTELINK - DSP'
				,'Centerllink'
				,'Centre Link/parenting/family'
				,'CENTRE LINK NEW START'
				,'Centre link/Family/Parenting'
				,'Centrwelink'
				,'Ceterlink'
				,'Cwentrelink'
				,'CVENTRELINK'
				,'Clink - Yth All'
				,'Clink Pension'
				,'centrlink disability'
				,'centtelink'
				,'centrlelink'
				,'Centlink'
				,'C/link Dis Pen'
				,'Cantrelink'
				,'C/link Pen'
				,'Cenrrelink'
				,'Centelink - Parenting Payments'
				,'cedntrelink'
				,'Cebtrelink'
				,'cenerlink'
				,'ceneterlink'
				,'Cenetrlink'
				,'Cenrelink - Pension'
				,'Careerlink Training and Recruitment'
				,'CE3NTRELINK'
				,'Ceentrelink'
				,'Centalink'
				,'C/link FAMILY'
				,'C/link DSP'
				,'C entrelink'
				,'c link'
				,'C.LINK'
				,'CENTLRELINK'
				,'centeerlink'
				,'centgrelink'
				,'centrewlink'
				,'centrenlink'
				,'Centrlink Parenting'
				,'Centyrelink'
				,'CENTRLINK DSP'
				,'CLINK PPS/FTB'
				,'clink Youth Allowance'
				,'Cetnerlink'
				,'cewntrelink'
				,'Clink - Pps'
				,'clink DSP'
				,'LTS Leisure/Clink'
				,'marble matters/ clentrelink'
				,'Mcdonalds ;amp; Clink'
				,'mcdonalds/ clink'
				,'mercure/ micheals cleaning/c/link'
				,'CNETRELINK PARENTING PMT PARTNERED'
				,'cnetrelink pension'
				,'cnterlink'
				,'Joss ;amp; Clink'
				,'Jump;apos;N;apos;Putt + c/link'
				,'Kalyna Care/Cetnrelink Pension'
				,'Kindy Patch West Ipswich + Centrlink single parenting ;amp; Family tax'
				,'Extra Staff / Clink'
				,'Health Scope, DHHS, Certrelink. SALARY claudia.watson@healthscope.com.au'
				,'Dangar Island / CLink'
				,'Uniting Aged Care / C Link'
				,'Wyndham City Council, C/Link ;amp; Super'
				,'YMCA Springfield + Centrlink Single Parenting'
				,'southcoast Medical Service Aboriginal Corporation -Plus Centre linkPayments'
				,'MUMTAAZ FAMILY DAY CARE AND CENYERLINK'
				,'PRA/ CLINK'
				,'Premium People ;amp; Centelink'
				,'Rococco Aged Care / Clink'
				,'Cfentrelink  Disability'
				,'CFentrelink ;amp; Scope'
				,'Clink (parenting)'
				,'Clink (pension)'
				,'Clink - Carers'
				,'CLINK - DSP'
				,'Cetrelink Benefit'
				,'Cetrnelink'
				,'Clink - Yth Allw'
				,'clink / mercure motel'
				,'clink AGE PENSION'
				,'clink Dis Pen'
				,'Clink DIS SUPP'
				,'Clink, ED'
				,'Clinkt. DSP'
				,'cllink'
				,'Cneterlink'
				,'Coles liquorland + Centrlink'
				,'Coles/Centrlink parenting'
				,'Coloniel Village motel and centre link'
				,'colyton hotel/ cntrelink'
				,'CrentrelinkFTB'
				,'CENTRLINK FAMILY ALLOWANCE'
				,'Centrlink disability pension'
				,'centrwlink'
				,'Centrlink  / Veterans Affairs'
				,'Centrlink - Dsp'
				,'Centrlink - Dsp Pensioner'
				,'Centrlink - Family'
				,'Centrlink - Friend'
				,'Centrlink - pension'
				,'Centrlink / Care allow'
				,'Centrlink / Youth Allowance'
				,'CENTRLINK AGED PENSION'
				,'Centrlink and Darling downs shared care'
				,'Centrlink Carer'
				,'CENTRLINK CARER PMT'
				,'Centrlink carers'
				,'Centrlink Dis Allowance'
				,'cenyerlink'
				,'Cenyrelink;gt; Youth allowance'
				,'Centtrelink Pension'
				,'Centtrelink YA'
				,'CENTRLINK PARENTING PMT SINGLE'
				,'Centterlink'
				,'Cerntrelink - PPS Pension'
				,'Cerntrelink DSP'
				,'cerntrlink'
				,'Certerlink'
				,'Cetnrelink (also recieves wages)'
				,'Cetnrelink - carer'
				,'Cetnrelink Age Pension'
				,'cetntrelink'
				,'Centrenlink Austudy and Carers'
				,'Centrenlink Carers'
				,'Centre Link/Newsart'
				,'Centrellink - Pensiion'
				,'Centrellink DSS Pension'
				,'Centrellink/Maganda Hair ;amp; Beauty'
				,'centrellink/Tharawal Aboriginal corp'
				,'Centrilink; regular allowance from parents'
				,'Centrlelink- Carers Pension'
				,'Centrlink'
				,'Centrerlink FTB'
				,'Centrerlink Youth Allowance'
				,'Centrerlink, DSP'
				,'centrerlink- DSP'
				,'Centrlink Pension Single parenting and FBT'
				,'Centrlink PP Single'
				,'Centrlink PPS'
				,'Centrlink Youth'
				,'centrlink YOUTH ALLOWANCE'
				,'Centrlink- age pension'
				,'Centrlink- Carer'
				,'Centrlink- Family Tax and pension'
				,'Centrlink- New Start'
				,'centrlink- pensioner'
				,'centrlink- youth allowance'
				,'centrlink-pensioner'
				,'centrlink-youth allowance'
				,'Centrlink/ Family tax ;amp; DSP'
				,'Centrlink/ New Start'
				,'Centrlink/ Parenting + Family Tax'
				,'Centrlink/ single parenting + Family tax A+B'
				,'Centrlink/Parenting/Family'
				,'Centrlink/Youth Allowance/Disability'
				,'Centrlink? Parenting'
				,'CentrLlink'
				,'Centr Link'
				,'centerrlink'
				,'Centertlink'
				,'centetlink'
				,'centetrlink'
				,'Centelink - Parental payments'
				,'centerklink'
				,'Center Link Pensioner'
				,'center link/ self employed'
				,'Centera link'
				,'CENTERALINK'
				,'centre link pension'
				,'Centre link pensioner'
				,'centre link single parent'
				,'centre link- pensioner'
				,'Centre Link/Age Pension'
				,'Centre Link/DSP'
				,'centralink,max solutio0ns'
				,'CENTRE LINK DISABILITY'
				,'centre link disability support pension'
				,'Centre Link DSP'
				,'CENTRE LINK FTB'
				,'Centre Link/Parenting/Familys'
				,'Centre Link/Youth Allowance'
				,'centredlink'
				,'Centreelink'
				,'Centreelink dsp'
				,'centreklink'
				,'Centrelinlink'
				,'Blue Goal/Clink'
				,'Bunnings / C;apos;link'
				,'c/link  - glad cleaning'
				,'C/LINK , ILLAWARRA BREWERY'
				,'c/link - Age pension'
				,'c/link - dsp pension'
				,'C/link - Pension'
				,'C/Link ;amp; G Force'
				,'C/LINK ;amp; GRANT WALKER PARTS'
				,'C/link and AGWS'
				,'c/link and hado pty ltd'
				,'C/link Aus Study ;amp; Fam Tax ;amp; parent payments'
				,'C/link Dis'
				,'C/link Dis P'
				,'C/link Dis Payments ;amp; RimRock casual work ;amp; own busisnes'
				,'C-link'
				,'c edntrelink'
				,'C/link Dss PEN'
				,'C/link DSSP'
				,'C/link Dis Pen/ Family Pmnt'
				,'Care Access ;amp; clink'
				,'Careerlink'
				,'C;apos;link (pension)'
				,'C;apos;LINK - DSP'
				,'C;apos;link - Pps'
				,'C;apos;Link ;amp; Nicks Strength ;amp; Fitness'
				,'C;apos;LINK DISABILITY'
				,'C;apos;link Parenting Payment'
				,'c\link'
				,'Caentrelink - NS'
				,'CANTERLINK'
				,'canterlink family benifits'
				,'C/link Family tax ;amp; parent payments'
				,'c/link gardner'
				,'C/link Newastart'
				,'C/link Parent Fam  Tx'
				,'C/link Parent Payment'
				,'C/link Parent Tax'
				,'C/link parenting'
				,'C/Link Parenting tax'
				,'c/link Parents'
				,'C/Link Pen DSP'
				,'C/link Pen, Fam Tax, Foster payments.'
				,'c/link penison'
				,'C/link pension'
				,'c/link thomas bros'
				,'C/link Youth'
				,'C/link Youth Allowance'
				,'C/LINK- DSP'
				,'c/link/ docs payments'
				,'c/link/ maggies cleaning servi'
				,'c/link/ nsw health'
				,'c/link/ shear outback'
				,'c/link/ workcover'
				,'c/slink'
				,'cente link'
				,'Cenrtrelink parenting/family tax'
				,'cent link'
				,'Centelink - Carer/FTB'
				,'Centelink - Carers Pension'
				,'centelink - Disability pension'
				,'Cenrelink - Family AB'
				,'Cenrtelink Families'
				,'Cenrtelink Parenting ;amp; Families'
				,'cenrterlink'
				,'Cenrtlink'
				,'Centelink - Pension'
				,'Centelink - Youth Allowance'
				,'Centelink Benefits'
				,'Centelink Careers'
				,'CENTELINK COLES PARTTIME'
				,'CENTELINK DIS SUP PEN'
				,'Centelink Disability Pension and FTB'
				,'centelink dsp'
				,'Centelink parenting ;amp; families'
				,'Centelink parenting and families'
				,'Centelink Parenting Payment and Family tax'
				,'centelink parenting payments'
				,'CENTELINK PARENTING PMT SINGLE'
				,'centelink, DSP'
				,'Centelink- DSP'
				,'CEMNTRELINK YOUTH ALLOWANCE'
				,'Cemterlink'
				,'Cemtrelink - Parenting Payment Single'
				,'cenatrelink'
				,'cebterlink'
				,'Cebtre link'
				,'Ceenterlink'
				,'Carerlinks Contractors'
				,'Carers Link'
				,'Carers Link Pty Ltd'
				,'Carerslink'
				,'Cdntrelink'
				,'ce ntrelink'
				,'Cebtrelink DSP'
				,'Cebtrelink Pension'
				,'cednterlink'
				,'cenrelink -dsp'
				,'Cenrelink Aged Pension'
				,'cenrelink disabilty'
				,'Cenrelink parenting'
				,'CENRELINK PARENTING PMT'
				,'Cenrelink Pension'
				,'Cenrelink PPS'
				,'Cenrerlink'
				,'cenjtrelink'
				,'Cenmtrelink'
				,'Cenntrelink'
				,'Cenetrelink'
				,'Cenerlink Carer'
				,'Centrlink'
				,'Centrlink / Youth Allowance'
				)
			THEN 'Centrelink'
		WHEN Employer IS NULL
			THEN 'No Value'
		ELSE 'Employed'
		END AS EmploymentStatus
	,NumOfDependants
	,MaritalStatus
	,BlackListed
	,Promo
INTO #EmploymentStatus
FROM #Customer

IF OBJECT_ID('tempdb..#PostCode') IS NOT NULL
	DROP TABLE #PostCode

SELECT [postcode]
	,[state]
	,[suburb]
	,[latitude]
	,[longitude]
	,rownumber
INTO #PostCode
FROM (
	SELECT pc.[postcode]
		,pc.[state]
		,pc.[suburb]
		,pc.[latitude]
		,pc.[longitude]
		,row_number() OVER (
			PARTITION BY pc.[suburb]
			,pc.[state] ORDER BY pc.[postcode]
				,pc.[suburb]
			) AS 'rownumber'
	FROM [Interim_Reporting].[dbo].[Australian_PostCodes] pc
	WHERE PostCodeType = 'Delivery Area'
	) a
WHERE rownumber = 1

TRUNCATE TABLE [Interim_Reporting].[ExtAPL].[DimCustomer]

INSERT INTO [Interim_Reporting].[ExtAPL].[DimCustomer] (
	[BorrowerPK]
	,[ClientNo]
	,[Title]
	,[FirstName]
	,[MiddleName]
	,[LastName]
	,[Sex]
	,[DOB]
	,[UnitNumber]
	,[StreetNumber]
	,[StreetName]
	,[CITY]
	,[State]
	,[Phone]
	,[Mobile]
	,[Email]
	,[Employer]
	,[EmploymentStatus]
	,[NumOfDependants]
	,[MaritalStatus]
	,[BlackListed]
	,[ReceivePromotions]
	)
VALUES (
	- 1
	,- 1
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'1900-01-01'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,'No Value'
	,0
	,'No Value'
	,'No Value'
	,'No Value'
	)
	,(
	- 2
	,- 2
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'1900-01-01'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	,0
	,'UNKNOWN'
	,'UNKNOWN'
	,'UNKNOWN'
	)

INSERT INTO [Interim_Reporting].[ExtAPL].[DimCustomer] (
	[BorrowerPK]
	,[ClientNo]
	,[Title]
	,[FirstName]
	,[MiddleName]
	,[LastName]
	,[Sex]
	,[DOB]
	,[UnitNumber]
	,[StreetNumber]
	,[StreetName]
	,[CITY]
	,[postcode]
	,[State]
	,[Phone]
	,[Mobile]
	,[Email]
	,[latitude]
	,[longitude]
	,[AustralianResident]
	,[CurrentlyEmployed]
	,[Employer]
	,[EmploymentStatus]
	,[NumOfDependants]
	,[MaritalStatus]	
	,[BlackListed]
	,[ReceivePromotions]
	,[ExtractLoadTime]
	,[ExtractJobId]

	)
SELECT [CMR_ID] AS BorrowerPK
	,REPLACE([ClientNo], CHAR(9),'')[ClientNo]
	,REPLACE([Title], CHAR(9),'')[Title]
	,REPLACE([FirstName], CHAR(9),'')[FirstName]
	,REPLACE([MiddleName], CHAR(9),'')[MiddleName]
	,REPLACE([LastName], CHAR(9),'')[LastName]
	,REPLACE([Sex], CHAR(9),'')[Sex]
	,REPLACE([DOB], CHAR(9),'')[DOB]
	,REPLACE([UnitNumber], CHAR(9),'')[UnitNumber]
	,REPLACE([StreetNumber], CHAR(9),'')[StreetNumber]
	,REPLACE([StreetName], CHAR(9),'')[StreetName]
	,REPLACE([CITY], CHAR(9),'')[CITY]
	,REPLACE(p.postcode, CHAR(9),'')postcode
	,REPLACE(ES.[State], CHAR(9),'')[State]
	,REPLACE([Phone], CHAR(9),'')[Phone]
	,REPLACE([Mobile], CHAR(9),'')[Mobile]
	,REPLACE([Email], CHAR(9),'')Email
	,REPLACE(p.latitude, CHAR(9),'')latitude
	,REPLACE(P.longitude, CHAR(9),'')longitude
	,REPLACE([AustralianResident], CHAR(9),'')[AustralianResident]
	,REPLACE([CurrentlyEmployed], CHAR(9),'')[CurrentlyEmployed]
	,REPLACE([Employer], CHAR(9),'')[Employer]
	,CASE 
		WHEN [EmploymentStatus] = 'Centrelink'
			OR [CurrentlyEmployed] = 0
			THEN 'Centrelink'		
		WHEN [EmploymentStatus] = 'Employed'
			OR [CurrentlyEmployed] = 1
			THEN 'Employed'
		ELSE 'No Value'
		END AS [EmploymentStatus]
	,REPLACE([NumOfDependants], CHAR(9),'')[NumOfDependants]
	,REPLACE([MaritalStatus], CHAR(9),'')[MaritalStatus]
	,REPLACE([BlackListed], CHAR(9),'')[BlackListed]
	,REPLACE(Promo, CHAR(9),'')[ReceivePromotions]
	,@StartTime
	,@ExtractJobID
FROM #EmploymentStatus ES
LEFT JOIN #PostCode P ON es.[CITY] = P.[suburb]
	AND es.[State] = p.[state];



    END TRY
 
    BEGIN CATCH
        /* rollback transaction if there is open transaction */
        IF @@TRANCOUNT > 0   ROLLBACK TRANSACTION
 
        /* throw the catched error to trigger the error in SSIS package */
        DECLARE @ErrorMessage NVARCHAR(4000),
                @ErrorNumber INT,
                @ErrorSeverity INT,
                @ErrorState INT,
                @ErrorLine INT,
                @ErrorProcedure NVARCHAR(200)
 
        /* Assign variables to error-handling functions that capture information for RAISERROR */
        SELECT  @ErrorNumber = ERROR_NUMBER(), @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE(), @ErrorLine = ERROR_LINE(),
            @ErrorProcedure = ISNULL(ERROR_PROCEDURE(), '-')
 
        /* Building the message string that will contain original error information */
        SELECT  @ErrorMessage = N'Error %d, Level %d, State %d, Procedure %s, Line %d, '
         + 'Message: ' + ERROR_MESSAGE()
 
        /* Raise an error: msg_str parameter of RAISERROR will contain the original error information */
        RAISERROR (@ErrorMessage, @ErrorSeverity, 1, @ErrorNumber,
            @ErrorSeverity, @ErrorState, @ErrorProcedure, @ErrorLine)
    END CATCH
 
    --Finally Section
        /* clean up the temporary table */
 
        IF OBJECT_ID('tempdb..#Temp') IS NOT NULL
            DROP TABLE #Temp
 
 
 
END

GO
