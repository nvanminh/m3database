SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updated_query_sp_westpac]

as 

IF object_id('[reporting_loan].dbo.temptbl_westpac') is not null
DROP TABLE  [reporting_loan].dbo.temptbl_westpac

select * into [reporting_loan].dbo.temptbl_westpac from (--LRC Westpac
Select  distinct
			[Branch]= BR.CMR_Name 
			,[BranchRefer] = isnull(CMRBranchRef.CMR_Name,'')
			,[ClientNo] = CMR.CMR_SeqNumber
			,[LoanNo] = Products.RMR_SeqNumber 
			,[Client] = (select  cmr_name + '; 'from  io_client_masterreference  left join io_link_masterreference on lmr_idlink_cmr = cmr_id where LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}') and lmr_idlink_code_id = base.lmr_idlink_code_id FOR XML PATH('')) 
			,[LodgeDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,LDAT.RCD_CurrentStart))) 
			,[SettleDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,SDat.RCD_CurrentStart)))
			,[FundingDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,FDAT.RCD_CurrentStart)))
			,[ReturnDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,RDAT.RCD_CurrentStart)))
			,[Credit Category] = RMR_CustomerType
			,[Prod_Type] = case when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1 then XRP_Detail else reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end
			,[Prod_Status] = case when isnull(charindex('\', reverse(XSU_Detail))-1, 0) = -1 then XSU_Detail else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end
			,[ProdStat2] = 
						case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application')  then 'Cancelled'
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Part IX','Bankrupt')  then 'Collections'  
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Arrears - Default', 'Arrears - Recoveries') then 'BadDebt' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
										,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP' 
						else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
					 end
			,[LoanPurpose] = LoanPurpose.LoanPurpose
			,[Term] = LoanTerm.RLM_Term_Month
			,[RemainTerm] = DateDiff(m ,getdate(), convert(datetime, MDAT.RCD_CurrentStart, 103))+1
			,[MaturityDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,MDAT.RCD_CurrentStart)))
			,[Loss Date] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,LossDate.[Loss Date])))
			,[IntRate] = IntRate.[Int Rate] 
			,[Applied For] =  cast(isnull(APP.RCB_CurrentValue,0)as Money) 
			,[Cash Out] = cast(isnull(CashOut.cashoutamt,0)as Money) 
			,[Insurance] = cast(isnull(Insur.Insuranceamt,0)as Money)
			,[Application Fee] = cast(isnull(case 
			                                                when tempCtrlAppFee.CtrlAppFee is null and tempTransAppFee.TXAppFee is null then convert(float, DSS_ApplicationFees,0)
			                                                when tempTransAppFee.TXAppFee is null then convert(float, tempCtrlAppFee.CtrlAppFee,0)  
															when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then convert(float, tempCtrlAppFee.CtrlAppFee,0)  
															when tempCtrlAppFee.CtrlAppFee is null then convert(float, tempTransAppFee.TXAppFee,0)  
															else convert(float, tempTransAppFee.TXAppFee,0) end,0) as money)
			,[Brokerage] = cast(isnull(brokerage.brokerage,0)as Money)
			,[TotalInterest] = cast(isnull(dss_TotalInterest,0)as Money) 
			,[Mthly Serv Fee] = cast(isnull(DSS_MonthlyServiceFee,0)as Money)
			,[OStd Balance]= cast(isnull(PRIN.RCB_CurrentValue,0)as Money)
			,[Total Received] = cast(isnull(GRecv.received,0) as money)
			,[Dishonoured] = cast(isnull(-Dishon.Dishonour,0)as money)
			,[Net Received] = cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money)			
			,[First Succ Pay Date] = SchedSuccPymt.FirstPaid
			,[Fees Charged] = cast(isnull(feecharged.[Fees Charged],0)as Money) 
            ,[Interest Charged] = cast(isnull(intcharged.[interest paid],0)as Money) 
			,[Opening balance] =  cast(isnull(
					(SELECT (isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
									case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0)  
                                                when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0)
                                                when tempCtrlAppFee.CtrlAppFee is null then isnull( convert(float, tempTransAppFee.TXAppFee,0) ,0)
                                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end
                                +isnull(brokerage.brokerage,0))),0)as Money) 
			,[Principal Balance] = cast(isnull( 
                        (case
									(case  when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1 then XRP_Detail 
												else reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end)
                                 when 'old personal loan' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money)
                                   else  (SELECT (isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
										case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0)  
                                                when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0)
                                                when tempCtrlAppFee.CtrlAppFee is null then isnull( convert(float, tempTransAppFee.TXAppFee,0) ,0)
                                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end
                                +isnull(brokerage.brokerage,0)))+ FeeCharged.[Fees Charged] + intcharged.[Interest Paid] - cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money) end ),0)as money)
			,[Pay_Method] = XPM_Detail
			,[Freq] = Freq.Frequency
			,[Inst_Due] = cast(isnull(
						case  when tempLSInst.Inst_Due is null then  convert(float, tempPSInst.InstalDue,0)
									when convert(float, tempLSInst.Inst_Due, 0) = 0 then tempPSInst.InstalDue   
									when tempPSInst.InstalDue is null then  convert(float, tempLSInst.Inst_Due,0) else  convert(float, tempLSInst.Inst_Due,0)  end,0) as money)
			,[Arrears] = cast(isnull(ArrearsBal.Arrears,0)as money)
			,[DishonCnt] = isnull(DishnCnt.NumDishon,0)
			,[Ageing] = tempdaysageing.Ageing
			,[Bad Debt] =   (case
											(case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
														IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application') then 'Cancelled' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) IN('Part IX','Bankrupt')  then 'Collections'  
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
														IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Arrears - Default', 'Arrears - Recoveries')  then 'BadDebt' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
														IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
																,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP' 
													else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end)
										when 'BadDebt' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money)  else 0 end)
			,[Arrears2] =  (case when 
												(case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
																IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application')  then 'Cancelled' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) IN('Part IX','Bankrupt')  then 'Collections'  
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
																IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  IN('Arrears - Default', 'Arrears - Recoveries') then 'BadDebt' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
																	,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP'
															else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end )
												    like '%discharged%'  then 0 
											 else  (case when ArrearsBal.Arrears > 0 then ArrearsBal.Arrears
																	else 0 end )end)
			,[1-30] = (case tempdaysageing.Ageing  when '1-30'  then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0  end)
			,[31-60] = (case tempdaysageing.Ageing  when '31-60'  then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0  end)
			,[61-90] =  (case tempdaysageing.Ageing  when '61-90' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0 end) 
			,[91+] = (case tempdaysageing.Ageing  when '91+' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0 end)
			,[Address]=   (case isnumeric(CustAddress.cad_suitenumber)  when 0 then ''
											else 'Suite ' + CustAddress.cad_suitenumber + ' ' end + 
												case isnumeric(CustAddress.cad_floornumber)  when 0 then ''
													else 'Floor ' + CustAddress.cad_floornumber + ' ' + char(13) end + 
														case when CustAddress.cad_propertyname > '' then isnull(CustAddress.cad_propertyname,'') + ' ' + char(13)
                                                                else ''  end + 
																	case isnumeric(CustAddress.cad_unitnumber)  when 0 then ''
																		else 'Unit ' + CustAddress.cad_unitnumber + ' ' end 
																			+ isnull(CustAddress.cad_streetnumber + ' ','') + isnull(CustAddress.cad_streetname + ' ' ,'') + isnull(CustAddress.xsysst_description + ' ', '') 
																			+ isnull(CustAddress.xsyspc_city + ' ','')) --+ isnull(cad_state + ' ','') + isnull(cad_postcode,''))

			,[State]=CustAddress.CAD_State
			,[PCode]=CustAddress.CAD_PostCode
			,[Cust BSB]=cbd_accountbsbno
			,[Cust AcctNo]=cbd_accountnumber
			,[Assessor] = AssessorName
			,[Broker] = CMRBroker.CMR_Name
			,[Broker Contact] = CMRBrokerCont.CMR_Name 
			,[Employer] = 
					case when isnull(ced_idlink_xcet, '') = '{17ffdcef-dd9d-46ae-bdd4-4cab5502b517}' 	then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id) 
							when isnull(ced_idlink_xcet, '') = '{6cfec78f-a1c2-49c7-b2da-c87c9d7d4b4c}'  then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id)
							when isnull(ced_idlink_xcet, '') = '{796e6ff1-e998-4b37-9cea-968cde6a67c0}' then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id) 
							when isnull(ced_idlink_xcet, '') = '{bf6c17fd-8e0a-4c68-95e6-95e2787fb163}'  then (select  csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id)
							else ced_employername_c end
			                                
			,[Position] = (Select XCO_Detail From iO_Control_ClientOccupation where XCO_ID = CED_IDLink_Occupation_C  )
			,[OccupationIndustry] = CED_IndustryType
			,[Vendor] = vendor.Vendor
			,[Security] = vehicleSecurity.RSC_TypeOfSecurity
			,[Vehicle Type] = case when vehicleSecurity.RSC_NewVehicle= 1 then 'New'
													when vehicleSecurity.RSC_NewVehicle= 0 then 'Used' 
													else vehicleSecurity.RSC_NewVehicle end
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
			,[Deposit] = cast(isnull(VehicleSecurity.deposit,0)As money)
			
			,[Deposit_Pct] = 0 --to be calculated in excel
			,[NetSalesProceeds] = cast(isnull(NetSales.[Net Sales Proceeds],0)as money)
			,[LVR] = 
                    (select isnull((isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
                        case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0) 
	                            when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0) 
                                when tempCtrlAppFee.CtrlAppFee is null then isnull(convert(float, tempTransAppFee.TXAppFee,0),0)  
                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end  
                       +isnull(brokerage.brokerage,0) )/nullif(vehicleSecurity.rsc_GlassesValue,0),0))
             ,[vehicle_age_inception] = 
                    (case vehiclesecurity.rsc_year
	                    when null  then 0  
	                   when ''  then 0   
	                    else (year(getdate())-vehiclesecurity.rsc_year) end)
					
			,[LodgeMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,LDAT.RCD_CurrentStart), 0))))
			,[SettleMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,SDat.RCD_CurrentStart), 0))))
			,[LossMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,LossDate.[Loss Date]), 0))))
			,[FundingMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,FDAT.RCD_CurrentStart), 0))))
			,[ReturnMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,RDAT.RCD_CurrentStart), 0))))
					
  
From iO_Link_MasterReference base 
			left join iO_Product_MasterReference Products on Products.RMR_ID = base.LMR_IDLink_Code_ID
			left join iO_Control_LinkMaster on XLK_ID = base.LMR_IDLink_Association 
			
			left join iO_Link_MasterReference as BranchLink on BranchLink.lmr_idlink_code_id =base.LMR_IDLink_Code_ID
				and BranchLink.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}' 
			left join io_client_masterreference as BR on  BR.cmr_id = BranchLink.LMR_IDLink_CMR 
			
			left join iO_Link_MasterReference as BranchRefLink on BranchRefLink.lmr_idlink_code_id = RMR_ID  
						and BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}' 
			left join io_client_masterreference as CMRBranchRef on CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR 

			left join iO_Link_MasterReference primaryClient on primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID  
					and primaryClient.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}')  

			left join iO_Client_MasterReference CMR on CMR.CMR_ID = primaryClient.LMR_IDLink_CMR 
					and CMR.CMR_ID = base.LMR_IDLink_CMR 

			left join iO_Product_ControlDate LDAT on LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and LDAT.RCD_Type = 106  
			left join iO_Product_ControlDate SDat on SDat.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and SDat.RCD_Type = 6  
			left join iO_Product_ControlDate FDAT on FDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and FDAT.RCD_Type = 5000
			left join iO_Product_ControlDate RDAT on RDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID  and RDAT.RCD_Type = 5001

			left join io_Control_ProductMaster on RMR_IDLink_XRP = XRP_ID 
			left join iO_Control_StatusMaster on XSU_ID = RMR_IDLink_XSU 

			left join (select rlm_idlink_rmr ,XRPu_Detail [LoanPurpose] 
								From iO_Control_ProductPurpose  
									inner join iO_Product_LoanMDT on RLM_IDLink_XRPu = xrpu_id 
							)as LoanPurpose on Loanpurpose.RLM_IDLink_RMR = Products.RMR_ID 
			
			Left join iO_Product_LoanMDT LoanTerm ON  LoanTerm.RLM_IDLink_RMR = Products.RMR_ID
			left join iO_Product_ControlDate MDAT on MDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and MDAT.RCD_Type = 130040 

			left join (SELECT  SM.SMR_IDLink_code, SM.SMR_DateEnter as [Loss Date]
								FROM iO_Status_MasterReference SM
									inner join iO_Control_StatusMaster on XSU_ID = SM.SMR_IDLink_XSU 
									inner join (SELECT  SMR_IDLink_code,  max(SMR_SeqNumber) [MaxSeqNum]
														FROM iO_Status_MasterReference 
															inner join iO_Control_StatusMaster on XSU_ID = SMR_IDLink_XSU 
														where  XSU_Detail like  '%Arrears - Recoveries'
														group by SMR_IDLink_code) as MaxSeqNo on MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
								where  XSU_Detail like  '%Arrears - Recoveries'  		 
								  and MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
						) as LossDate  on LossDate.SMR_IDLink_code =Products.rmr_id 

			left join (Select RCR_IDLink_RMR, case when  isnull(RCR_BreakFromClass,0)=1 then isnull(RCR_Rate,0) 
																				 else  (  Select Top 1 XRRD_Rate 
																								From  iO_Control_ProductRateDetail  
																								Where  XRRd_IDLink_XRRm = RCR_IDLink_XRRm   
																								Order By XRRd_DateEffectiveFrom Desc ) end [Int Rate]
								From  iO_Product_ControlRate  Where RCR_Type in(2,204)
							 ) as IntRate on IntRate.RCR_IDLink_RMR = Products.RMR_ID  

			left join iO_Product_ControlBalance APP on APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID  
					and APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}' 

			left join (select RCB_IDLink_RMR,isnull((rcb_currentValue),0) [CashOutAmt] 
								from iO_Product_ControlBalance 
								where rcb_idlink_xrbl='{fa9b4019-3380-435c-bcdd-40b78d39471e}' 
							)  as CashOut on CashOut.RCB_IDLink_RMR = Products.RMR_ID
			left join ( select rtm_idlink_rmr,sum(rtm_value) as InsuranceAmt 
								from io_product_transaction 
								where  rtm_idlink_xtrm in ('{86b90c31-7d4c-407d-ac5e-ab39a83ab88e}',   '{f1d448c2-d6dd-4e45-bb47-bab3f955d30a}',  '{cfaa6035-dc9e-49fd-ba1e-4917282f86a4}'
																			,  '{b024482a-6f8c-48af-bc0c-7b4ec926db1b}',  '{4b133079-a16a-4859-86e5-34b2963bce5e}',  '{03f89803-662f-4234-bf8e-b59296b4961f}'
																			,  '{ebe294bf-5609-4ab7-b904-b1576c2fc836}',  '{ce886294-cb63-4892-89ac-1c67d8ad51d6}',  '{d271376c-6495-43a6-8d21-1df2784400a5}'
																			,  '{9bba1416-e284-49b7-9eb8-9338afa9d139}', '{d07f93a7-f98c-42b8-9953-a9a62879035e}',  '{10dd208f-f453-4323-af7f-ef3a2a44df86}')  
										and rtm_typeghost = 0 group by rtm_idlink_rmr
							) as Insur on Insur.rtm_idlink_rmr = Products.RMR_ID  

			left join tempTransAppFee on tempTransAppFee.RTM_IDLink_RMR = Products.rmr_id 
			left join tempCtrlAppFee on tempCtrlAppFee.RCFe_IDLink_RMR = Products.rmr_id

			left join  (select rcbr_idlink_rmr,isnull(sum(rcbr_value),0) [Brokerage] 
								from io_product_controlbrokerage group by rcbr_idlink_rmr 
							)   as Brokerage on Brokerage.rcbr_idlink_rmr = Products.RMR_ID 

			left join iO_DataStorage_SalesReport on dss_idlink_rmr = Products.rmr_id
			left join iO_Product_ControlBalance PRIN on PRIN.RCB_IDLink_RMR = Products.rmr_id
					and PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' 

			left join (select rtm_idlink_rmr,sum(rtm_value) [Received] 
								from io_product_transaction 
								where  rtm_idlink_xtrm in ('{3b78e2bc-412d-4e78-927a-e255975efbfd}' ,'{5d21b3ef-7739-4427-85a6-70a1677786f1}'  ,'{b426962b-3748-4bbf-9232-92ba164dc785}' 
																				 ,'{77d7215b-a0ad-495a-86f5-e791f035f335}' ,'{da9c356c-51b7-46e7-b637-22f2c2897a44}'  ,'{a8136ec2-6d41-4df2-97e2-a92baa39f139}' 
																					,'{95df5a7c-ba97-45cd-a732-cf9eb4cf4fd0}'  ,'{2f97e453-ddcd-49b7-958d-e85460e5c3cf}' ,'{9a77a79c-c8f7-494f-8e9f-48e304dfd652}' 
																					 ,'{f03763e2-eb24-4ca9-bef2-e525ade90ce8}' ,'{468824e4-f92e-428c-8000-de9d68619d23}' ,'{d685de8f-4009-4968-9fe6-bd63de507376}' 
																					 ,'{d90943f6-a537-4e04-adc0-7a880260a940}'   ,'{369d0352-6702-44dc-86a5-aa1e63d43a28}'   ,'{c1b0f505-72bd-4f1d-ac11-f45d77e4bf7d}'
																					 ,'{8b80a451-3d1a-4097-81ea-959dd2f0d8f6}' ,'{857a90f4-efa8-4c9f-abbf-19b7057a7b79}' ,'{88d368ae-d2e3-4db4-9880-3de434f3b542}' 
																					 ,'{dc2c3e2a-1594-4058-b10f-73627855f28a}'   ,'{9251d213-46b3-4ffe-a59e-675bc7ed8258}') and RTM_TypeGhost= 0 
								 group by rtm_idlink_rmr 
							 ) as GRecv on GRecv.rtm_idlink_rmr = Products.RMR_ID 
			left join (select rtm_idlink_rmr,sum(rtm_value) as Dishonour  
								from io_product_transaction   
								where  rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}' ,'{1711bd64-942a-456a-b723-e65d3c877a89}' ,'{e832ac26-3c19-41aa-871c-a08f9b698d69}' 
																				,'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}' ,'{f63e5521-cbef-414c-89ed-d6aa29644687}' ,'{bfad6a88-cb2f-49ca-9b88-c1f962b81111}')  
											and rtm_typeghost = 0 group by rtm_idlink_rmr
							) as Dishon on Dishon.rtm_idlink_rmr = Products.RMR_ID 

			left join (select Rpsd.rpsd_idlink_rmr, min(rpsd.rpsd_paymentduedate) as [FirstPaid] 
													from io_product_paymentscheduledetail rpsd
																	left join io_control_paymentoptions xpm on xpm.xpm_id = rpsd.rpsd_idlink_paymentmethod 
													where rpsd_paymentprocessed = 1 and rpsd.rpsd_idlink_dishonour is null group by rpsd.rpsd_idlink_rmr 
							  ) as SchedSuccPymt  on SchedSuccPymt.rpsd_idlink_rmr =Products.rmr_id

			left join (Select RTM_IDLink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Fees Charged] 
							From iO_Product_Transaction  
									left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM  
							where xtrm_detail <> 'Money3\Fee\Loan\Application Fee' and (xtrm_detail like 'Money3\Fee%'    or xtrm_detail like 'Money3\AUFee%' or xtrm_detail like 'Money3\Special\Waive')
							group by RTM_IDLink_RMR
						 )   as FeeCharged on FeeCharged.RTM_IDLink_RMR = Products.rmr_id
			
			left join ( Select RTM_IDlink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Interest Paid] 
							 From iO_Product_Transaction 
									Left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM 
							Where xtrm_detail like 'Money3\Loan\Interest%'  group by RTM_IDLink_RMR
						 ) as IntCharged on IntCharged.RTM_IDlink_RMR = Products.RMR_ID

			left join io_product_paymentschedulemaster on  io_product_paymentschedulemaster.rpsm_idlink_rmr = Products.RMR_ID 
			left join iO_Control_PaymentOptions on XPM_ID = rpsm_idlink_paymentmethod 

			left join (select RPSM_IDLink_RMR,  xfr_detail [Frequency] 
								from io_product_paymentschedulemaster 
									inner join iO_Control_Frequency on XFR_ID = RPSm_IDLink_Frequency 
							) as Freq on Freq.RPSM_IDLink_RMR = Products.rmr_id 

			left join tempLSInst on tempLSInst.rlp_idlink_rmr = Products.rmr_id 
			left join tempPSInst on tempPSInst.RPSD_IDLink_RMR = Products.rmr_id 

			left join (Select  RCB_IDLink_RMR, isnull(sum(isnull(RCB_CurrentValue,0)),0) [Arrears] 
								From iO_Product_ControlBalance  
									Left Join iO_Control_ProductBalance on RCB_IDLink_XRBl = XRBl_ID 
								Where XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' group by RCB_IDLink_RMR
							) as ArrearsBal on ArrearsBal.RCB_IDLink_RMR = Products.RMR_ID 

			left join (select RTM_IDLink_RMR, COUNT(*) [NumDishon]
								 from iO_Product_Transaction  
									 inner join iO_Control_TransactionMaster on rtm_IDLink_XTRM = XTRM_ID 
									where xtrm_IDUSer in (755104,130096,130132) and rtm_typeghost = 0 group by RTM_IDLink_RMR
							) AS DishnCnt on DishnCnt.RTM_IDLink_RMR = Products.RMR_ID 

		left join tempdaysageing on tempdaysageing.rmr_id=Products.rmr_id
		left join (select cad_idlink_cmr, CAD_FloorNumber, CAD_SuiteNumber,CAD_PropertyName,cad_unitnumber,cad_streetnumber,cad_streetname,  
								XSYSst_Description, XSYSpc_City, cad_state, cad_postcode 
						from [iO_Client_AddressDetail ] 
							left join iO_Control_AddressType iO_Control_AddressType on [iO_Client_AddressDetail ].CAD_IDLink_XAT =  iO_Control_AddressType.XAT_ID 
							left Join io_Control_SystemStreetTypes ON CAD_IDLink_StreetType = XSYSst_ID 
							left join iO_Control_SystemPostcode on XSYSpc_ID = CAD_City 
						where xat_detail = 'Residential'  and XAT_B2BKeyword like '%Current'
					) as CustAddress on CustAddress.CAD_IDLink_CMR = CMR.CMR_ID		   
		   left join io_client_bankdetail on CBD_IDLink_CMR = cmr.CMR_ID 
				AND  (io_client_bankdetail.CBD_SeqNumber = (select max (CBD_SeqNumber) from io_client_bankdetail where CBD_IDLink_CMR = CMR.CMR_ID AND  CBD_Default = 1)) 
		   
		   LEFT JOIN (Select LoanNum = PMAssess.rmr_seqnumber,  AssessorName = CMAssess.CMR_Name, LMassess.lmr_id 
									From iO_Link_MasterReference LMassess 
										LEFT JOIN iO_Control_LinkMaster ON XLK_ID = LMassess.LMR_IDLink_Association
										LEFT JOIN iO_Client_MasterReference CMAssess ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR 
										LEFT JOIN iO_Product_MasterReference PMAssess ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID 
										LEFT JOIN iO_Client_MasterReference CM ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID 
									Where XLK_Detail = 'Loan\Assessor' 
								) as Assess on assess.loannum = Products.RMR_SeqNumber 
			
			left join iO_Link_MasterReference as BrokerLink on BrokerLink.lmr_idlink_code_id = Products.rmr_id
					 and brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}' 
			left join io_client_masterreference as CMRBroker on CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR

			left join iO_Link_MasterReference as BrokerConLink on BrokerConLink.lmr_idlink_code_id = Products.rmr_id  
					and BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}' 
			left join io_client_masterreference as CMRBrokerCont on CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR 

			LEFT JOIN iO_Client_IndividualEmployment ON (CMR.CMR_ID= CED_IDLink_CMR 
					and  (iO_Client_IndividualEmployment.CED_SeqNumber = (select max (CED_SeqNumber) 
																																	from iO_Client_IndividualEmployment 
																																	where iO_Client_IndividualEmployment.CED_IDLink_CMR  = CMR.CMR_ID  AND  CED_PrimaryEmployment = 1) ) 
					and   (ced_employername_c <>'' or (select csep_tradingname 
																						from io_client_individualselfemployed 
																						where csep_idlink_ced = ced_id)<>'') and CED_PrimaryEmployment=1) 

			left join ( select rcfe_idlink_rmr, isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor], XLK_Detail [Category] 
								from io_product_controlfee 
									left join io_control_transactionmaster on rcfe_idlink_xtrm = xtrm_id 
									left join io_client_masterreference CMDealer on rcfe_idlink_payable = CMDealer.cmr_id 
									left join io_link_masterreference LM on rcfe_idlink_payable=LM.lmr_idlink_cmr 
									inner join io_control_linkmaster on LM.lmr_idlink_code_id = xlk_id   
								where XLK_Detail in('ARMnet\dealer','ARMnet\Private Vendor') and CMDealer.Cmr_Seqnumber is not null  
							) as Vendor on Vendor.RCFe_IDLink_RMR = Products.RMR_ID  

			left join (Select distinct RSC_IDLink_RMR,RSC_TypeOfSecurity, RSC_Make,RSC_Model, RSC_Year,RSC_color, RSC_RegNumber,RSC_VinNumber, RSC_EngineNumber 
															,XSYSsa_ABBR [RegState],RSC_GlassesValue, RSC_CurrentMarketValue, RSC_SaleValue [deposit],RSC_NewVehicle
									 From iO_Product_SecurityVEH  
											Left Join iO_Control_SystemStates On RSC_IDLink_RegState = XSYSsa_ID 
									where RSC_Make is not null and RSC_Model is not null and RSC_TypeOfSecurity is not null 
							) as VehicleSecurity on VehicleSecurity.RSC_IDLink_RMR = Products.RMR_ID  

			left join
					(select rtm_idlink_rmr, sum(rtm_value)[Net Sales Proceeds] 
									from iO_Product_Transaction
													left join iO_Control_TransactionMaster on xtrm_id = rtm_idlink_xtrm
									where  xtrm_iduser in (130189,130188)
									group by rtm_idlink_rmr 
					) as NetSales on NetSales.rtm_idlink_rmr = Products.RMR_ID
										
where (base.lmr_idlink_association in ('{146afcaa-059b-469e-a000-0103e84144dc}','{627cb28d-8393-4878-b06f-38747946b792}') and BR.CMR_Name ='Loan Centre') 
			and (cmr.cmr_seqnumber > 42671 ) and Products.RMR_SeqNumber is not null
union
Select  distinct
			[Branch]= BR.CMR_Name 
			,[BranchRefer] = isnull(CMRBranchRef.CMR_Name,'')
			,[ClientNo] = CMR.CMR_SeqNumber
			,[LoanNo] = Products.RMR_SeqNumber 
			,[Client] = (select  cmr_name + '; 'from  io_client_masterreference  left join io_link_masterreference on lmr_idlink_cmr = cmr_id where LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}') and lmr_idlink_code_id = base.lmr_idlink_code_id FOR XML PATH('')) 
			,[LodgeDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,LDAT.RCD_CurrentStart))) 
			,[SettleDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,SDat.RCD_CurrentStart)))
			,[FundingDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,FDAT.RCD_CurrentStart)))
			,[ReturnDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,RDAT.RCD_CurrentStart)))
			,[Credit Category] = RMR_CustomerType
			,[Prod_Type] = case when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1 then XRP_Detail else reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end
			,[Prod_Status] = case when isnull(charindex('\', reverse(XSU_Detail))-1, 0) = -1 then XSU_Detail else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end
			,[ProdStat2] = 
						case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application')  then 'Cancelled'
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Part IX','Bankrupt')  then 'Collections'  
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
								IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Arrears - Default', 'Arrears - Recoveries') then 'BadDebt' 
						when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
								IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
										,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP' 
						else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
					 end
			,[LoanPurpose] = LoanPurpose.LoanPurpose
			,[Term] = LoanTerm.RLM_Term_Month
			,[RemainTerm] = DateDiff(m ,getdate(), convert(datetime, MDAT.RCD_CurrentStart, 103))+1
			,[MaturityDate] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,MDAT.RCD_CurrentStart)))
			,[Loss Date] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,LossDate.[Loss Date])))
			,[IntRate] = IntRate.[Int Rate] 
			,[Applied For] =  cast(isnull(APP.RCB_CurrentValue,0)as Money) 
			,[Cash Out] = cast(isnull(CashOut.cashoutamt,0)as Money) 
			,[Insurance] = cast(isnull(Insur.Insuranceamt,0)as Money)
			,[Application Fee] = cast(isnull(case  when tempTransAppFee.TXAppFee is null then convert(float, tempCtrlAppFee.CtrlAppFee,0)  
															when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then convert(float, tempCtrlAppFee.CtrlAppFee,0)  
															when tempCtrlAppFee.CtrlAppFee is null then convert(float, tempTransAppFee.TXAppFee,0)  
															else convert(float, tempTransAppFee.TXAppFee,0) end,0) as money)
			,[Brokerage] = cast(isnull(brokerage.brokerage,0)as Money)
			,[TotalInterest] = cast(isnull(dss_TotalInterest,0)as Money) 
			,[Mthly Serv Fee] = cast(isnull(DSS_MonthlyServiceFee,0)as Money)
			,[OStd Balance]= cast(isnull(PRIN.RCB_CurrentValue,0)as Money)
			,[Total Received] = cast(isnull(GRecv.received,0) as money)
			,[Dishonoured] = cast(isnull(-Dishon.Dishonour,0)as money)
			,[Net Received] = cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money)			
			,[First Succ Pay Date] = SchedSuccPymt.FirstPaid
			,[Fees Charged] = cast(isnull(feecharged.[Fees Charged],0)as Money) 
            ,[Interest Charged] = cast(isnull(intcharged.[interest paid],0)as Money) 
			,[Opening balance] =  cast(isnull(
					(SELECT (isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
									case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0)  
                                                when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0)
                                                when tempCtrlAppFee.CtrlAppFee is null then isnull( convert(float, tempTransAppFee.TXAppFee,0) ,0)
                                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end
                                +isnull(brokerage.brokerage,0))),0)as Money) 
			,[Principal Balance] = cast(isnull( 
                        (case
									(case  when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1 then XRP_Detail 
												else reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end)
                                 when 'old personal loan' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money)
                                   else  (SELECT (isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
										case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0)  
                                                when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0)
                                                when tempCtrlAppFee.CtrlAppFee is null then isnull( convert(float, tempTransAppFee.TXAppFee,0) ,0)
                                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end
                                +isnull(brokerage.brokerage,0)))+ FeeCharged.[Fees Charged] + intcharged.[Interest Paid] - cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money) end ),0)as money)
			,[Pay_Method] = XPM_Detail
			,[Freq] = Freq.Frequency
			,[Inst_Due] = cast(isnull(
						case  when tempLSInst.Inst_Due is null then  convert(float, tempPSInst.InstalDue,0)
									when convert(float, tempLSInst.Inst_Due, 0) = 0 then tempPSInst.InstalDue   
									when tempPSInst.InstalDue is null then  convert(float, tempLSInst.Inst_Due,0) else  convert(float, tempLSInst.Inst_Due,0)  end,0) as money)
			,[Arrears] = cast(isnull(ArrearsBal.Arrears,0)as money)
			,[DishonCnt] = isnull(DishnCnt.NumDishon,0)
			,[Ageing] = tempdaysageing.Ageing
			,[Bad Debt] =   (case
											(case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
														IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application') then 'Cancelled' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) IN('Part IX','Bankrupt')  then 'Collections'  
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
														IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
														IN('Arrears - Default', 'Arrears - Recoveries')  then 'BadDebt' 
													when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
														IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
																,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP' 
													else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end)
										when 'BadDebt' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money)  else 0 end)
			,[Arrears2] =  (case when 
												(case  when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter', 'Arrears - Hardship','Arrears - Hold','Arrears - Payment Plan','Payment Plan') then 'Active' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Discharged - Paid in full early discount','Discharged - Paid in Full','Discharged - Negotiated payout','Discharged - Written Off') then 'Settled' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
																IN('Application - Application Cancelled','Application - Withdrawn/Cancelled','Application - Expired Application')  then 'Cancelled' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) IN('Part IX','Bankrupt')  then 'Collections'  
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
																IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed') then 'Declined' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  IN('Arrears - Default', 'Arrears - Recoveries') then 'BadDebt' 
															when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))  
																IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents', 'Application - Awaiting Emp/Rental'
																	,'Application - Application Received','Application - Incomplete Application', 'Application','Application - Redirect') then 'WIP'
															else reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end )
												    like '%discharged%'  then 0 
											 else  (case when ArrearsBal.Arrears > 0 then ArrearsBal.Arrears
																	else 0 end )end)
			,[1-30] = (case tempdaysageing.Ageing  when '1-30'  then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0  end)
			,[31-60] = (case tempdaysageing.Ageing  when '31-60'  then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0  end)
			,[61-90] =  (case tempdaysageing.Ageing  when '61-90' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0 end) 
			,[91+] = (case tempdaysageing.Ageing  when '91+' then cast(isnull(PRIN.RCB_CurrentValue,0)as Money) else 0 end)
			,[Address]=   (case isnumeric(CustAddress.cad_suitenumber)  when 0 then ''
											else 'Suite ' + CustAddress.cad_suitenumber + ' ' end + 
												case isnumeric(CustAddress.cad_floornumber)  when 0 then ''
													else 'Floor ' + CustAddress.cad_floornumber + ' ' + char(13) end + 
														case when CustAddress.cad_propertyname > '' then isnull(CustAddress.cad_propertyname,'') + ' ' + char(13)
                                                                else ''  end + 
																	case isnumeric(CustAddress.cad_unitnumber)  when 0 then ''
																		else 'Unit ' + CustAddress.cad_unitnumber + ' ' end 
																			+ isnull(CustAddress.cad_streetnumber + ' ','') + isnull(CustAddress.cad_streetname + ' ' ,'') + isnull(CustAddress.xsysst_description + ' ', '') 
																			+ isnull(CustAddress.xsyspc_city + ' ','')) --+ isnull(cad_state + ' ','') + isnull(cad_postcode,''))

			,[State]=CustAddress.CAD_State
			,[PCode]=CustAddress.CAD_PostCode
			,[Cust BSB]=cbd_accountbsbno
			,[Cust AcctNo]=cbd_accountnumber
			,[Assessor] = AssessorName
			,[Broker] = CMRBroker.CMR_Name
			,[Broker Contact] = CMRBrokerCont.CMR_Name 
			,[Employer] = 
					case when isnull(ced_idlink_xcet, '') = '{17ffdcef-dd9d-46ae-bdd4-4cab5502b517}' 	then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id) 
							when isnull(ced_idlink_xcet, '') = '{6cfec78f-a1c2-49c7-b2da-c87c9d7d4b4c}'  then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id)
							when isnull(ced_idlink_xcet, '') = '{796e6ff1-e998-4b37-9cea-968cde6a67c0}' then (select csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id) 
							when isnull(ced_idlink_xcet, '') = '{bf6c17fd-8e0a-4c68-95e6-95e2787fb163}'  then (select  csep_tradingname from io_client_individualselfemployed where csep_idlink_ced = ced_id)
							else ced_employername_c end
			                                
			,[Position] = (Select XCO_Detail From iO_Control_ClientOccupation where XCO_ID = CED_IDLink_Occupation_C  )
			,[OccupationIndustry] = CED_IndustryType
			,[Vendor] = vendor.Vendor
			,[Security] = vehicleSecurity.RSC_TypeOfSecurity
			,[Vehicle Type] = case when vehicleSecurity.RSC_NewVehicle= 1 then 'New'
													when vehicleSecurity.RSC_NewVehicle= 0 then 'Used' 
													else vehicleSecurity.RSC_NewVehicle end
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
			,[Deposit] = cast(isnull(VehicleSecurity.deposit,0)As money)
			
			,[Deposit_Pct] = 0 --to be calculated in excel
			,[NetSalesProceeds] = cast(isnull(NetSales.[Net Sales Proceeds],0)as money)
			,[LVR] = 
                    (select isnull((isnull(CashOut.cashoutamt,0)+isnull(Insur.Insuranceamt,0) + 
                        case  when tempTransAppFee.TXAppFee is null then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0),0) 
	                            when convert(float, tempTransAppFee.TXAppFee, 0) = 0 then isnull(convert(float, tempCtrlAppFee.CtrlAppFee,0) ,0) 
                                when tempCtrlAppFee.CtrlAppFee is null then isnull(convert(float, tempTransAppFee.TXAppFee,0),0)  
                                else isnull(convert(float, tempTransAppFee.TXAppFee,0),0) end  
                       +isnull(brokerage.brokerage,0) )/nullif(vehicleSecurity.rsc_GlassesValue,0),0))
             ,[vehicle_age_inception] = 
                    (case vehiclesecurity.rsc_year
	                    when null  then 0  
	                   when ''  then 0   
	                    else (year(getdate())-vehiclesecurity.rsc_year) end)
					
			,[LodgeMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,LDAT.RCD_CurrentStart), 0))))
			,[SettleMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,SDat.RCD_CurrentStart), 0))))
			,[LossMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,LossDate.[Loss Date]), 0))))
			,[FundingMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,FDAT.RCD_CurrentStart), 0))))
			,[ReturnMonth] = CONVERT(DATETIME, FLOOR(CONVERT(FLOAT,DATEADD(m, DATEDIFF(m,0,RDAT.RCD_CurrentStart), 0))))
					
  
From iO_Link_MasterReference base 
			left join iO_Product_MasterReference Products on Products.RMR_ID = base.LMR_IDLink_Code_ID
			left join iO_Control_LinkMaster on XLK_ID = base.LMR_IDLink_Association 
			
			left join iO_Link_MasterReference as BranchLink on BranchLink.lmr_idlink_code_id =base.LMR_IDLink_Code_ID
				and BranchLink.LMR_IDLink_Association = '{b55145aa-2697-43b5-9c6a-c4a0960823d8}' 
			left join io_client_masterreference as BR on  BR.cmr_id = BranchLink.LMR_IDLink_CMR 
			
			left join iO_Link_MasterReference as BranchRefLink on BranchRefLink.lmr_idlink_code_id = RMR_ID  
						and BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}' 
			left join io_client_masterreference as CMRBranchRef on CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR 

			left join iO_Link_MasterReference primaryClient on primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID  
					and primaryClient.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}')  

			left join iO_Client_MasterReference CMR on CMR.CMR_ID = primaryClient.LMR_IDLink_CMR 
					and CMR.CMR_ID = base.LMR_IDLink_CMR 

			left join iO_Product_ControlDate LDAT on LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and LDAT.RCD_Type = 106  
			left join iO_Product_ControlDate SDat on SDat.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and SDat.RCD_Type = 6  
			left join iO_Product_ControlDate FDAT on FDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and FDAT.RCD_Type = 5000
			left join iO_Product_ControlDate RDAT on RDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID  and RDAT.RCD_Type = 5001

			left join io_Control_ProductMaster on RMR_IDLink_XRP = XRP_ID 
			left join iO_Control_StatusMaster on XSU_ID = RMR_IDLink_XSU 

			left join (select rlm_idlink_rmr ,XRPu_Detail [LoanPurpose] 
								From iO_Control_ProductPurpose  
									inner join iO_Product_LoanMDT on RLM_IDLink_XRPu = xrpu_id 
							)as LoanPurpose on Loanpurpose.RLM_IDLink_RMR = Products.RMR_ID 
			
			Left join iO_Product_LoanMDT LoanTerm ON  LoanTerm.RLM_IDLink_RMR = Products.RMR_ID
			left join iO_Product_ControlDate MDAT on MDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID and MDAT.RCD_Type = 130040 

			left join (SELECT  SM.SMR_IDLink_code, SM.SMR_DateEnter as [Loss Date]
								FROM iO_Status_MasterReference SM
									inner join iO_Control_StatusMaster on XSU_ID = SM.SMR_IDLink_XSU 
									inner join (SELECT  SMR_IDLink_code,  max(SMR_SeqNumber) [MaxSeqNum]
														FROM iO_Status_MasterReference 
															inner join iO_Control_StatusMaster on XSU_ID = SMR_IDLink_XSU 
														where  XSU_Detail like  '%Arrears - Recoveries'
														group by SMR_IDLink_code) as MaxSeqNo on MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
								where  XSU_Detail like  '%Arrears - Recoveries'  		 
								  and MaxSeqNo.MaxSeqNum = SM.SMR_SeqNumber
						) as LossDate  on LossDate.SMR_IDLink_code =Products.rmr_id 

			left join (Select RCR_IDLink_RMR, case when  isnull(RCR_BreakFromClass,0)=1 then isnull(RCR_Rate,0) 
																				 else  (  Select Top 1 XRRD_Rate 
																								From  iO_Control_ProductRateDetail  
																								Where  XRRd_IDLink_XRRm = RCR_IDLink_XRRm   
																								Order By XRRd_DateEffectiveFrom Desc ) end [Int Rate]
								From  iO_Product_ControlRate  Where RCR_Type in(2,204)
							 ) as IntRate on IntRate.RCR_IDLink_RMR = Products.RMR_ID  

			left join iO_Product_ControlBalance APP on APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID  
					and APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}' 

			left join (select RCB_IDLink_RMR,isnull((rcb_currentValue),0) [CashOutAmt] 
								from iO_Product_ControlBalance 
								where rcb_idlink_xrbl='{fa9b4019-3380-435c-bcdd-40b78d39471e}' 
							)  as CashOut on CashOut.RCB_IDLink_RMR = Products.RMR_ID
			left join ( select rtm_idlink_rmr,sum(rtm_value) as InsuranceAmt 
								from io_product_transaction 
								where  rtm_idlink_xtrm in ('{86b90c31-7d4c-407d-ac5e-ab39a83ab88e}',   '{f1d448c2-d6dd-4e45-bb47-bab3f955d30a}',  '{cfaa6035-dc9e-49fd-ba1e-4917282f86a4}'
																			,  '{b024482a-6f8c-48af-bc0c-7b4ec926db1b}',  '{4b133079-a16a-4859-86e5-34b2963bce5e}',  '{03f89803-662f-4234-bf8e-b59296b4961f}'
																			,  '{ebe294bf-5609-4ab7-b904-b1576c2fc836}',  '{ce886294-cb63-4892-89ac-1c67d8ad51d6}',  '{d271376c-6495-43a6-8d21-1df2784400a5}'
																			,  '{9bba1416-e284-49b7-9eb8-9338afa9d139}', '{d07f93a7-f98c-42b8-9953-a9a62879035e}',  '{10dd208f-f453-4323-af7f-ef3a2a44df86}')  
										and rtm_typeghost = 0 group by rtm_idlink_rmr
							) as Insur on Insur.rtm_idlink_rmr = Products.RMR_ID  

			left join tempTransAppFee on tempTransAppFee.RTM_IDLink_RMR = Products.rmr_id 
			left join tempCtrlAppFee on tempCtrlAppFee.RCFe_IDLink_RMR = Products.rmr_id

			left join  (select rcbr_idlink_rmr,isnull(sum(rcbr_value),0) [Brokerage] 
								from io_product_controlbrokerage group by rcbr_idlink_rmr 
							)   as Brokerage on Brokerage.rcbr_idlink_rmr = Products.RMR_ID 

			left join iO_DataStorage_SalesReport on dss_idlink_rmr = Products.rmr_id
			left join iO_Product_ControlBalance PRIN on PRIN.RCB_IDLink_RMR = Products.rmr_id
					and PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' 

			left join (select rtm_idlink_rmr,sum(rtm_value) [Received] 
								from io_product_transaction 
								where  rtm_idlink_xtrm in ('{3b78e2bc-412d-4e78-927a-e255975efbfd}' ,'{5d21b3ef-7739-4427-85a6-70a1677786f1}'  ,'{b426962b-3748-4bbf-9232-92ba164dc785}' 
																				 ,'{77d7215b-a0ad-495a-86f5-e791f035f335}' ,'{da9c356c-51b7-46e7-b637-22f2c2897a44}'  ,'{a8136ec2-6d41-4df2-97e2-a92baa39f139}' 
																					,'{95df5a7c-ba97-45cd-a732-cf9eb4cf4fd0}'  ,'{2f97e453-ddcd-49b7-958d-e85460e5c3cf}' ,'{9a77a79c-c8f7-494f-8e9f-48e304dfd652}' 
																					 ,'{f03763e2-eb24-4ca9-bef2-e525ade90ce8}' ,'{468824e4-f92e-428c-8000-de9d68619d23}' ,'{d685de8f-4009-4968-9fe6-bd63de507376}' 
																					 ,'{d90943f6-a537-4e04-adc0-7a880260a940}'   ,'{369d0352-6702-44dc-86a5-aa1e63d43a28}'   ,'{c1b0f505-72bd-4f1d-ac11-f45d77e4bf7d}'
																					 ,'{8b80a451-3d1a-4097-81ea-959dd2f0d8f6}' ,'{857a90f4-efa8-4c9f-abbf-19b7057a7b79}' ,'{88d368ae-d2e3-4db4-9880-3de434f3b542}' 
																					 ,'{dc2c3e2a-1594-4058-b10f-73627855f28a}'   ,'{9251d213-46b3-4ffe-a59e-675bc7ed8258}') and RTM_TypeGhost= 0 
								 group by rtm_idlink_rmr 
							 ) as GRecv on GRecv.rtm_idlink_rmr = Products.RMR_ID 
			left join (select rtm_idlink_rmr,sum(rtm_value) as Dishonour  
								from io_product_transaction   
								where  rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}' ,'{1711bd64-942a-456a-b723-e65d3c877a89}' ,'{e832ac26-3c19-41aa-871c-a08f9b698d69}' 
																				,'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}' ,'{f63e5521-cbef-414c-89ed-d6aa29644687}' ,'{bfad6a88-cb2f-49ca-9b88-c1f962b81111}')  
											and rtm_typeghost = 0 group by rtm_idlink_rmr
							) as Dishon on Dishon.rtm_idlink_rmr = Products.RMR_ID 

			left join (select Rpsd.rpsd_idlink_rmr, min(rpsd.rpsd_paymentduedate) as [FirstPaid] 
													from io_product_paymentscheduledetail rpsd
																	left join io_control_paymentoptions xpm on xpm.xpm_id = rpsd.rpsd_idlink_paymentmethod 
													where rpsd_paymentprocessed = 1 and rpsd.rpsd_idlink_dishonour is null group by rpsd.rpsd_idlink_rmr 
							  ) as SchedSuccPymt  on SchedSuccPymt.rpsd_idlink_rmr =Products.rmr_id

			left join (Select RTM_IDLink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Fees Charged] 
							From iO_Product_Transaction  
									left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM  
							where xtrm_detail <> 'Money3\Fee\Loan\Application Fee' and (xtrm_detail like 'Money3\Fee%'    or xtrm_detail like 'Money3\AUFee%' or xtrm_detail like 'Money3\Special\Waive')
							group by RTM_IDLink_RMR
						 )   as FeeCharged on FeeCharged.RTM_IDLink_RMR = Products.rmr_id
			
			left join ( Select RTM_IDlink_RMR, isnull(sum(isnull(RTM_ValueDB,0)),0)-isnull(sum(isnull(RTM_ValueCR,0)),0) [Interest Paid] 
							 From iO_Product_Transaction 
									Left Join iO_Control_TransactionMaster With(NoLock) on XTRM_ID = RTM_IDLink_XTRM 
							Where xtrm_detail like 'Money3\Loan\Interest%'  group by RTM_IDLink_RMR
						 ) as IntCharged on IntCharged.RTM_IDlink_RMR = Products.RMR_ID

			left join io_product_paymentschedulemaster on  io_product_paymentschedulemaster.rpsm_idlink_rmr = Products.RMR_ID 
			left join iO_Control_PaymentOptions on XPM_ID = rpsm_idlink_paymentmethod 

			left join (select RPSM_IDLink_RMR,  xfr_detail [Frequency] 
								from io_product_paymentschedulemaster 
									inner join iO_Control_Frequency on XFR_ID = RPSm_IDLink_Frequency 
							) as Freq on Freq.RPSM_IDLink_RMR = Products.rmr_id 

			left join tempLSInst on tempLSInst.rlp_idlink_rmr = Products.rmr_id 
			left join tempPSInst on tempPSInst.RPSD_IDLink_RMR = Products.rmr_id 

			left join (Select  RCB_IDLink_RMR, isnull(sum(isnull(RCB_CurrentValue,0)),0) [Arrears] 
								From iO_Product_ControlBalance  
									Left Join iO_Control_ProductBalance on RCB_IDLink_XRBl = XRBl_ID 
								Where XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' group by RCB_IDLink_RMR
							) as ArrearsBal on ArrearsBal.RCB_IDLink_RMR = Products.RMR_ID 

			left join (select RTM_IDLink_RMR, COUNT(*) [NumDishon]
								 from iO_Product_Transaction  
									 inner join iO_Control_TransactionMaster on rtm_IDLink_XTRM = XTRM_ID 
									where xtrm_IDUSer in (755104,130096,130132) and rtm_typeghost = 0 group by RTM_IDLink_RMR
							) AS DishnCnt on DishnCnt.RTM_IDLink_RMR = Products.RMR_ID 

		left join tempdaysageing on tempdaysageing.rmr_id=Products.rmr_id
		left join (select cad_idlink_cmr, CAD_FloorNumber, CAD_SuiteNumber,CAD_PropertyName,cad_unitnumber,cad_streetnumber,cad_streetname,  
								XSYSst_Description, XSYSpc_City, cad_state, cad_postcode 
						from [iO_Client_AddressDetail ] 
							left join iO_Control_AddressType iO_Control_AddressType on [iO_Client_AddressDetail ].CAD_IDLink_XAT =  iO_Control_AddressType.XAT_ID 
							left Join io_Control_SystemStreetTypes ON CAD_IDLink_StreetType = XSYSst_ID 
							left join iO_Control_SystemPostcode on XSYSpc_ID = CAD_City 
						where xat_detail = 'Residential'  and XAT_B2BKeyword like '%Current'
					) as CustAddress on CustAddress.CAD_IDLink_CMR = CMR.CMR_ID		   
		   left join io_client_bankdetail on CBD_IDLink_CMR = cmr.CMR_ID 
				AND  (io_client_bankdetail.CBD_SeqNumber = (select max (CBD_SeqNumber) from io_client_bankdetail where CBD_IDLink_CMR = CMR.CMR_ID AND  CBD_Default = 1)) 
		   
		   LEFT JOIN (Select LoanNum = PMAssess.rmr_seqnumber,  AssessorName = CMAssess.CMR_Name, LMassess.lmr_id 
									From iO_Link_MasterReference LMassess 
										LEFT JOIN iO_Control_LinkMaster ON XLK_ID = LMassess.LMR_IDLink_Association
										LEFT JOIN iO_Client_MasterReference CMAssess ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR 
										LEFT JOIN iO_Product_MasterReference PMAssess ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID 
										LEFT JOIN iO_Client_MasterReference CM ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID 
									Where XLK_Detail = 'Loan\Assessor' 
								) as Assess on assess.loannum = Products.RMR_SeqNumber 
			
			left join iO_Link_MasterReference as BrokerLink on BrokerLink.lmr_idlink_code_id = Products.rmr_id
					 and brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}' 
			left join io_client_masterreference as CMRBroker on CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR

			left join iO_Link_MasterReference as BrokerConLink on BrokerConLink.lmr_idlink_code_id = Products.rmr_id  
					and BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}' 
			left join io_client_masterreference as CMRBrokerCont on CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR 

			LEFT JOIN iO_Client_IndividualEmployment ON (CMR.CMR_ID= CED_IDLink_CMR 
					and  (iO_Client_IndividualEmployment.CED_SeqNumber = (select max (CED_SeqNumber) 
																																	from iO_Client_IndividualEmployment 
																																	where iO_Client_IndividualEmployment.CED_IDLink_CMR  = CMR.CMR_ID  AND  CED_PrimaryEmployment = 1) ) 
					and   (ced_employername_c <>'' or (select csep_tradingname 
																						from io_client_individualselfemployed 
																						where csep_idlink_ced = ced_id)<>'') and CED_PrimaryEmployment=1) 

			left join ( select rcfe_idlink_rmr, isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor], XLK_Detail [Category] 
								from io_product_controlfee 
									left join io_control_transactionmaster on rcfe_idlink_xtrm = xtrm_id 
									left join io_client_masterreference CMDealer on rcfe_idlink_payable = CMDealer.cmr_id 
									left join io_link_masterreference LM on rcfe_idlink_payable=LM.lmr_idlink_cmr 
									inner join io_control_linkmaster on LM.lmr_idlink_code_id = xlk_id   
								where XLK_Detail in('ARMnet\dealer','ARMnet\Private Vendor') and CMDealer.Cmr_Seqnumber is not null  
							) as Vendor on Vendor.RCFe_IDLink_RMR = Products.RMR_ID  

			left join (Select distinct RSC_IDLink_RMR,RSC_TypeOfSecurity, RSC_Make,RSC_Model, RSC_Year,RSC_color, RSC_RegNumber,RSC_VinNumber, RSC_EngineNumber 
															,XSYSsa_ABBR [RegState],RSC_GlassesValue, RSC_CurrentMarketValue, RSC_SaleValue [deposit],RSC_NewVehicle
									 From iO_Product_SecurityVEH  
											Left Join iO_Control_SystemStates On RSC_IDLink_RegState = XSYSsa_ID 
									where RSC_Make is not null and RSC_Model is not null and RSC_TypeOfSecurity is not null 
							) as VehicleSecurity on VehicleSecurity.RSC_IDLink_RMR = Products.RMR_ID  

			left join
					(select rtm_idlink_rmr, sum(rtm_value)[Net Sales Proceeds] 
									from iO_Product_Transaction
													left join iO_Control_TransactionMaster on xtrm_id = rtm_idlink_xtrm
									where  xtrm_iduser in (130189,130188)
									group by rtm_idlink_rmr 
					) as NetSales on NetSales.rtm_idlink_rmr = Products.RMR_ID
where (base.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}') and CMRBranchRef.CMR_Name ='Loan Centre' and BR.Cmr_Name in ('Collections Branch'))
			 and cmr.cmr_seqnumber > 42671 and Products.RMR_SeqNumber is not null
)a

GO
