CREATE PROCEDURE [dbo].[sp_create_temp_for_micromotor_balance]
AS
IF object_id('[reporting_loan].dbo.temptbl_micromotor') IS NOT NULL
	--DROP TABLE  [reporting_loan].dbo.temptbl_micromotor
	TRUNCATE TABLE [reporting_loan].dbo.temptbl_micromotor

INSERT INTO [reporting_loan].dbo.temptbl_micromotor (
	[Branch]
	,[BranchRefer]
	,[ClientNo]
	,[LoanNo]
	,[Client]
	,[LodgeDate]
	,[SettleDate]
	,[FundingDate]
	,[ReturnDate]
	,[Credit Category]
	,[Prod_Type]
	,[Prod_Status]
	,[ProdStat2]
	,[LoanPurpose]
	,[Term]
	,[RemainTerm]
	,[MaturityDate]
	,[Loss Date]
	,[IntRate]
	,[Applied For]
	,[Cash Out]
	,[Insurance]
	,[Application Fee]
	,[Brokerage]
	,[TotalInterest]
	,[Mthly Serv Fee]
	,[OStd Balance]
	,[Total Received]
	,[Dishonoured]
	,[Net Received]
	,[First Succ Pay Date]
	,[Fees Charged]
	,[Interest Charged]
	,[Opening balance]
	,[Principal Balance]
	,[Pay_Method]
	,[Freq]
	,[Inst_Due]
	,[Arrears]
	,[DishonCnt]
	,[Ageing]
	,[Bad Debt]
	,[Arrears2]
	,[1-30]
	,[31-60]
	,[61-90]
	,[91+]
	,[Address]
	,[State]
	,[PCode]
	,[Cust BSB]
	,[Cust AcctNo]
	,[Assessor]
	,[Broker]
	,[Broker Contact]
	,[Employer]
	,[Position]
	,[OccupationIndustry]
	,[Vendor]
	,[Security]
	,[Vehicle Type]
	,[Make]
	,[Model]
	,[Year]
	,[Colour]
	,[Rego]
	,[VinNum]
	,[EngNum]
	,[Reg State]
	,[GlassesValue]
	,[PurchaseValue]
	,[Deposit]
	,[Deposit_Pct]
	,[NetSalesProceeds]
	,[LVR]
	,[vehicle_age_inception]
	,[LodgeMonth]
	,[SettleMonth]
	,[LossMonth]
	,[FundingMonth]
	,[ReturnMonth]
	)
--LRC Westpac
SELECT DISTINCT [Branch] = BR.CMR_Name
	,[BranchRefer] = isnull(CMRBranchRef.CMR_Name, '')
	,[ClientNo] = CMR.CMR_SeqNumber
	,[LoanNo] = Products.RMR_SeqNumber
	,[Client] = (
		SELECT cmr_name + '; '
		FROM io_client_masterreference WITH (NOLOCK)
		LEFT JOIN io_link_masterreference WITH (NOLOCK)
			ON lmr_idlink_cmr = cmr_id
		WHERE LMR_IDLink_Association IN (
				'{146afcaa-059b-469e-a000-0103e84144dc}' --//Loan\Principal Borrower
				,'{627cb28d-8393-4878-b06f-38747946b792}' --//Loan\Borrower
				)
			AND lmr_idlink_code_id = base.lmr_idlink_code_id
		FOR XML PATH('')
		)
	,[LodgeDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, LDAT.RCD_CurrentStart)))
	,[SettleDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, SDat.RCD_CurrentStart)))
	,[FundingDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, FDAT.RCD_CurrentStart)))
	,[ReturnDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, RDAT.RCD_CurrentStart)))
	,[Credit Category] = RMR_CustomerType
	,[Prod_Type] = CASE 
		WHEN isnull(charindex('\', reverse(XRP_Detail)) - 1, 0) = - 1
			THEN XRP_Detail
		ELSE reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail)) - 1, 0)))
		END
	,[Prod_Status] = XSU_AlternateDetail
	,[ProdStat2] = CASE 
		WHEN XSU_AlternateDetail IN (
				'Current'
				,'Special Arrangement'
				,'Arrears'
				,'Hardship'
				,'Hold'
				,'Payment Plan'
				)
			THEN 'Active'
		WHEN XSU_AlternateDetail IN (
				'Paid in full early discount'
				,'Paid in Full'
				,'Negotiated payout'
				,'Written Off'
				)
			THEN 'Settled'
		WHEN XSU_AlternateDetail IN (
				'Cancelled'
				,'Withdrawn/Cancelled'
				)
			THEN 'Cancelled'
		WHEN XSU_AlternateDetail LIKE 'Collections%'
			THEN 'Collections'
		WHEN XSU_AlternateDetail IN (
				'Unsuccessful'
				,'Unsuccessful - Reason to be reviewed'
				)
			THEN 'Declined'
		WHEN XSU_AlternateDetail IN (
				'Default'
				,'Recoveries'
				)
			THEN 'BadDebt'
		WHEN XSU_AlternateDetail IN (
				'Approved'
				,'Awaiting Further Documents'
				,'Awaiting Emp/Rental'
				,'Pending'
				,'Pending Settlement'
				,'Pre Approved'
				,'Received'
				,'Incomplete Application'
				,'Application'
				,'Redirect'
				)
			THEN 'WIP'
		ELSE XSU_AlternateDetail
		END
	,[LoanPurpose] = LoanPurpose.LoanPurpose
	,[Term] = LoanTerm.RLM_Term_Month
	,[RemainTerm] = DateDiff(m, getdate(), convert(DATETIME, MDAT.RCD_CurrentStart, 103)) + 1
	,[MaturityDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, MDAT.RCD_CurrentStart)))
	,[Loss Date] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, LossDate.[Loss Date])))
	,[IntRate] = IntRate.[Int Rate]
	,[Applied For] = cast(isnull(APP.RCB_CurrentValue, 0) AS MONEY)
	,[Cash Out] = cast(isnull(CashOut.cashoutamt, 0) AS MONEY)
	,[Insurance] = cast(isnull(Insur.Insuranceamt, 0) AS MONEY)
	,[Application Fee] = cast(isnull(CASE 
				WHEN tempCtrlAppFee.CtrlAppFee IS NULL
					AND tempTransAppFee.TXAppFee IS NULL
					THEN convert(FLOAT, DSS_ApplicationFees, 0)
				WHEN tempTransAppFee.TXAppFee IS NULL
					THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
				WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
					THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
				WHEN tempCtrlAppFee.CtrlAppFee IS NULL
					THEN convert(FLOAT, tempTransAppFee.TXAppFee, 0)
				ELSE convert(FLOAT, tempTransAppFee.TXAppFee, 0)
				END, 0) AS MONEY)
	,[Brokerage] = cast(isnull(brokerage.brokerage, 0) AS MONEY)
	,[TotalInterest] = cast(isnull(dss_TotalInterest, 0) AS MONEY)
	,[Mthly Serv Fee] = cast(isnull(DSS_MonthlyServiceFee, 0) AS MONEY)
	,[OStd Balance] = cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
	,[Total Received] = cast(isnull(GRecv.received, 0) AS MONEY)
	,[Dishonoured] = cast(isnull(- Dishon.Dishonour, 0) AS MONEY)
	,[Net Received] = cast(isnull(GRecv.received, 0) AS MONEY) - cast(ISNULL(Dishon.Dishonour, 0) AS MONEY)
	,[First Succ Pay Date] = SchedSuccPymt.FirstPaid
	,[Fees Charged] = cast(isnull(feecharged.[Fees Charged], 0) AS MONEY)
	,[Interest Charged] = cast(isnull(intcharged.[interest paid], 0) AS MONEY)
	,[Opening balance] = cast(isnull((
				SELECT (
						isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
							WHEN tempCtrlAppFee.CtrlAppFee IS NULL
								AND tempTransAppFee.TXAppFee IS NULL
								THEN convert(FLOAT, DSS_ApplicationFees, 0)
							WHEN tempTransAppFee.TXAppFee IS NULL
								THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
							WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
								THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
							WHEN tempCtrlAppFee.CtrlAppFee IS NULL
								THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
							ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
							END + isnull(brokerage.brokerage, 0)
						)
				), 0) AS MONEY)
	,[Principal Balance] = cast(isnull((
				CASE (
						CASE 
							WHEN isnull(charindex('\', reverse(XRP_Detail)) - 1, 0) = - 1
								THEN XRP_Detail
							ELSE reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail)) - 1, 0)))
							END
						)
					WHEN 'old personal loan'
						THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
					ELSE (
							SELECT (
									isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
										WHEN tempCtrlAppFee.CtrlAppFee IS NULL
											AND tempTransAppFee.TXAppFee IS NULL
											THEN convert(FLOAT, DSS_ApplicationFees, 0)
										WHEN tempTransAppFee.TXAppFee IS NULL
											THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
										WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
											THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
										WHEN tempCtrlAppFee.CtrlAppFee IS NULL
											THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
										ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
										END + isnull(brokerage.brokerage, 0)
									)
							) + isnull(FeeCharged.[Fees Charged], 0) + isnull(intcharged.[Interest Paid], 0) - cast(isnull(GRecv.received, 0) AS MONEY) + cast(ISNULL(Dishon.Dishonour, 0) AS MONEY)
					END
				), 0) AS MONEY)
	,[Pay_Method] = XPM_Detail
	,[Freq] = Freq.Frequency
	,[Inst_Due] = cast(isnull(CASE 
				WHEN tempLSInst.Inst_Due IS NULL
					THEN convert(FLOAT, tempPSInst.InstalDue, 0)
				WHEN convert(FLOAT, tempLSInst.Inst_Due, 0) = 0
					THEN tempPSInst.InstalDue
				WHEN tempPSInst.InstalDue IS NULL
					THEN convert(FLOAT, tempLSInst.Inst_Due, 0)
				ELSE convert(FLOAT, tempLSInst.Inst_Due, 0)
				END, 0) AS MONEY)
	,[Arrears] = cast(isnull(ArrearsBal.Arrears, 0) AS MONEY)
	,[DishonCnt] = isnull(DishnCnt.NumDishon, 0)
	,[Ageing] = tempdaysageing.Ageing
	,[Bad Debt] = (
		CASE (
				CASE 
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Current'
							,'Arrears - Special Arrangement'
							,'Arrears - Arrears Letter'
							,'Arrears - Hardship'
							,'Arrears - Hold'
							,'Arrears - Payment Plan'
							,'Payment Plan'
							)
						THEN 'Active'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Discharged - Paid in full early discount'
							,'Discharged - Paid in Full'
							,'Discharged - Negotiated payout'
							,'Discharged - Written Off'
							)
						THEN 'Settled'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Application Cancelled'
							,'Application - Withdrawn/Cancelled'
							,'Application - Expired Application'
							)
						THEN 'Cancelled'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Part IX'
							,'Bankrupt'
							)
						THEN 'Collections'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Unsuccessful'
							,'Application - Unsuccessful - Reason to be reviewed'
							)
						THEN 'Declined'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Arrears - Default'
							,'Arrears - Recoveries'
							)
						THEN 'BadDebt'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Pre Approved'
							,'Application - Application Approved'
							,'Application - Awaiting Further Documents'
							,'Application - Awaiting Emp/Rental'
							,'Application - Application Received'
							,'Application - Incomplete Application'
							,'Application'
							,'Application - Redirect'
							)
						THEN 'WIP'
					ELSE reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0)))
					END
				)
			WHEN 'BadDebt'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[Arrears2] = (
		CASE 
			WHEN (
					CASE 
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Current'
								,'Arrears - Special Arrangement'
								,'Arrears - Arrears Letter'
								,'Arrears - Hardship'
								,'Arrears - Hold'
								,'Arrears - Payment Plan'
								,'Payment Plan'
								)
							THEN 'Active'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Discharged - Paid in full early discount'
								,'Discharged - Paid in Full'
								,'Discharged - Negotiated payout'
								,'Discharged - Written Off'
								)
							THEN 'Settled'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Application Cancelled'
								,'Application - Withdrawn/Cancelled'
								,'Application - Expired Application'
								)
							THEN 'Cancelled'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Part IX'
								,'Bankrupt'
								)
							THEN 'Collections'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Unsuccessful'
								,'Application - Unsuccessful - Reason to be reviewed'
								)
							THEN 'Declined'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Arrears - Default'
								,'Arrears - Recoveries'
								)
							THEN 'BadDebt'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Pre Approved'
								,'Application - Application Approved'
								,'Application - Awaiting Further Documents'
								,'Application - Awaiting Emp/Rental'
								,'Application - Application Received'
								,'Application - Incomplete Application'
								,'Application'
								,'Application - Redirect'
								)
							THEN 'WIP'
						ELSE reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0)))
						END
					) LIKE '%discharged%'
				THEN 0
			ELSE (
					CASE 
						WHEN ArrearsBal.Arrears > 0
							THEN ArrearsBal.Arrears
						ELSE 0
						END
					)
			END
		)
	,[1-30] = (
		CASE tempdaysageing.Ageing
			WHEN '1-30'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[31-60] = (
		CASE tempdaysageing.Ageing
			WHEN '31-60'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[61-90] = (
		CASE tempdaysageing.Ageing
			WHEN '61-90'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[91+] = (
		CASE tempdaysageing.Ageing
			WHEN '91+'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[Address] = (
		CASE isnumeric(CustAddress.cad_suitenumber)
			WHEN 0
				THEN ''
			ELSE 'Suite ' + CustAddress.cad_suitenumber + ' '
			END + CASE isnumeric(CustAddress.cad_floornumber)
			WHEN 0
				THEN ''
			ELSE 'Floor ' + CustAddress.cad_floornumber + ' ' + CHAR(13)
			END + CASE 
			WHEN CustAddress.cad_propertyname > ''
				THEN isnull(CustAddress.cad_propertyname, '') + ' ' + CHAR(13)
			ELSE ''
			END + CASE isnumeric(CustAddress.cad_unitnumber)
			WHEN 0
				THEN ''
			ELSE 'Unit ' + CustAddress.cad_unitnumber + ' '
			END + isnull(CustAddress.cad_streetnumber + ' ', '') + isnull(CustAddress.cad_streetname + ' ', '') + isnull(CustAddress.xsysst_description + ' ', '') + isnull(CustAddress.xsyspc_city + ' ', '')
		) --+ isnull(cad_state + ' ','') + isnull(cad_postcode,''))
	,[State] = CustAddress.CAD_State
	,[PCode] = CustAddress.CAD_PostCode
	,[Cust BSB] = cbd_accountbsbno
	,[Cust AcctNo] = cbd_accountnumber
	,[Assessor] = AssessorName
	,[Broker] = CMRBroker.CMR_Name
	,[Broker Contact] = CMRBrokerCont.CMR_Name
	,[Employer] = CASE 
		WHEN isnull(ced_idlink_xcet, '') = '{17ffdcef-dd9d-46ae-bdd4-4cab5502b517}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{6cfec78f-a1c2-49c7-b2da-c87c9d7d4b4c}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{796e6ff1-e998-4b37-9cea-968cde6a67c0}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{bf6c17fd-8e0a-4c68-95e6-95e2787fb163}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		ELSE ced_employername_c
		END
	,[Position] = (
		SELECT XCO_Detail
		FROM iO_Control_ClientOccupation
		WHERE XCO_ID = CED_IDLink_Occupation_C
		)
	,[OccupationIndustry] = CED_IndustryType
	,[Vendor] = vendor.Vendor
	,[Security] = vehicleSecurity.RSC_TypeOfSecurity
	,[Vehicle Type] = CASE 
		WHEN vehicleSecurity.RSC_NewVehicle = 1
			THEN 'New'
		WHEN vehicleSecurity.RSC_NewVehicle = 0
			THEN 'Used'
		ELSE vehicleSecurity.RSC_NewVehicle
		END
	,[Make] = vehicleSecurity.RSC_Make
	,[Model] = vehicleSecurity.RSC_Model
	,[Year] = vehicleSecurity.RSC_Year
	,[Colour] = vehicleSecurity.RSC_color
	,[Rego] = vehicleSecurity.RSC_RegNumber
	,[VinNum] = vehicleSecurity.RSC_VinNumber
	,[EngNum] = vehicleSecurity.RSC_EngineNumber
	,[Reg State] = vehicleSecurity.RegState
	,[GlassesValue] = vehicleSecurity.RSC_GlassesValue
	,[PurchaseValue] = vehicleSecurity.RSC_CurrentMarketValue
	,[Deposit] = cast(isnull(VehicleSecurity.deposit, 0) AS MONEY)
	,[Deposit_Pct] = 0 --to be calculated in excel
	,[NetSalesProceeds] = cast(isnull(NetSales.[Net Sales Proceeds], 0) AS MONEY)
	,[LVR] = (
		SELECT isnull((
					isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							AND tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, DSS_ApplicationFees, 0)
						WHEN tempTransAppFee.TXAppFee IS NULL
							THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
						WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
							THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
						ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
						END + isnull(brokerage.brokerage, 0)
					) / nullif(vehicleSecurity.rsc_GlassesValue, 0), 0)
		)
	,[vehicle_age_inception] = (
		CASE vehiclesecurity.rsc_year
			WHEN NULL
				THEN 0
			WHEN ''
				THEN 0
			ELSE (year(getdate()) - vehiclesecurity.rsc_year)
			END
		)
	,[LodgeMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, LDAT.RCD_CurrentStart), 0))))
	,[SettleMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, SDat.RCD_CurrentStart), 0))))
	,[LossMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, LossDate.[Loss Date]), 0))))
	,[FundingMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, FDAT.RCD_CurrentStart), 0))))
	,[ReturnMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, RDAT.RCD_CurrentStart), 0))))
FROM iO_Link_MasterReference base WITH (NOLOCK)
LEFT JOIN iO_Product_MasterReference Products WITH (NOLOCK)
	ON Products.RMR_ID = base.LMR_IDLink_Code_ID
LEFT JOIN iO_Control_LinkMaster WITH (NOLOCK)
	ON XLK_ID = base.LMR_IDLink_Association
LEFT JOIN iO_Link_MasterReference AS BranchLink WITH (NOLOCK)
	ON BranchLink.lmr_idlink_code_id = base.LMR_IDLink_Code_ID
		AND BranchLink.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}'
LEFT JOIN io_client_masterreference AS BR WITH (NOLOCK)
	ON BR.cmr_id = BranchLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference AS BranchRefLink WITH (NOLOCK)
	ON BranchRefLink.lmr_idlink_code_id = RMR_ID
		AND BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
LEFT JOIN io_client_masterreference AS CMRBranchRef WITH (NOLOCK)
	ON CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference primaryClient WITH (NOLOCK)
	ON primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID
		AND primaryClient.LMR_IDLink_Association IN ('{146afcaa-059b-469e-a000-0103e84144dc}')
LEFT JOIN iO_Client_MasterReference CMR WITH (NOLOCK)
	ON CMR.CMR_ID = primaryClient.LMR_IDLink_CMR
		AND CMR.CMR_ID = base.LMR_IDLink_CMR
LEFT JOIN iO_Product_ControlDate LDAT WITH (NOLOCK)
	ON LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND LDAT.RCD_Type = 106
LEFT JOIN iO_Product_ControlDate SDat WITH (NOLOCK)
	ON SDat.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND SDat.RCD_Type = 6
LEFT JOIN iO_Product_ControlDate FDAT WITH (NOLOCK)
	ON FDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND FDAT.RCD_Type = 5000
LEFT JOIN iO_Product_ControlDate RDAT WITH (NOLOCK)
	ON RDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND RDAT.RCD_Type = 5001
LEFT JOIN io_Control_ProductMaster WITH (NOLOCK)
	ON RMR_IDLink_XRP = XRP_ID
LEFT JOIN iO_Control_StatusMaster WITH (NOLOCK)
	ON XSU_ID = RMR_IDLink_XSU
LEFT JOIN (
	SELECT rlm_idlink_rmr
		,XRPu_Detail [LoanPurpose]
	FROM iO_Control_ProductPurpose WITH (NOLOCK)
	INNER JOIN iO_Product_LoanMDT WITH (NOLOCK)
		ON RLM_IDLink_XRPu = xrpu_id
	) AS LoanPurpose
	ON Loanpurpose.RLM_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_LoanMDT LoanTerm WITH (NOLOCK)
	ON LoanTerm.RLM_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_ControlDate MDAT WITH (NOLOCK)
	ON MDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND MDAT.RCD_Type = 130040
LEFT JOIN (
	SELECT SM.SMR_IDLink_code
		,SM.SMR_DateEnter AS [Loss Date]
	FROM iO_Status_MasterReference SM WITH (NOLOCK)
	INNER JOIN iO_Control_StatusMaster WITH (NOLOCK)
		ON XSU_ID = SM.SMR_IDLink_XSU
	INNER JOIN (
		SELECT SMR_IDLink_code
			,max(SMR_SeqNumber) [MaxSeqNum]
		FROM iO_Status_MasterReference WITH (NOLOCK)
		INNER JOIN iO_Control_StatusMaster WITH (NOLOCK)
			ON XSU_ID = SMR_IDLink_XSU
		WHERE XSU_Detail LIKE '%Arrears - Recoveries'
		GROUP BY SMR_IDLink_code
		) AS MaxSeqNo
		ON MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
	WHERE XSU_Detail LIKE '%Arrears - Recoveries'
		AND MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
	) AS LossDate
	ON LossDate.SMR_IDLink_code = Products.rmr_id
LEFT JOIN (
	SELECT RCR_IDLink_RMR
		,CASE 
			WHEN isnull(RCR_BreakFromClass, 0) = 1
				THEN isnull(RCR_Rate, 0)
			ELSE (
					SELECT TOP 1 XRRD_Rate
					FROM iO_Control_ProductRateDetail WITH (NOLOCK)
					WHERE XRRd_IDLink_XRRm = RCR_IDLink_XRRm
					ORDER BY XRRd_DateEffectiveFrom DESC
					)
			END [Int Rate]
	FROM iO_Product_ControlRate WITH (NOLOCK)
	WHERE RCR_Type IN (
			2
			,204
			)
	) AS IntRate
	ON IntRate.RCR_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_ControlBalance APP WITH (NOLOCK)
	ON APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'
LEFT JOIN (
	SELECT RCB_IDLink_RMR
		,isnull((rcb_currentValue), 0) [CashOutAmt]
	FROM iO_Product_ControlBalance WITH (NOLOCK)
	WHERE rcb_idlink_xrbl = '{fa9b4019-3380-435c-bcdd-40b78d39471e}'
	) AS CashOut
	ON CashOut.RCB_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) AS Insuranceamt
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (xtrm_detail LIKE 'Money3\Insurance%')
	GROUP BY rtm_idlink_rmr
	) AS Insur
	ON Insur.rtm_idlink_rmr = Products.RMR_ID
LEFT JOIN tempTransAppFee WITH (NOLOCK)
	ON tempTransAppFee.RTM_IDLink_RMR = Products.rmr_id
LEFT JOIN tempCtrlAppFee WITH (NOLOCK)
	ON tempCtrlAppFee.RCFe_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) [Brokerage]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	WHERE xtrm_detail LIKE 'Money3\Commission\%'
	GROUP BY rtm_idlink_rmr
	) AS Brokerage
	ON Brokerage.rtm_idlink_rmr = Products.RMR_ID
LEFT JOIN iO_DataStorage_SalesReport WITH (NOLOCK)
	ON dss_idlink_rmr = Products.rmr_id
LEFT JOIN iO_Product_ControlBalance PRIN WITH (NOLOCK)
	ON PRIN.RCB_IDLink_RMR = Products.rmr_id
		AND PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}'
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,((Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0)) - max(cashout.cashoutamt)) * - 1 [Received]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN iO_Control_TransactionMaster WITH (NOLOCK)
		ON XTRM_ID = RTM_IDLink_XTRM
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	LEFT JOIN (
		SELECT RCB_IDLink_RMR
			,isnull((rcb_currentValue), 0) [CashOutAmt]
		FROM iO_Product_ControlBalance WITH (NOLOCK)
		WHERE rcb_idlink_xrbl = '{fa9b4019-3380-435c-bcdd-40b78d39471e}'
		) AS CashOut
		ON CashOut.RCB_IDLink_RMR = RTM_IDLink_RMR
	WHERE (
			xtrm_detail LIKE 'Money3\Discharge\Discharge Payment\%'
			OR xtrm_detail LIKE 'Money3\%\Payment\Pay%'
			OR xtrm_detail LIKE 'Money3\Loan\Payment\Proceeds from Repossession'
			OR xtrm_detail LIKE 'Money3\disburs%'
			OR xtrm_detail LIKE 'Money3\Loan\Payment\Repayment Reversal'
			OR xtrm_detail LIKE 'Money3\Discharge\Reversal\Discharge Payment - Reversal'
			OR XTRM_Detail = 'Money3\Loan\Payment\Broker Clawback'
			OR XTRM_Detail = 'Money3\Loan\Payment\Insurance Payout'
			OR XTRM_Detail = 'Money3\Loan\Payment\Insurance Recall'
			)
	GROUP BY rtm_idlink_rmr
	) AS GRecv
	ON GRecv.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) AS [Dishonour]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (
			xtrm_detail LIKE 'Money3\%\Payment\Repayment Dishonour%'
			OR xtrm_detail = 'Loan\Reverse\Payment\Dishonor - Payment'
			)
	GROUP BY rtm_idlink_rmr
	) AS Dishon
	ON Dishon.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT Rpsd.rpsd_idlink_rmr
		,min(rpsd.rpsd_paymentduedate) AS [FirstPaid]
	FROM io_product_paymentscheduledetail rpsd WITH (NOLOCK)
	LEFT JOIN io_control_paymentoptions xpm WITH (NOLOCK)
		ON xpm.xpm_id = rpsd.rpsd_idlink_paymentmethod
	WHERE rpsd_paymentprocessed = 1
		AND rpsd.rpsd_idlink_dishonour IS NULL
	GROUP BY rpsd.rpsd_idlink_rmr
	) AS SchedSuccPymt
	ON SchedSuccPymt.rpsd_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT io_product_transaction.rtm_idlink_rmr
		,(Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0)) - isnull(cast(isnull(CASE 
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							AND tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, DSS_ApplicationFees, 0)
						WHEN tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
						WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
							THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							THEN convert(FLOAT, tempTransAppFee.TXAppFee, 0)
						ELSE convert(FLOAT, tempTransAppFee.TXAppFee, 0)
						END, 0) AS MONEY), 0) [Fees Charged]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	LEFT JOIN tempTransAppFee WITH (NOLOCK)
		ON tempTransAppFee.RTM_IDLink_RMR = io_product_transaction.RTM_IDlink_rmr
	LEFT JOIN tempCtrlAppFee WITH (NOLOCK)
		ON tempCtrlAppFee.RCFe_IDLink_RMR = io_product_transaction.RTM_IDlink_rmr
	LEFT JOIN iO_DataStorage_SalesReport WITH (NOLOCK)
		ON dss_idlink_rmr = io_product_transaction.RTM_IDlink_rmr
	WHERE (
			xtrm_detail LIKE 'Money3\Fee%'
			OR xtrm_detail LIKE 'Money3\Special\Waive'
			OR XTRM_Detail LIKE 'Money3\Discharge\%Fee%'
			OR xtrm_detail LIKE 'Money3\Discharge\Special\%'
			OR XTRM_Detail = 'Money3\Discharge\Discharge Disbursement\Direct Credit'
			)
	GROUP BY io_product_transaction.rtm_idlink_rmr
		,tempCtrlAppFee.CtrlAppFee
		,tempTransAppFee.TXAppFee
		,DSS_ApplicationFees
	) AS FeeCharged
	ON FeeCharged.rtm_idlink_rmr = Products.rmr_id
--left join (Select RTM_IDLink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Fees Charged] 
--				From iO_Product_Transaction  
--						left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM  
--				where xtrm_detail <> 'Money3\Fee\Loan\Application Fee' and (xtrm_detail like 'Money3\Fee%'    or xtrm_detail like 'Money3\AUFee%' or xtrm_detail like 'Money3\Special\Waive')
--				group by RTM_IDLink_RMR
--			 )   as FeeCharged on FeeCharged.RTM_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(Sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(Sum(Isnull(rtm_valuecr, 0)), 0) [Interest Paid]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE xtrm_detail LIKE 'Money3\Loan\Interest%'
	GROUP BY rtm_idlink_rmr
	) AS IntCharged
	ON IntCharged.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN io_product_paymentschedulemaster WITH (NOLOCK)
	ON io_product_paymentschedulemaster.rpsm_idlink_rmr = Products.RMR_ID
LEFT JOIN iO_Control_PaymentOptions WITH (NOLOCK)
	ON XPM_ID = rpsm_idlink_paymentmethod
LEFT JOIN (
	SELECT RPSM_IDLink_RMR
		,xfr_detail [Frequency]
	FROM io_product_paymentschedulemaster WITH (NOLOCK)
	INNER JOIN iO_Control_Frequency WITH (NOLOCK)
		ON XFR_ID = RPSm_IDLink_Frequency
	) AS Freq
	ON Freq.RPSM_IDLink_RMR = Products.rmr_id
LEFT JOIN tempLSInst WITH (NOLOCK)
	ON tempLSInst.rlp_idlink_rmr = Products.rmr_id
LEFT JOIN tempPSInst WITH (NOLOCK)
	ON tempPSInst.RPSD_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT RCB_IDLink_RMR
		,isnull(sum(isnull(RCB_CurrentValue, 0)), 0) [Arrears]
	FROM iO_Product_ControlBalance WITH (NOLOCK)
	LEFT JOIN iO_Control_ProductBalance WITH (NOLOCK)
		ON RCB_IDLink_XRBl = XRBl_ID
	WHERE XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}'
	GROUP BY RCB_IDLink_RMR
	) AS ArrearsBal
	ON ArrearsBal.RCB_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Count(*) [NumDishon]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (
			xtrm_detail LIKE 'Money3\Loan\Payment\Repayment Dishonour%'
			OR xtrm_detail LIKE 'Money3\LOC\Payment\Repayment Dishonour%'
			)
		AND rtm_typeghost = 0
	GROUP BY rtm_idlink_rmr
	) AS DishnCnt
	ON DishnCnt.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN tempdaysageing WITH (NOLOCK)
	ON tempdaysageing.rmr_id = Products.rmr_id
LEFT JOIN (
	SELECT cad_idlink_cmr
		,CAD_FloorNumber
		,CAD_SuiteNumber
		,CAD_PropertyName
		,cad_unitnumber
		,cad_streetnumber
		,cad_streetname
		,XSYSst_Description
		,XSYSpc_City
		,CASE 
			WHEN cad_state IN (
					'ACT'
					,'Australian, Capital Territory'
					)
				THEN 'ACT'
			WHEN cad_state IN (
					'NSW'
					,'New South Wales'
					)
				THEN 'NSW'
			WHEN cad_state IN (
					'Northern Territory'
					,'NT'
					)
				THEN 'NT'
			WHEN cad_state IN (
					'QLD'
					,'Queensland'
					,'Queesland'
					)
				THEN 'QLD'
			WHEN cad_state IN (
					's,a'
					,'s.a'
					,'s.aust'
					,'SA'
					,'South Australia'
					,'south.australia'
					)
				THEN 'SA'
			WHEN cad_state IN (
					'TAS'
					,'Tasmania'
					,'hobart'
					)
				THEN 'TAS'
			WHEN cad_state IN (
					'VIC'
					,'Victoria'
					)
				THEN 'VIC'
			WHEN cad_state IN (
					'WA'
					,'Western Australia'
					)
				THEN 'WA'
			END AS 'cad_state'
		,cad_postcode
	FROM [iO_Client_AddressDetail ] WITH (NOLOCK)
	LEFT JOIN iO_Control_AddressType iO_Control_AddressType WITH (NOLOCK)
		ON [iO_Client_AddressDetail ].CAD_IDLink_XAT = iO_Control_AddressType.XAT_ID
	LEFT JOIN io_Control_SystemStreetTypes WITH (NOLOCK)
		ON CAD_IDLink_StreetType = XSYSst_ID
	LEFT JOIN iO_Control_SystemPostcode WITH (NOLOCK)
		ON XSYSpc_ID = CAD_City
	WHERE xat_detail = 'Residential'
	) AS CustAddress
	ON CustAddress.CAD_IDLink_CMR = CMR.CMR_ID
LEFT JOIN io_client_bankdetail WITH (NOLOCK)
	ON CBD_IDLink_CMR = cmr.CMR_ID
		AND (
			io_client_bankdetail.CBD_SeqNumber = (
				SELECT max(CBD_SeqNumber)
				FROM io_client_bankdetail WITH (NOLOCK)
				WHERE CBD_IDLink_CMR = CMR.CMR_ID
					AND CBD_Default = 1
				)
			)
LEFT JOIN (
	SELECT LoanNum = PMAssess.rmr_seqnumber
		,AssessorName = CMAssess.CMR_Name
		,LMassess.lmr_id
	FROM iO_Link_MasterReference LMassess WITH (NOLOCK)
	LEFT JOIN iO_Control_LinkMaster WITH (NOLOCK)
		ON XLK_ID = LMassess.LMR_IDLink_Association
	LEFT JOIN iO_Client_MasterReference CMAssess WITH (NOLOCK)
		ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR
	LEFT JOIN iO_Product_MasterReference PMAssess WITH (NOLOCK)
		ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID
	LEFT JOIN iO_Client_MasterReference CM WITH (NOLOCK)
		ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID
	WHERE XLK_Detail = 'Loan\Assessor'
	) AS Assess
	ON assess.loannum = Products.RMR_SeqNumber
LEFT JOIN iO_Link_MasterReference AS BrokerLink WITH (NOLOCK)
	ON BrokerLink.lmr_idlink_code_id = Products.rmr_id
		AND brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
LEFT JOIN io_client_masterreference AS CMRBroker WITH (NOLOCK)
	ON CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference AS BrokerConLink WITH (NOLOCK)
	ON BrokerConLink.lmr_idlink_code_id = Products.rmr_id
		AND BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}'
LEFT JOIN io_client_masterreference AS CMRBrokerCont WITH (NOLOCK)
	ON CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR
LEFT JOIN iO_Client_IndividualEmployment WITH (NOLOCK)
	ON (
			CMR.CMR_ID = CED_IDLink_CMR
			AND (
				iO_Client_IndividualEmployment.CED_SeqNumber = (
					SELECT max(CED_SeqNumber)
					FROM iO_Client_IndividualEmployment WITH (NOLOCK)
					WHERE iO_Client_IndividualEmployment.CED_IDLink_CMR = CMR.CMR_ID
						AND CED_PrimaryEmployment = 1
					)
				)
			AND (
				ced_employername_c <> ''
				OR (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed WITH (NOLOCK)
					WHERE csep_idlink_ced = ced_id
					) <> ''
				)
			AND CED_PrimaryEmployment = 1
			)
LEFT JOIN (
	SELECT rcfe_idlink_rmr
		,isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor]
		,XLK_Detail [Category]
	FROM io_product_controlfee WITH (NOLOCK)
	LEFT JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rcfe_idlink_xtrm = xtrm_id
	LEFT JOIN io_client_masterreference CMDealer WITH (NOLOCK)
		ON rcfe_idlink_payable = CMDealer.cmr_id
	LEFT JOIN io_link_masterreference LM WITH (NOLOCK)
		ON rcfe_idlink_payable = LM.lmr_idlink_cmr
	INNER JOIN io_control_linkmaster WITH (NOLOCK)
		ON LM.lmr_idlink_code_id = xlk_id
	WHERE XLK_Detail IN (
			'ARMnet\dealer'
			,'ARMnet\Private Vendor'
			)
		AND CMDealer.Cmr_Seqnumber IS NOT NULL
	) AS Vendor
	ON Vendor.RCFe_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT DISTINCT RSC_IDLink_RMR
		,RSC_TypeOfSecurity
		,RSC_Make
		,RSC_Model
		,RSC_Year
		,RSC_color
		,RSC_RegNumber
		,RSC_VinNumber
		,RSC_EngineNumber
		,XSYSsa_ABBR [RegState]
		,RSC_GlassesValue
		,RSC_CurrentMarketValue
		,RSC_SaleValue [deposit]
		,RSC_NewVehicle
	FROM iO_Product_SecurityVEH WITH (NOLOCK)
	LEFT JOIN iO_Control_SystemStates WITH (NOLOCK)
		ON RSC_IDLink_RegState = XSYSsa_ID
	WHERE RSC_Make IS NOT NULL
		AND RSC_Model IS NOT NULL
		AND RSC_TypeOfSecurity IS NOT NULL
	) AS VehicleSecurity
	ON VehicleSecurity.RSC_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,sum(rtm_value) [Net Sales Proceeds]
	FROM iO_Product_Transaction WITH (NOLOCK)
	LEFT JOIN iO_Control_TransactionMaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	WHERE xtrm_iduser IN (
			130189
			,130188
			)
	GROUP BY rtm_idlink_rmr
	) AS NetSales
	ON NetSales.rtm_idlink_rmr = Products.RMR_ID
WHERE (
		base.lmr_idlink_association IN (
			'{146afcaa-059b-469e-a000-0103e84144dc}'
			,'{627cb28d-8393-4878-b06f-38747946b792}'
			)
		AND BR.CMR_Name = 'Micro Motor'
		)
	AND (cmr.cmr_seqnumber > 42671)
	AND Products.RMR_SeqNumber IS NOT NULL

UNION

SELECT DISTINCT [Branch] = BR.CMR_Name
	,[BranchRefer] = isnull(CMRBranchRef.CMR_Name, '')
	,[ClientNo] = CMR.CMR_SeqNumber
	,[LoanNo] = Products.RMR_SeqNumber
	,[Client] = (
		SELECT cmr_name + '; '
		FROM io_client_masterreference WITH (NOLOCK)
		LEFT JOIN io_link_masterreference WITH (NOLOCK)
			ON lmr_idlink_cmr = cmr_id
		WHERE LMR_IDLink_Association IN (
				'{146afcaa-059b-469e-a000-0103e84144dc}'
				,'{627cb28d-8393-4878-b06f-38747946b792}'
				)
			AND lmr_idlink_code_id = base.lmr_idlink_code_id
		FOR XML PATH('')
		)
	,[LodgeDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, LDAT.RCD_CurrentStart)))
	,[SettleDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, SDat.RCD_CurrentStart)))
	,[FundingDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, FDAT.RCD_CurrentStart)))
	,[ReturnDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, RDAT.RCD_CurrentStart)))
	,[Credit Category] = RMR_CustomerType
	,[Prod_Type] = CASE 
		WHEN isnull(charindex('\', reverse(XRP_Detail)) - 1, 0) = - 1
			THEN XRP_Detail
		ELSE reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail)) - 1, 0)))
		END
	,[Prod_Status] = XSU_AlternateDetail
	,[ProdStat2] = CASE 
		WHEN XSU_AlternateDetail IN (
				'Current'
				,'Special Arrangement'
				,'Arrears'
				,'Hardship'
				,'Hold'
				,'Payment Plan'
				)
			THEN 'Active'
		WHEN XSU_AlternateDetail IN (
				'Paid in full early discount'
				,'Paid in Full'
				,'Negotiated payout'
				,'Written Off'
				)
			THEN 'Settled'
		WHEN XSU_AlternateDetail IN (
				'Cancelled'
				,'Withdrawn/Cancelled'
				)
			THEN 'Cancelled'
		WHEN XSU_AlternateDetail LIKE 'Collections%'
			THEN 'Collections'
		WHEN XSU_AlternateDetail IN (
				'Unsuccessful'
				,'Unsuccessful - Reason to be reviewed'
				)
			THEN 'Declined'
		WHEN XSU_AlternateDetail IN (
				'Default'
				,'Recoveries'
				)
			THEN 'BadDebt'
		WHEN XSU_AlternateDetail IN (
				'Approved'
				,'Awaiting Further Documents'
				,'Awaiting Emp/Rental'
				,'Pending'
				,'Pending Settlement'
				,'Pre Approved'
				,'Received'
				,'Incomplete Application'
				,'Application'
				,'Redirect'
				)
			THEN 'WIP'
		ELSE XSU_AlternateDetail
		END
	,[LoanPurpose] = LoanPurpose.LoanPurpose
	,[Term] = LoanTerm.RLM_Term_Month
	,[RemainTerm] = DateDiff(m, getdate(), convert(DATETIME, MDAT.RCD_CurrentStart, 103)) + 1
	,[MaturityDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, MDAT.RCD_CurrentStart)))
	,[Loss Date] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, LossDate.[Loss Date])))
	,[IntRate] = IntRate.[Int Rate]
	,[Applied For] = cast(isnull(APP.RCB_CurrentValue, 0) AS MONEY)
	,[Cash Out] = cast(isnull(CashOut.cashoutamt, 0) AS MONEY)
	,[Insurance] = cast(isnull(Insur.Insuranceamt, 0) AS MONEY)
	,[Application Fee] = cast(isnull(CASE 
				WHEN tempTransAppFee.TXAppFee IS NULL
					THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
				WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
					THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
				WHEN tempCtrlAppFee.CtrlAppFee IS NULL
					THEN convert(FLOAT, tempTransAppFee.TXAppFee, 0)
				ELSE convert(FLOAT, tempTransAppFee.TXAppFee, 0)
				END, 0) AS MONEY)
	,[Brokerage] = cast(isnull(brokerage.brokerage, 0) AS MONEY)
	,[TotalInterest] = cast(isnull(dss_TotalInterest, 0) AS MONEY)
	,[Mthly Serv Fee] = cast(isnull(DSS_MonthlyServiceFee, 0) AS MONEY)
	,[OStd Balance] = cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
	,[Total Received] = cast(isnull(GRecv.received, 0) AS MONEY)
	,[Dishonoured] = cast(isnull(- Dishon.Dishonour, 0) AS MONEY)
	,[Net Received] = cast(isnull(GRecv.received, 0) AS MONEY) - cast(ISNULL(Dishon.Dishonour, 0) AS MONEY)
	,[First Succ Pay Date] = SchedSuccPymt.FirstPaid
	,[Fees Charged] = cast(isnull(feecharged.[Fees Charged], 0) AS MONEY)
	,[Interest Charged] = cast(isnull(intcharged.[interest paid], 0) AS MONEY)
	,[Opening balance] = cast(isnull((
				SELECT (
						isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
							WHEN tempCtrlAppFee.CtrlAppFee IS NULL
								AND tempTransAppFee.TXAppFee IS NULL
								THEN convert(FLOAT, DSS_ApplicationFees, 0)
							WHEN tempTransAppFee.TXAppFee IS NULL
								THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
							WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
								THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
							WHEN tempCtrlAppFee.CtrlAppFee IS NULL
								THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
							ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
							END + isnull(brokerage.brokerage, 0)
						)
				), 0) AS MONEY)
	,[Principal Balance] = cast(isnull((
				CASE (
						CASE 
							WHEN isnull(charindex('\', reverse(XRP_Detail)) - 1, 0) = - 1
								THEN XRP_Detail
							ELSE reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail)) - 1, 0)))
							END
						)
					WHEN 'old personal loan'
						THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
					ELSE (
							SELECT (
									isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
										WHEN tempCtrlAppFee.CtrlAppFee IS NULL
											AND tempTransAppFee.TXAppFee IS NULL
											THEN convert(FLOAT, DSS_ApplicationFees, 0)
										WHEN tempTransAppFee.TXAppFee IS NULL
											THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
										WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
											THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
										WHEN tempCtrlAppFee.CtrlAppFee IS NULL
											THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
										ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
										END + isnull(brokerage.brokerage, 0)
									)
							) + FeeCharged.[Fees Charged] + intcharged.[Interest Paid] - cast(isnull(GRecv.received, 0) AS MONEY) - cast(ISNULL(Dishon.Dishonour, 0) AS MONEY)
					END
				), 0) AS MONEY)
	,[Pay_Method] = XPM_Detail
	,[Freq] = Freq.Frequency
	,[Inst_Due] = cast(isnull(CASE 
				WHEN tempLSInst.Inst_Due IS NULL
					THEN convert(FLOAT, tempPSInst.InstalDue, 0)
				WHEN convert(FLOAT, tempLSInst.Inst_Due, 0) = 0
					THEN tempPSInst.InstalDue
				WHEN tempPSInst.InstalDue IS NULL
					THEN convert(FLOAT, tempLSInst.Inst_Due, 0)
				ELSE convert(FLOAT, tempLSInst.Inst_Due, 0)
				END, 0) AS MONEY)
	,[Arrears] = cast(isnull(ArrearsBal.Arrears, 0) AS MONEY)
	,[DishonCnt] = isnull(DishnCnt.NumDishon, 0)
	,[Ageing] = tempdaysageing.Ageing
	,[Bad Debt] = (
		CASE (
				CASE 
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Current'
							,'Arrears - Special Arrangement'
							,'Arrears - Arrears Letter'
							,'Arrears - Hardship'
							,'Arrears - Hold'
							,'Arrears - Payment Plan'
							,'Payment Plan'
							)
						THEN 'Active'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Discharged - Paid in full early discount'
							,'Discharged - Paid in Full'
							,'Discharged - Negotiated payout'
							,'Discharged - Written Off'
							)
						THEN 'Settled'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Application Cancelled'
							,'Application - Withdrawn/Cancelled'
							,'Application - Expired Application'
							)
						THEN 'Cancelled'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Part IX'
							,'Bankrupt'
							)
						THEN 'Collections'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Unsuccessful'
							,'Application - Unsuccessful - Reason to be reviewed'
							)
						THEN 'Declined'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Arrears - Default'
							,'Arrears - Recoveries'
							)
						THEN 'BadDebt'
					WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
							'Application - Pre Approved'
							,'Application - Application Approved'
							,'Application - Awaiting Further Documents'
							,'Application - Awaiting Emp/Rental'
							,'Application - Application Received'
							,'Application - Incomplete Application'
							,'Application'
							,'Application - Redirect'
							)
						THEN 'WIP'
					ELSE reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0)))
					END
				)
			WHEN 'BadDebt'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[Arrears2] = (
		CASE 
			WHEN (
					CASE 
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Current'
								,'Arrears - Special Arrangement'
								,'Arrears - Arrears Letter'
								,'Arrears - Hardship'
								,'Arrears - Hold'
								,'Arrears - Payment Plan'
								,'Payment Plan'
								)
							THEN 'Active'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Discharged - Paid in full early discount'
								,'Discharged - Paid in Full'
								,'Discharged - Negotiated payout'
								,'Discharged - Written Off'
								)
							THEN 'Settled'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Application Cancelled'
								,'Application - Withdrawn/Cancelled'
								,'Application - Expired Application'
								)
							THEN 'Cancelled'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Part IX'
								,'Bankrupt'
								)
							THEN 'Collections'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Unsuccessful'
								,'Application - Unsuccessful - Reason to be reviewed'
								)
							THEN 'Declined'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Arrears - Default'
								,'Arrears - Recoveries'
								)
							THEN 'BadDebt'
						WHEN reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0))) IN (
								'Application - Pre Approved'
								,'Application - Application Approved'
								,'Application - Awaiting Further Documents'
								,'Application - Awaiting Emp/Rental'
								,'Application - Application Received'
								,'Application - Incomplete Application'
								,'Application'
								,'Application - Redirect'
								)
							THEN 'WIP'
						ELSE reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail)) - 1, 0)))
						END
					) LIKE '%discharged%'
				THEN 0
			ELSE (
					CASE 
						WHEN ArrearsBal.Arrears > 0
							THEN ArrearsBal.Arrears
						ELSE 0
						END
					)
			END
		)
	,[1-30] = (
		CASE tempdaysageing.Ageing
			WHEN '1-30'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[31-60] = (
		CASE tempdaysageing.Ageing
			WHEN '31-60'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[61-90] = (
		CASE tempdaysageing.Ageing
			WHEN '61-90'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[91+] = (
		CASE tempdaysageing.Ageing
			WHEN '91+'
				THEN cast(isnull(PRIN.RCB_CurrentValue, 0) AS MONEY)
			ELSE 0
			END
		)
	,[Address] = (
		CASE isnumeric(CustAddress.cad_suitenumber)
			WHEN 0
				THEN ''
			ELSE 'Suite ' + CustAddress.cad_suitenumber + ' '
			END + CASE isnumeric(CustAddress.cad_floornumber)
			WHEN 0
				THEN ''
			ELSE 'Floor ' + CustAddress.cad_floornumber + ' ' + CHAR(13)
			END + CASE 
			WHEN CustAddress.cad_propertyname > ''
				THEN isnull(CustAddress.cad_propertyname, '') + ' ' + CHAR(13)
			ELSE ''
			END + CASE isnumeric(CustAddress.cad_unitnumber)
			WHEN 0
				THEN ''
			ELSE 'Unit ' + CustAddress.cad_unitnumber + ' '
			END + isnull(CustAddress.cad_streetnumber + ' ', '') + isnull(CustAddress.cad_streetname + ' ', '') + isnull(CustAddress.xsysst_description + ' ', '') + isnull(CustAddress.xsyspc_city + ' ', '')
		) --+ isnull(cad_state + ' ','') + isnull(cad_postcode,''))
	,[State] = CustAddress.CAD_State
	,[PCode] = CustAddress.CAD_PostCode
	,[Cust BSB] = cbd_accountbsbno
	,[Cust AcctNo] = cbd_accountnumber
	,[Assessor] = AssessorName
	,[Broker] = CMRBroker.CMR_Name
	,[Broker Contact] = CMRBrokerCont.CMR_Name
	,[Employer] = CASE 
		WHEN isnull(ced_idlink_xcet, '') = '{17ffdcef-dd9d-46ae-bdd4-4cab5502b517}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{6cfec78f-a1c2-49c7-b2da-c87c9d7d4b4c}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{796e6ff1-e998-4b37-9cea-968cde6a67c0}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		WHEN isnull(ced_idlink_xcet, '') = '{bf6c17fd-8e0a-4c68-95e6-95e2787fb163}'
			THEN (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed
					WHERE csep_idlink_ced = ced_id
					)
		ELSE ced_employername_c
		END
	,[Position] = (
		SELECT XCO_Detail
		FROM iO_Control_ClientOccupation
		WHERE XCO_ID = CED_IDLink_Occupation_C
		)
	,[OccupationIndustry] = CED_IndustryType
	,[Vendor] = vendor.Vendor
	,[Security] = vehicleSecurity.RSC_TypeOfSecurity
	,[Vehicle Type] = CASE 
		WHEN vehicleSecurity.RSC_NewVehicle = 1
			THEN 'New'
		WHEN vehicleSecurity.RSC_NewVehicle = 0
			THEN 'Used'
		ELSE vehicleSecurity.RSC_NewVehicle
		END
	,[Make] = vehicleSecurity.RSC_Make
	,[Model] = vehicleSecurity.RSC_Model
	,[Year] = vehicleSecurity.RSC_Year
	,[Colour] = vehicleSecurity.RSC_color
	,[Rego] = vehicleSecurity.RSC_RegNumber
	,[VinNum] = vehicleSecurity.RSC_VinNumber
	,[EngNum] = vehicleSecurity.RSC_EngineNumber
	,[Reg State] = vehicleSecurity.RegState
	,[GlassesValue] = vehicleSecurity.RSC_GlassesValue
	,[PurchaseValue] = vehicleSecurity.RSC_CurrentMarketValue
	,[Deposit] = cast(isnull(VehicleSecurity.deposit, 0) AS MONEY)
	,[Deposit_Pct] = 0 --to be calculated in excel
	,[NetSalesProceeds] = cast(isnull(NetSales.[Net Sales Proceeds], 0) AS MONEY)
	,[LVR] = (
		SELECT isnull((
					isnull(CashOut.cashoutamt, 0) + isnull(Insur.Insuranceamt, 0) + CASE 
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							AND tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, DSS_ApplicationFees, 0)
						WHEN tempTransAppFee.TXAppFee IS NULL
							THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
						WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
							THEN isnull(convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0), 0)
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							THEN isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
						ELSE isnull(convert(FLOAT, tempTransAppFee.TXAppFee, 0), 0)
						END + isnull(brokerage.brokerage, 0)
					) / nullif(vehicleSecurity.rsc_GlassesValue, 0), 0)
		)
	,[vehicle_age_inception] = (
		CASE vehiclesecurity.rsc_year
			WHEN NULL
				THEN 0
			WHEN ''
				THEN 0
			ELSE (year(getdate()) - vehiclesecurity.rsc_year)
			END
		)
	,[LodgeMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, LDAT.RCD_CurrentStart), 0))))
	,[SettleMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, SDat.RCD_CurrentStart), 0))))
	,[LossMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, LossDate.[Loss Date]), 0))))
	,[FundingMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, FDAT.RCD_CurrentStart), 0))))
	,[ReturnMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT, DATEADD(m, DATEDIFF(m, 0, RDAT.RCD_CurrentStart), 0))))
FROM iO_Link_MasterReference base WITH (NOLOCK)
LEFT JOIN iO_Product_MasterReference Products WITH (NOLOCK)
	ON Products.RMR_ID = base.LMR_IDLink_Code_ID
LEFT JOIN iO_Control_LinkMaster WITH (NOLOCK)
	ON XLK_ID = base.LMR_IDLink_Association
LEFT JOIN iO_Link_MasterReference AS BranchLink WITH (NOLOCK)
	ON BranchLink.lmr_idlink_code_id = base.LMR_IDLink_Code_ID
		AND BranchLink.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}'
LEFT JOIN io_client_masterreference AS BR WITH (NOLOCK)
	ON BR.cmr_id = BranchLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference AS BranchRefLink WITH (NOLOCK)
	ON BranchRefLink.lmr_idlink_code_id = RMR_ID
		AND BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
LEFT JOIN io_client_masterreference AS CMRBranchRef WITH (NOLOCK)
	ON CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference primaryClient WITH (NOLOCK)
	ON primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID
		AND primaryClient.LMR_IDLink_Association IN ('{146afcaa-059b-469e-a000-0103e84144dc}')
LEFT JOIN iO_Client_MasterReference CMR WITH (NOLOCK)
	ON CMR.CMR_ID = primaryClient.LMR_IDLink_CMR
		AND CMR.CMR_ID = base.LMR_IDLink_CMR
LEFT JOIN iO_Product_ControlDate LDAT WITH (NOLOCK)
	ON LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND LDAT.RCD_Type = 106
LEFT JOIN iO_Product_ControlDate SDat WITH (NOLOCK)
	ON SDat.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND SDat.RCD_Type = 6
LEFT JOIN iO_Product_ControlDate FDAT WITH (NOLOCK)
	ON FDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND FDAT.RCD_Type = 5000
LEFT JOIN iO_Product_ControlDate RDAT WITH (NOLOCK)
	ON RDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND RDAT.RCD_Type = 5001
LEFT JOIN io_Control_ProductMaster WITH (NOLOCK)
	ON RMR_IDLink_XRP = XRP_ID
LEFT JOIN iO_Control_StatusMaster WITH (NOLOCK)
	ON XSU_ID = RMR_IDLink_XSU
LEFT JOIN (
	SELECT rlm_idlink_rmr
		,XRPu_Detail [LoanPurpose]
	FROM iO_Control_ProductPurpose WITH (NOLOCK)
	INNER JOIN iO_Product_LoanMDT WITH (NOLOCK)
		ON RLM_IDLink_XRPu = xrpu_id
	) AS LoanPurpose
	ON Loanpurpose.RLM_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_LoanMDT LoanTerm WITH (NOLOCK)
	ON LoanTerm.RLM_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_ControlDate MDAT WITH (NOLOCK)
	ON MDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND MDAT.RCD_Type = 130040
LEFT JOIN (
	SELECT SM.SMR_IDLink_code
		,SM.SMR_DateEnter AS [Loss Date]
	FROM iO_Status_MasterReference SM WITH (NOLOCK)
	INNER JOIN iO_Control_StatusMaster WITH (NOLOCK)
		ON XSU_ID = SM.SMR_IDLink_XSU
	INNER JOIN (
		SELECT SMR_IDLink_code
			,max(SMR_SeqNumber) [MaxSeqNum]
		FROM iO_Status_MasterReference WITH (NOLOCK)
		INNER JOIN iO_Control_StatusMaster WITH (NOLOCK)
			ON XSU_ID = SMR_IDLink_XSU
		WHERE XSU_Detail LIKE '%Arrears - Recoveries'
		GROUP BY SMR_IDLink_code
		) AS MaxSeqNo
		ON MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
	WHERE XSU_Detail LIKE '%Arrears - Recoveries'
		AND MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
	) AS LossDate
	ON LossDate.SMR_IDLink_code = Products.rmr_id
LEFT JOIN (
	SELECT RCR_IDLink_RMR
		,CASE 
			WHEN isnull(RCR_BreakFromClass, 0) = 1
				THEN isnull(RCR_Rate, 0)
			ELSE (
					SELECT TOP 1 XRRD_Rate
					FROM iO_Control_ProductRateDetail WITH (NOLOCK)
					WHERE XRRd_IDLink_XRRm = RCR_IDLink_XRRm
					ORDER BY XRRd_DateEffectiveFrom DESC
					)
			END [Int Rate]
	FROM iO_Product_ControlRate WITH (NOLOCK)
	WHERE RCR_Type IN (
			2
			,204
			)
	) AS IntRate
	ON IntRate.RCR_IDLink_RMR = Products.RMR_ID
LEFT JOIN iO_Product_ControlBalance APP WITH (NOLOCK)
	ON APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID
		AND APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'
LEFT JOIN (
	SELECT RCB_IDLink_RMR
		,isnull((rcb_currentValue), 0) [CashOutAmt]
	FROM iO_Product_ControlBalance WITH (NOLOCK)
	WHERE rcb_idlink_xrbl = '{fa9b4019-3380-435c-bcdd-40b78d39471e}'
	) AS CashOut
	ON CashOut.RCB_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) AS Insuranceamt
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (xtrm_detail LIKE 'Money3\Insurance%')
	GROUP BY rtm_idlink_rmr
	) AS Insur
	ON Insur.rtm_idlink_rmr = Products.RMR_ID
LEFT JOIN tempTransAppFee WITH (NOLOCK)
	ON tempTransAppFee.RTM_IDLink_RMR = Products.rmr_id
LEFT JOIN tempCtrlAppFee WITH (NOLOCK)
	ON tempCtrlAppFee.RCFe_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) [Brokerage]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	WHERE xtrm_detail LIKE 'Money3\Commission\%'
	GROUP BY rtm_idlink_rmr
	) AS Brokerage
	ON Brokerage.rtm_idlink_rmr = Products.RMR_ID
LEFT JOIN iO_DataStorage_SalesReport WITH (NOLOCK)
	ON dss_idlink_rmr = Products.rmr_id
LEFT JOIN iO_Product_ControlBalance PRIN WITH (NOLOCK)
	ON PRIN.RCB_IDLink_RMR = Products.rmr_id
		AND PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}'
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,((Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0)) - max(cashout.cashoutamt)) * - 1 [Received]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN iO_Control_TransactionMaster WITH (NOLOCK)
		ON XTRM_ID = RTM_IDLink_XTRM
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	LEFT JOIN (
		SELECT RCB_IDLink_RMR
			,isnull((rcb_currentValue), 0) [CashOutAmt]
		FROM iO_Product_ControlBalance WITH (NOLOCK)
		WHERE rcb_idlink_xrbl = '{fa9b4019-3380-435c-bcdd-40b78d39471e}'
		) AS CashOut
		ON CashOut.RCB_IDLink_RMR = RTM_IDLink_RMR
	WHERE (
			xtrm_detail LIKE 'Money3\Discharge\Discharge Payment\%'
			OR xtrm_detail LIKE 'Money3\%\Payment\Pay%'
			OR xtrm_detail LIKE 'Money3\Loan\Payment\Proceeds from Repossession'
			OR xtrm_detail LIKE 'Money3\disburs%'
			OR xtrm_detail LIKE 'Money3\Loan\Payment\Repayment Reversal'
			OR xtrm_detail LIKE 'Money3\Discharge\Reversal\Discharge Payment - Reversal'
			OR XTRM_Detail = 'Money3\Loan\Payment\Broker Clawback'
			OR XTRM_Detail = 'Money3\Loan\Payment\Insurance Payout'
			OR XTRM_Detail = 'Money3\Loan\Payment\Insurance Recall'
			)
	GROUP BY rtm_idlink_rmr
	) AS GRecv
	ON GRecv.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0) AS [Dishonour]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (
			xtrm_detail LIKE 'Money3\%\Payment\Repayment Dishonour%'
			OR xtrm_detail = 'Loan\Reverse\Payment\Dishonor - Payment'
			)
	GROUP BY rtm_idlink_rmr
	) AS Dishon
	ON Dishon.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT Rpsd.rpsd_idlink_rmr
		,min(rpsd.rpsd_paymentduedate) AS [FirstPaid]
	FROM io_product_paymentscheduledetail rpsd WITH (NOLOCK)
	LEFT JOIN io_control_paymentoptions xpm WITH (NOLOCK)
		ON xpm.xpm_id = rpsd.rpsd_idlink_paymentmethod
	WHERE rpsd_paymentprocessed = 1
		AND rpsd.rpsd_idlink_dishonour IS NULL
	GROUP BY rpsd.rpsd_idlink_rmr
	) AS SchedSuccPymt
	ON SchedSuccPymt.rpsd_idlink_rmr = Products.rmr_id
LEFT JOIN (
	SELECT io_product_transaction.rtm_idlink_rmr
		,(Isnull(sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(sum(Isnull(rtm_valuecr, 0)), 0)) - isnull(cast(isnull(CASE 
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							AND tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, DSS_ApplicationFees, 0)
						WHEN tempTransAppFee.TXAppFee IS NULL
							THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
						WHEN convert(FLOAT, tempTransAppFee.TXAppFee, 0) = 0
							THEN convert(FLOAT, tempCtrlAppFee.CtrlAppFee, 0)
						WHEN tempCtrlAppFee.CtrlAppFee IS NULL
							THEN convert(FLOAT, tempTransAppFee.TXAppFee, 0)
						ELSE convert(FLOAT, tempTransAppFee.TXAppFee, 0)
						END, 0) AS MONEY), 0) [Fees Charged]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	LEFT JOIN tempTransAppFee WITH (NOLOCK)
		ON tempTransAppFee.RTM_IDLink_RMR = io_product_transaction.RTM_IDlink_rmr
	LEFT JOIN tempCtrlAppFee WITH (NOLOCK)
		ON tempCtrlAppFee.RCFe_IDLink_RMR = io_product_transaction.RTM_IDlink_rmr
	LEFT JOIN iO_DataStorage_SalesReport WITH (NOLOCK)
		ON dss_idlink_rmr = io_product_transaction.RTM_IDlink_rmr
	WHERE (
			xtrm_detail LIKE 'Money3\Fee%'
			OR xtrm_detail LIKE 'Money3\Special\Waive'
			OR XTRM_Detail LIKE 'Money3\Discharge\%Fee%'
			OR xtrm_detail LIKE 'Money3\Discharge\Special\%'
			OR XTRM_Detail = 'Money3\Discharge\Discharge Disbursement\Direct Credit'
			)
	GROUP BY io_product_transaction.rtm_idlink_rmr
		,tempCtrlAppFee.CtrlAppFee
		,tempTransAppFee.TXAppFee
		,DSS_ApplicationFees
	) AS FeeCharged
	ON FeeCharged.rtm_idlink_rmr = Products.rmr_id
--left join (Select RTM_IDLink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Fees Charged] 
--				From iO_Product_Transaction  
--						left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM  
--				where xtrm_detail <> 'Money3\Fee\Loan\Application Fee' and (xtrm_detail like 'Money3\Fee%'    or xtrm_detail like 'Money3\AUFee%' or xtrm_detail like 'Money3\Special\Waive')
--				group by RTM_IDLink_RMR
--			 )   as FeeCharged on FeeCharged.RTM_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Isnull(Sum(Isnull(rtm_valuedb, 0)), 0) - Isnull(Sum(Isnull(rtm_valuecr, 0)), 0) [Interest Paid]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE xtrm_detail LIKE 'Money3\Loan\Interest%'
	GROUP BY rtm_idlink_rmr
	) AS IntCharged
	ON IntCharged.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN io_product_paymentschedulemaster WITH (NOLOCK)
	ON io_product_paymentschedulemaster.rpsm_idlink_rmr = Products.RMR_ID
LEFT JOIN iO_Control_PaymentOptions WITH (NOLOCK)
	ON XPM_ID = rpsm_idlink_paymentmethod
LEFT JOIN (
	SELECT RPSM_IDLink_RMR
		,xfr_detail [Frequency]
	FROM io_product_paymentschedulemaster WITH (NOLOCK)
	INNER JOIN iO_Control_Frequency WITH (NOLOCK)
		ON XFR_ID = RPSm_IDLink_Frequency
	) AS Freq
	ON Freq.RPSM_IDLink_RMR = Products.rmr_id
LEFT JOIN tempLSInst WITH (NOLOCK)
	ON tempLSInst.rlp_idlink_rmr = Products.rmr_id
LEFT JOIN tempPSInst WITH (NOLOCK)
	ON tempPSInst.RPSD_IDLink_RMR = Products.rmr_id
LEFT JOIN (
	SELECT RCB_IDLink_RMR
		,isnull(sum(isnull(RCB_CurrentValue, 0)), 0) [Arrears]
	FROM iO_Product_ControlBalance WITH (NOLOCK)
	LEFT JOIN iO_Control_ProductBalance WITH (NOLOCK)
		ON RCB_IDLink_XRBl = XRBl_ID
	WHERE XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}'
	GROUP BY RCB_IDLink_RMR
	) AS ArrearsBal
	ON ArrearsBal.RCB_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,Count(*) [NumDishon]
	FROM io_product_transaction WITH (NOLOCK)
	INNER JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rtm_idlink_xtrm = xtrm_id
	INNER JOIN iO_Control_TransactionGL WITH (NOLOCK)
		ON XTRMgl_IDLink_XTRM = rtm_idlink_xtrm
	WHERE (
			xtrm_detail LIKE 'Money3\Loan\Payment\Repayment Dishonour%'
			OR xtrm_detail LIKE 'Money3\LOC\Payment\Repayment Dishonour%'
			)
		AND rtm_typeghost = 0
	GROUP BY rtm_idlink_rmr
	) AS DishnCnt
	ON DishnCnt.rtm_idlink_rmr = Products.rmr_id
LEFT JOIN tempdaysageing WITH (NOLOCK)
	ON tempdaysageing.rmr_id = Products.rmr_id
LEFT JOIN (
	SELECT cad_idlink_cmr
		,CAD_FloorNumber
		,CAD_SuiteNumber
		,CAD_PropertyName
		,cad_unitnumber
		,cad_streetnumber
		,cad_streetname
		,XSYSst_Description
		,XSYSpc_City
		,CASE 
			WHEN CAD_STATE IN (
					'Western Australia'
					,'WA'
					)
				THEN 'WA'
			WHEN CAD_STATE IN (
					's.a'
					,'SA'
					,'s.aust'
					,'South Australia'
					,'s,a'
					,'south.australia'
					)
				THEN 'SA'
			WHEN CAD_STATE IN (
					'QLD'
					,'Queesland'
					,'Queensland'
					)
				THEN 'QLD'
			WHEN CAD_STATE IN (
					'VIC'
					,'Victoria'
					)
				THEN 'VIC'
			WHEN CAD_STATE IN (
					'ACT'
					,'Australian Capital Territory'
					)
				THEN 'ACT'
			WHEN CAD_STATE IN (
					'hobart'
					,'Tasmania'
					,'TAS'
					)
				THEN 'TAS'
			WHEN CAD_STATE IN (
					'Northern Territory'
					,'NT'
					)
				THEN 'NT'
			WHEN CAD_STATE IN (
					'New South Wales'
					,'NSW'
					)
				THEN 'NSW'
			END AS 'CAD_STATE'
		,cad_postcode
	FROM [iO_Client_AddressDetail ] WITH (NOLOCK)
	LEFT JOIN io_Control_SystemStreetTypes WITH (NOLOCK)
		ON CAD_IDLink_StreetType = XSYSst_ID
	LEFT JOIN iO_Control_SystemPostcode WITH (NOLOCK)
		ON XSYSpc_ID = CAD_City
	WHERE CAD_IDLink_XAT = '{382c4074-1b80-4a5f-abc0-221571215da6}' --// Individual Residential
	) AS CustAddress
	ON CustAddress.CAD_IDLink_CMR = CMR.CMR_ID
LEFT JOIN io_client_bankdetail WITH (NOLOCK)
	ON CBD_IDLink_CMR = cmr.CMR_ID
		AND (
			io_client_bankdetail.CBD_SeqNumber = (
				SELECT max(CBD_SeqNumber)
				FROM io_client_bankdetail WITH (NOLOCK)
				WHERE CBD_IDLink_CMR = CMR.CMR_ID
					AND CBD_Default = 1
				)
			)
LEFT JOIN (
	SELECT LoanNum = PMAssess.rmr_seqnumber
		,AssessorName = CMAssess.CMR_Name
		,LMassess.lmr_id
	FROM iO_Link_MasterReference LMassess WITH (NOLOCK)
	LEFT JOIN iO_Control_LinkMaster WITH (NOLOCK)
		ON XLK_ID = LMassess.LMR_IDLink_Association
	LEFT JOIN iO_Client_MasterReference CMAssess WITH (NOLOCK)
		ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR
	LEFT JOIN iO_Product_MasterReference PMAssess WITH (NOLOCK)
		ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID
	LEFT JOIN iO_Client_MasterReference CM WITH (NOLOCK)
		ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID
	WHERE XLK_Detail = 'Loan\Assessor'
	) AS Assess
	ON assess.loannum = Products.RMR_SeqNumber
LEFT JOIN iO_Link_MasterReference AS BrokerLink WITH (NOLOCK)
	ON BrokerLink.lmr_idlink_code_id = Products.rmr_id
		AND brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
LEFT JOIN io_client_masterreference AS CMRBroker WITH (NOLOCK)
	ON CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR
LEFT JOIN iO_Link_MasterReference AS BrokerConLink WITH (NOLOCK)
	ON BrokerConLink.lmr_idlink_code_id = Products.rmr_id
		AND BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}'
LEFT JOIN io_client_masterreference AS CMRBrokerCont WITH (NOLOCK)
	ON CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR
LEFT JOIN iO_Client_IndividualEmployment WITH (NOLOCK)
	ON (
			CMR.CMR_ID = CED_IDLink_CMR
			AND (
				iO_Client_IndividualEmployment.CED_SeqNumber = (
					SELECT max(CED_SeqNumber)
					FROM iO_Client_IndividualEmployment WITH (NOLOCK)
					WHERE iO_Client_IndividualEmployment.CED_IDLink_CMR = CMR.CMR_ID
						AND CED_PrimaryEmployment = 1
					)
				)
			AND (
				ced_employername_c <> ''
				OR (
					SELECT csep_tradingname
					FROM io_client_individualselfemployed WITH (NOLOCK)
					WHERE csep_idlink_ced = ced_id
					) <> ''
				)
			AND CED_PrimaryEmployment = 1
			)
LEFT JOIN (
	SELECT rcfe_idlink_rmr
		,isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor]
		,XLK_Detail [Category]
	FROM io_product_controlfee WITH (NOLOCK)
	LEFT JOIN io_control_transactionmaster WITH (NOLOCK)
		ON rcfe_idlink_xtrm = xtrm_id
	LEFT JOIN io_client_masterreference CMDealer WITH (NOLOCK)
		ON rcfe_idlink_payable = CMDealer.cmr_id
	LEFT JOIN io_link_masterreference LM WITH (NOLOCK)
		ON rcfe_idlink_payable = LM.lmr_idlink_cmr
	INNER JOIN io_control_linkmaster WITH (NOLOCK)
		ON LM.lmr_idlink_code_id = xlk_id
	WHERE XLK_Detail IN (
			'ARMnet\dealer'
			,'ARMnet\Private Vendor'
			)
		AND CMDealer.Cmr_Seqnumber IS NOT NULL
	) AS Vendor
	ON Vendor.RCFe_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT DISTINCT RSC_IDLink_RMR
		,RSC_TypeOfSecurity
		,RSC_Make
		,RSC_Model
		,RSC_Year
		,RSC_color
		,RSC_RegNumber
		,RSC_VinNumber
		,RSC_EngineNumber
		,XSYSsa_ABBR [RegState]
		,RSC_GlassesValue
		,RSC_CurrentMarketValue
		,RSC_SaleValue [deposit]
		,RSC_NewVehicle
	FROM iO_Product_SecurityVEH WITH (NOLOCK)
	LEFT JOIN iO_Control_SystemStates WITH (NOLOCK)
		ON RSC_IDLink_RegState = XSYSsa_ID
	WHERE RSC_Make IS NOT NULL
		AND RSC_Model IS NOT NULL
		AND RSC_TypeOfSecurity IS NOT NULL
	) AS VehicleSecurity
	ON VehicleSecurity.RSC_IDLink_RMR = Products.RMR_ID
LEFT JOIN (
	SELECT rtm_idlink_rmr
		,sum(rtm_value) [Net Sales Proceeds]
	FROM iO_Product_Transaction WITH (NOLOCK)
	LEFT JOIN iO_Control_TransactionMaster WITH (NOLOCK)
		ON xtrm_id = rtm_idlink_xtrm
	WHERE xtrm_iduser IN (
			130189
			,130188
			)
	GROUP BY rtm_idlink_rmr
	) AS NetSales
	ON NetSales.rtm_idlink_rmr = Products.RMR_ID
WHERE (
		base.LMR_IDLink_Association IN ('{146afcaa-059b-469e-a000-0103e84144dc}')
		AND CMRBranchRef.CMR_Name = 'Micro Motor'
		AND BR.Cmr_Name IN ('Collections Branch')
		)
	AND cmr.cmr_seqnumber > 42671
	AND Products.RMR_SeqNumber IS NOT NULL

GO
