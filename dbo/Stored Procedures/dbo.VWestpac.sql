SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[VWestpac]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here


--delete from tempLSInst;
--delete from tempPSInst;


-- insert into tempLSInst select  rlp_idlink_rmr, rlp_final as Inst_Due  from   io_product_loanpayment where  rlp_type = 5 
--insert into tempPSInst SELECT  RPSD_IDLink_RMR , RPSD_Total`PaymentAmount [InstalDue]  FROM iO_Product_PaymentScheduleDetail
--        inner join iO_Control_Frequency on XFR_ID = RPSD_IDLink_Frequency
--        inner join  (SELECT distinct RPSD_IDLink_RMR [rmrGuid] ,min(RPSD_PaymentDueDate)[MinScheDate] FROM iO_Product_PaymentScheduleDetail
--                                                where RPSD_PaymentProcessed = 0 and RPSD_PaymentDueDate > GETDATE() or RPSD_PaymentDueDate is null
--                                                group by [RPSD_IDLink_RMR]
--                                        ) as MinScheDate on MinScheDate.[MinScheDate] = RPSD_PaymentDueDate and MinScheDate.rmrGuid = [RPSD_IDLink_RMR]

Select distinct
    BR.Branch_Name as Branch,
    CMRBranchRef.CMR_Name as 'BranchRefer',
       CMR.CMR_SeqNumber as ClientNo,
       RMR_SeqNumber as LoanNo,
       (select  cmr_name + '; ' from  io_client_masterreference 
       left join io_link_masterreference on lmr_idlink_cmr = cmr_id
              where LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')
                     and lmr_idlink_code_id = base.lmr_idlink_code_id FOR XML PATH('')) as PrimaryClient,
    LDAT.RCD_CurrentStart as LodgeDate,
    PDAT.RCD_CurrentStart as SettleDate,
       case when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1
              then XRP_Detail
              else
              reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end as Prod_Type,
       case when isnull(charindex('\', reverse(XSU_Detail))-1, 0) = -1
              then XSU_Detail
              else
              reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end as Prod_Status,
       case 
              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
                           IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter','Arrears - Default',
                                  'Discharged - Paid in full early discount','Arrears - Hardship','Discharged - Paid in Full',
                                  'Arrears - Recoveries','Arrears - Hold','Arrears - Payment Plan','Discharged - Negotiated payout',
                                  'Discharged - Written Off')
              then 'Settled'

              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
                           IN('Application - Application Cancelled','Application - Withdrawn/Cancelled')
              then 'Cancelled'

              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
                           IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed')
              then 'Declined'

              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
                           IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents',
                                  'Application - Awaiting Emp/Rental','Application - Application Received','Application - Incomplete Application',
                                  'Application','Application - Redirect')
              then 'WIP'
       else
              reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end as ProdStat2,

       CMRBroker.CMR_Name as 'Broker',
       CMRBrokerCont.CMR_Name as 'Broker Contact',
       AssessorName,
       vendor.Vendor as 'Vendor',
       vehicleSecurity.RSC_TypeOfSecurity as 'Security',
       vehicleSecurity.RSC_Make as 'Make', 
       vehicleSecurity.RSC_Model as 'Model',
       vehicleSecurity.RSC_Year as 'Year',
       vehicleSecurity.RSC_color as 'Colour',
       vehicleSecurity.RSC_RegNumber as 'Rego',
       vehicleSecurity.RSC_VinNumber as 'VinNum',
       vehicleSecurity.RSC_EngineNumber as 'EngNum',
       vehicleSecurity.RegState as 'Reg State',
       vehicleSecurity.RSC_GlassesValue as 'GlassesValue',
       vehicleSecurity.RSC_CurrentMarketValue as 'PurchaseValue',
       LoanPurpose.LoanPurpose as 'LoanPurpose',
       iO_Product_LoanMDT.RLM_Term_Month as 'Term',
       Freq.intRate as 'IntRate',
       cast(isnull(APP.RCB_CurrentValue,0)as Money) as 'Applied For',
       cast(isnull(CashOut.cashoutamt,0)as Money) as 'Cash Out',
       cast(isnull(Insur.Insuranceamt,0)as Money) as 'Insurance',
       cast(isnull(appfee.ApplicationFee,0)as Money) as 'Application Fee',
       cast(isnull(brokerage.brokerage,0)as Money) as 'Brokerage',
       cast(isnull(dss_TotalInterest,0)as Money) as 'TotalInterest',
       cast(isnull(DSS_MonthlyServiceFee,0)as Money) as 'Mthly Serv Fee',
       cast(isnull(PRIN.RCB_CurrentValue,0)as Money) as 'Balance',
       cast(isnull(GRecv.received,0) as money) as 'Received',
       cast(isnull(-Dishon.Dishonour,0)as money) as 'Dishonoured',
       cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money) as 'Net Received'
       ,Freq.Frequency
    	,case   when tempLSInst.Inst_Due is null then tempPSInst.InstalDue 
				when convert(float, tempLSInst.Inst_Due, 0) = 0 then tempPSInst.InstalDue 
				when tempPSInst.InstalDue is null then tempLSInst.Inst_Due
				else convert(float, tempLSInst.Inst_Due, 0) 
		end as Inst_Due
       ,ArrearsBal.Arrears  ,DishnCnt.NumDishon
       ,convert(varchar(4),LDAT.RCD_CurrentStart,100)  + convert(varchar(4),year(LDAT.RCD_CurrentStart))as LodgeMonth
       ,convert(varchar(4),PDAT.RCD_CurrentStart,100)  + convert(varchar(4),year(PDAT.RCD_CurrentStart))as SettleMonth

From
        iO_Link_MasterReference base
        left join iO_Product_MasterReference on RMR_ID = base.LMR_IDLink_Code_ID
        left join io_Control_ProductMaster on RMR_IDLink_XRP = XRP_ID
        left join iO_Control_LinkMaster on XLK_ID = base.LMR_IDLink_Association
        left join iO_Control_StatusMaster on XSU_ID = RMR_IDLink_XSU
        left join iO_Link_MasterReference primaryClient on primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID 
                and primaryClient.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}') 
              
        left join iO_Link_MasterReference as BrokerLink on BrokerLink.lmr_idlink_code_id = iO_Product_MasterReference.rmr_id
        and brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
        left join io_client_masterreference as CMRBroker on CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR

        left join iO_Link_MasterReference as BrokerConLink on BrokerConLink.lmr_idlink_code_id = iO_Product_MasterReference.rmr_id
        and BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}'
        left join io_client_masterreference as CMRBrokerCont on CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR

        left join iO_Client_MasterReference CMR on CMR.CMR_ID = primaryClient.LMR_IDLink_CMR and CMR.CMR_ID = base.LMR_IDLink_CMR
        left join iO_Product_ControlBalance APP on APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID 
        and APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'
        left join iO_Product_ControlBalance PRIN on PRIN.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID 
                and PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' 

        left join iO_Product_ControlDate PDAT on PDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID 
                and PDAT.RCD_Type = 6 
        left join iO_Product_ControlDate LDAT on LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID 
                and LDAT.RCD_Type = 106 
        left join iO_DataStorage_SalesReport on dss_idlink_rmr = base.LMR_IDLink_Code_ID
        left JOIN
        (
                SELECT iO_Link_MasterReference.LMR_IDLink_Code_ID,
                        iO_Client_MasterReference_1.CMR_Name AS Branch_Name
                           
                FROM iO_Link_MasterReference 
                        LEFT JOIN iO_Client_MasterReference 
                                    ON iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID

                        LEFT JOIN iO_Client_MasterReference AS iO_Client_MasterReference_1 
                                    ON iO_Link_MasterReference.LMR_IDLink_cmr = iO_Client_MasterReference_1.CMR_ID
                                                
                WHERE iO_Link_MasterReference.LMR_IDLink_Association='{b55145aa-2697-43b5-9c6a-c4a0960823d8}'
        )AS br on BR.LMR_IDLink_Code_ID = RMR_ID

        LEFT JOIN
                (Select       LoanNum = PMAssess.rmr_seqnumber,  AssessorName = CMAssess.CMR_Name, LMassess.lmr_id
                From
                            iO_Link_MasterReference LMassess
                                    LEFT JOIN iO_Control_LinkMaster ON XLK_ID = LMassess.LMR_IDLink_Association
                                    LEFT JOIN iO_Client_MasterReference CMAssess ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR
                                    LEFT JOIN iO_Product_MasterReference PMAssess ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID
                                    LEFT JOIN iO_Client_MasterReference CM ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID
                Where
                    XLK_Detail = 'Loan\Assessor'
                     
                ) as Assess on assess.loannum = RMR_SeqNumber

       LEFT JOIN M3_MAIN.dbo.iO_Product_LoanMDT iO_Product_LoanMDT ON iO_Product_MasterReference.RMR_ID = iO_Product_LoanMDT.RLM_IDLink_RMR --getting the Period Term
       left join
              (select rlm_idlink_rmr ,XRPu_Detail [LoanPurpose]
                     From iO_Control_ProductPurpose    inner join iO_Product_LoanMDT on RLM_IDLink_XRPu = xrpu_id
              
              )as LoanPurpose on Loanpurpose.RLM_IDLink_RMR = RMR_ID
						
      
       left join tempLSInst on tempLSInst.rlp_idlink_rmr = rmr_id                        
       left join tempPSInst on tempPSInst.RPSD_IDLink_RMR = rmr_id

       left join     
              (select rtm_idlink_rmr,sum(rtm_value) as Received
              from io_product_transaction
              where  rtm_idlink_xtrm in ('{3b78e2bc-412d-4e78-927a-e255975efbfd}'
                                                       ,'{5d21b3ef-7739-4427-85a6-70a1677786f1}' 
                                                       ,'{b426962b-3748-4bbf-9232-92ba164dc785}' 
                                                       ,'{77d7215b-a0ad-495a-86f5-e791f035f335}' 
                                                       ,'{da9c356c-51b7-46e7-b637-22f2c2897a44}' 
                                                       ,'{a8136ec2-6d41-4df2-97e2-a92baa39f139}' 
                                                       ,'{95df5a7c-ba97-45cd-a732-cf9eb4cf4fd0}' 
                                                       ,'{2f97e453-ddcd-49b7-958d-e85460e5c3cf}' 
                                                       ,'{9a77a79c-c8f7-494f-8e9f-48e304dfd652}' 
                                                       ,'{f03763e2-eb24-4ca9-bef2-e525ade90ce8}' 
                                                       ,'{468824e4-f92e-428c-8000-de9d68619d23}' 
                                                       ,'{d685de8f-4009-4968-9fe6-bd63de507376}' 
                                                       ,'{d90943f6-a537-4e04-adc0-7a880260a940}' 
                                                       ,'{369d0352-6702-44dc-86a5-aa1e63d43a28}' 
                                                       ,'{c1b0f505-72bd-4f1d-ac11-f45d77e4bf7d}' 
                                                       ,'{8b80a451-3d1a-4097-81ea-959dd2f0d8f6}' 
                                                       ,'{857a90f4-efa8-4c9f-abbf-19b7057a7b79}' 
                                                       ,'{88d368ae-d2e3-4db4-9880-3de434f3b542}' 
                                                       ,'{dc2c3e2a-1594-4058-b10f-73627855f28a}' 
                                                       ,'{9251d213-46b3-4ffe-a59e-675bc7ed8258}')
                                                       and RTM_TypeGhost= 0
              group by rtm_idlink_rmr
              
              ) as GRecv on GRecv.rtm_idlink_rmr = RMR_ID                   
              
              left join
              (             select rtm_idlink_rmr,sum(rtm_value) as Dishonour
              from io_product_transaction
              where  rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}'
                                                       ,'{1711bd64-942a-456a-b723-e65d3c877a89}'
                                                       ,'{e832ac26-3c19-41aa-871c-a08f9b698d69}'
                                                       ,'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}'
                                                       ,'{f63e5521-cbef-414c-89ed-d6aa29644687}'
                                                       ,'{bfad6a88-cb2f-49ca-9b88-c1f962b81111}')
                                                       and rtm_typeghost = 0
              group by rtm_idlink_rmr) as Dishon on Dishon.rtm_idlink_rmr = RMR_ID 
       left join
              (select RCFe_IDLink_RMR ,isnull(sum(rcfe_value),0) [ApplicationFee]
                     from io_product_controlfee  
                           where [RCFe_IDLink_XTRM] in ('{53df8e13-3cca-4c0d-a682-9015181fa860}','{16d4aab0-b8a1-47f7-9808-f75cd943b6f0}','{7b4ea91e-c309-43f2-b890-5c252be34ae4}' )
                           group by RCFe_IDLink_RMR
              ) as AppFee on AppFee.RCFe_IDLink_RMR = RMR_ID  
       left join
           (select RCB_IDLink_RMR,isnull((rcb_currentValue),0) [CashOutAmt] from iO_Product_ControlBalance
                     where rcb_idlink_xrbl='{fa9b4019-3380-435c-bcdd-40b78d39471e}'
           )  as CashOut on CashOut.RCB_IDLink_RMR = RMR_ID

       left join
              (             select rtm_idlink_rmr,sum(rtm_value) as InsuranceAmt
              from io_product_transaction
              where  rtm_idlink_xtrm in ('{86b90c31-7d4c-407d-ac5e-ab39a83ab88e}',
                                                       '{f1d448c2-d6dd-4e45-bb47-bab3f955d30a}', 
                                                       '{cfaa6035-dc9e-49fd-ba1e-4917282f86a4}', 
                                                       '{b024482a-6f8c-48af-bc0c-7b4ec926db1b}', 
                                                       '{4b133079-a16a-4859-86e5-34b2963bce5e}', 
                                                       '{03f89803-662f-4234-bf8e-b59296b4961f}', 
                                                       '{ebe294bf-5609-4ab7-b904-b1576c2fc836}', 
                                                       '{ce886294-cb63-4892-89ac-1c67d8ad51d6}', 
                                                       '{d271376c-6495-43a6-8d21-1df2784400a5}', 
                                                       '{9bba1416-e284-49b7-9eb8-9338afa9d139}', 
                                                       '{d07f93a7-f98c-42b8-9953-a9a62879035e}', 
                                                       '{10dd208f-f453-4323-af7f-ef3a2a44df86}') 
                                                       and rtm_typeghost = 0
              group by rtm_idlink_rmr) as Insur on Insur.rtm_idlink_rmr = RMR_ID
              
       left join
           (select rcbr_idlink_rmr,isnull(sum(rcbr_value),0) [Brokerage] from io_product_controlbrokerage
                     group by rcbr_idlink_rmr
           )  as Brokerage on Brokerage.rcbr_idlink_rmr = RMR_ID
           
    left join iO_Link_MasterReference as BranchRefLink on BranchRefLink.lmr_idlink_code_id = DSS_IDLink_RMR 
              and BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}' 
       left join io_client_masterreference as CMRBranchRef on CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR 
       left join
       ( select rcfe_idlink_rmr, isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor], XLK_Detail [Category]
              from io_product_controlfee left join io_control_transactionmaster on rcfe_idlink_xtrm = xtrm_id
                     left join io_client_masterreference CMDealer on rcfe_idlink_payable = CMDealer.cmr_id
                     left join io_link_masterreference LM on rcfe_idlink_payable=LM.lmr_idlink_cmr
                     inner join io_control_linkmaster on LM.lmr_idlink_code_id = xlk_id
              where XLK_Detail in('ARMnet\dealer','ARMnet\Private Vendor') and CMDealer.Cmr_Seqnumber is not null
       
       ) as Vendor on Vendor.RCFe_IDLink_RMR = RMR_ID
       left join
       (Select distinct RSC_IDLink_RMR,RSC_TypeOfSecurity, RSC_Make,RSC_Model, RSC_Year,RSC_color, RSC_RegNumber,RSC_VinNumber, RSC_EngineNumber ,XSYSsa_ABBR [RegState],RSC_GlassesValue, RSC_CurrentMarketValue
              From iO_Product_SecurityVEH 
                     Left Join iO_Control_SystemStates On RSC_IDLink_RegState = XSYSsa_ID
              where RSC_Make is not null and RSC_Model is not null and RSC_TypeOfSecurity is not null
         ) as VehicleSecurity on VehicleSecurity.RSC_IDLink_RMR = RMR_ID
         
       left join 
       (SELECT distinct [RPSD_IDLink_RMR] ,xfr_detail [Frequency], RPSD_InterestRate [IntRate] FROM [M3_MAIN].[dbo].[iO_Product_PaymentScheduleDetail]
              inner join iO_Control_Frequency on XFR_ID = RPSD_IDLink_Frequency
              inner join    (SELECT distinct [RPSD_IDLink_RMR] [rmrGuid] ,max(RPSD_SeqNumber)[maxseqno] FROM [M3_MAIN].[dbo].[iO_Product_PaymentScheduleDetail]
                                  inner join iO_Control_Frequency on XFR_ID = RPSD_IDLink_Frequency group by [RPSD_IDLink_RMR]
                           ) as maxseqnum on maxseqnum.[maxseqno] = RPSD_SeqNumber                           
                     group by [RPSD_IDLink_RMR] ,xfr_detail,RPSD_InterestRate ) as Freq on Freq.RPSD_IDLink_RMR = rmr_id
       
       left join
       (Select  RCB_IDLink_RMR, isnull(sum(isnull(RCB_CurrentValue,0)),0) [Arrears]
              From iO_Product_ControlBalance  
                     Left Join iO_Control_ProductBalance on RCB_IDLink_XRBl = XRBl_ID  
              Where XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' group by RCB_IDLink_RMR
       ) as ArrearsBal on ArrearsBal.RCB_IDLink_RMR = RMR_ID
       
       left join
              (select       RTM_IDLink_RMR, COUNT(*) [NumDishon] from iO_Product_Transaction 
                     inner join iO_Control_TransactionMaster on rtm_IDLink_XTRM = XTRM_ID
                     where xtrm_IDUSer in (755104,130096,130132) and rtm_typeghost = 0
                     group by RTM_IDLink_RMR
              ) AS DishnCnt on DishnCnt.RTM_IDLink_RMR = RMR_ID
Where
       (base.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}') and BR.Branch_Name ='Loan Centre')
              

group by
             br.Branch_Name,
             CMRBranchRef.CMR_Name,
             CMR.CMR_SeqNumber,   RMR_SeqNumber,       base.lmr_idlink_code_id,  LDAT.RCD_CurrentStart,PDAT.RCD_CurrentStart,
              XRP_Detail,XSU_Detail,CMR.CMR_Name,xsu_detail,CMRBroker.CMR_Name,AssessorName,vendor.vendor,vehicleSecurity.RSC_TypeOfSecurity,vehicleSecurity.RSC_Make,
              vehicleSecurity.RSC_Model, vehicleSecurity.RSC_Year,vehicleSecurity.RSC_color, vehicleSecurity.RSC_RegNumber,vehicleSecurity.RSC_VinNumber,vehicleSecurity.RSC_EngineNumber,
              VehicleSecurity.RegState , VehicleSecurity.RSC_GlassesValue,VehicleSecurity.RSC_CurrentMarketValue,LoanPurpose.LoanPurpose,CMRBrokerCont.CMR_Name ,iO_Product_LoanMDT.RLM_Term_Month
              ,Freq.intRate,CashOut.cashoutamt,Insur.Insuranceamt,Brokerage.Brokerage,dss_TotalInterest,DSS_MonthlyServiceFee,APP.RCB_CurrentValue,PRIN.RCB_CurrentValue
              ,GRecv.received,Dishon.Dishonour,appfee.ApplicationFee,tempLSInst.Inst_Due,tempPSInst.InstalDue,Frequency,ArrearsBal.Arrears,DishnCnt.NumDishon

--union
--Select distinct
--    BR.Branch_Name as Branch,
--    CMRBranchRef.CMR_Name as 'BranchRefer',
--       CMR.CMR_SeqNumber as ClientNo,
--       RMR_SeqNumber as LoanNo,
--       (select  cmr_name + '; ' from  io_client_masterreference 
--       left join io_link_masterreference on lmr_idlink_cmr = cmr_id
--              where LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}', '{627cb28d-8393-4878-b06f-38747946b792}')
--                     and lmr_idlink_code_id = base.lmr_idlink_code_id FOR XML PATH('')) as PrimaryClient,
--    LDAT.RCD_CurrentStart as LodgeDate,
--    PDAT.RCD_CurrentStart as SettleDate,
--       case when isnull(charindex('\', reverse(XRP_Detail))-1, 0) = -1
--              then XRP_Detail
--              else
--              reverse(left(reverse(XRP_Detail), isnull(charindex('\', reverse(XRP_Detail))-1,0))) end as Prod_Type,
--       case when isnull(charindex('\', reverse(XSU_Detail))-1, 0) = -1
--              then XSU_Detail
--              else
--              reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end as Prod_Status,
--       case 
--              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
--                           IN('Current','Arrears - Special Arrangement','Arrears - Arrears Letter','Arrears - Default',
--                                  'Discharged - Paid in full early discount','Arrears - Hardship','Discharged - Paid in Full',
--                                  'Arrears - Recoveries','Arrears - Hold','Arrears - Payment Plan','Discharged - Negotiated payout',
--                                  'Discharged - Written Off')
--              then 'Settled'

--              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
--                           IN('Application - Application Cancelled','Application - Withdrawn/Cancelled')
--              then 'Cancelled'

--              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0)))
--                           IN('Application - Unsuccessful','Application - Unsuccessful - Reason to be reviewed')
--              then 'Declined'

--              when reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) 
--                           IN('Application - Pre Approved','Application - Application Approved','Application - Awaiting Further Documents',
--                                  'Application - Awaiting Emp/Rental','Application - Application Received','Application - Incomplete Application',
--                                  'Application','Application - Redirect')
--              then 'WIP'
--       else
--              reverse(left(reverse(XSU_Detail), isnull(charindex('\', reverse(XSU_Detail))-1,0))) end as ProdStat2,

--       CMRBroker.CMR_Name as 'Broker',
--       CMRBrokerCont.CMR_Name as 'Broker Contact',
--       AssessorName,
--       vendor.Vendor as 'Vendor',
--       vehicleSecurity.RSC_TypeOfSecurity as 'Security',
--       vehicleSecurity.RSC_Make as 'Make', 
--       vehicleSecurity.RSC_Model as 'Model',
--       vehicleSecurity.RSC_Year as 'Year',
--       vehicleSecurity.RSC_color as 'Colour',
--       vehicleSecurity.RSC_RegNumber as 'Rego',
--       vehicleSecurity.RSC_VinNumber as 'VinNum',
--       vehicleSecurity.RSC_EngineNumber as 'EngNum',
--       vehicleSecurity.RegState as 'Reg State',
--       vehicleSecurity.RSC_GlassesValue as 'GlassesValue',
--       vehicleSecurity.RSC_CurrentMarketValue as 'PurchaseValue',
--       LoanPurpose.LoanPurpose as 'LoanPurpose',
--       iO_Product_LoanMDT.RLM_Term_Month as 'Term',
--       Freq.intRate as 'IntRate',
--       cast(isnull(APP.RCB_CurrentValue,0)as Money) as 'Applied For',
--       cast(isnull(CashOut.cashoutamt,0)as Money) as 'Cash Out',
--       cast(isnull(Insur.Insuranceamt,0)as Money) as 'Insurance',
--       cast(isnull(appfee.ApplicationFee,0)as Money) as 'Application Fee',
--       cast(isnull(brokerage.brokerage,0)as Money) as 'Brokerage',
--       cast(isnull(dss_TotalInterest,0)as Money) as 'TotalInterest',
--       cast(isnull(DSS_MonthlyServiceFee,0)as Money) as 'Mthly Serv Fee',
--       cast(isnull(PRIN.RCB_CurrentValue,0)as Money) as 'Balance',
--       cast(isnull(GRecv.received,0) as money) as 'Received',
--       cast(isnull(-Dishon.Dishonour,0)as money) as 'Dishonoured',
--       cast(isnull(GRecv.received,0) as money)- cast(ISNULL(Dishon.Dishonour,0) as money) as 'Net Received'
--       ,Freq.Frequency
--    	,case  when tempLSInst.Inst_Due is null then tempPSInst.InstalDue 
--				when convert(float, tempLSInst.Inst_Due, 0) = 0 then tempPSInst.InstalDue 
--				when tempPSInst.InstalDue is null then tempLSInst.Inst_Due
--		end as Inst_Due
--       ,ArrearsBal.Arrears  ,DishnCnt.NumDishon
--       ,convert(varchar(4),LDAT.RCD_CurrentStart,100)  + convert(varchar(4),year(LDAT.RCD_CurrentStart))as LodgeMonth
--       ,convert(varchar(4),PDAT.RCD_CurrentStart,100)  + convert(varchar(4),year(PDAT.RCD_CurrentStart))as SettleMonth

--From
--        iO_Link_MasterReference base
--        left join iO_Product_MasterReference on RMR_ID = base.LMR_IDLink_Code_ID
--        left join io_Control_ProductMaster on RMR_IDLink_XRP = XRP_ID
--        left join iO_Control_LinkMaster on XLK_ID = base.LMR_IDLink_Association
--        left join iO_Control_StatusMaster on XSU_ID = RMR_IDLink_XSU
--        left join iO_Link_MasterReference primaryClient on primaryClient.LMR_IDLink_Code_ID = base.LMR_IDLink_Code_ID 
--                and primaryClient.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}') 
              
--        left join iO_Link_MasterReference as BrokerLink on BrokerLink.lmr_idlink_code_id = iO_Product_MasterReference.rmr_id
--        and brokerLink.LMR_IDLink_Association = '{69783579-9e83-4e82-bb25-7b3d52b0f99d}'
--        left join io_client_masterreference as CMRBroker on CMRBroker.cmr_id = BrokerLink.LMR_IDLink_CMR

--        left join iO_Link_MasterReference as BrokerConLink on BrokerConLink.lmr_idlink_code_id = iO_Product_MasterReference.rmr_id
--        and BrokerConLink.LMR_IDLink_Association = '{14b7c3da-56b4-4c5e-8889-0af2df0a61d3}'
--        left join io_client_masterreference as CMRBrokerCont on CMRBrokerCont.cmr_id = BrokerConLink.LMR_IDLink_CMR

--        left join iO_Client_MasterReference CMR on CMR.CMR_ID = primaryClient.LMR_IDLink_CMR and CMR.CMR_ID = base.LMR_IDLink_CMR
--        left join iO_Product_ControlBalance APP on APP.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID 
--        and APP.RCB_IDLink_XRBl = '{f6e26460-bf66-40fd-9bb2-112ebc2f2b07}'
--        left join iO_Product_ControlBalance PRIN on PRIN.RCB_IDLink_RMR = base.LMR_IDLink_Code_ID 
--                and PRIN.RCB_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' 

--        left join iO_Product_ControlDate PDAT on PDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID 
--                and PDAT.RCD_Type = 6 
--        left join iO_Product_ControlDate LDAT on LDAT.RCD_IDLink_RMR = base.LMR_IDLink_Code_ID 
--                and LDAT.RCD_Type = 106 
--        left join iO_DataStorage_SalesReport on dss_idlink_rmr = base.LMR_IDLink_Code_ID
--        left JOIN
--        (
--                SELECT iO_Link_MasterReference.LMR_IDLink_Code_ID,
--                        iO_Client_MasterReference_1.CMR_Name AS Branch_Name
                           
--                FROM iO_Link_MasterReference 
--                        LEFT JOIN iO_Client_MasterReference 
--                                    ON iO_Link_MasterReference.LMR_IDLink_CMR = iO_Client_MasterReference.CMR_ID

--                        LEFT JOIN iO_Client_MasterReference AS iO_Client_MasterReference_1 
--                                    ON iO_Link_MasterReference.LMR_IDLink_cmr = iO_Client_MasterReference_1.CMR_ID
                                                
--                WHERE iO_Link_MasterReference.LMR_IDLink_Association='{b55145aa-2697-43b5-9c6a-c4a0960823d8}'
--        )AS br on BR.LMR_IDLink_Code_ID = RMR_ID

--        LEFT JOIN
--                (Select       LoanNum = PMAssess.rmr_seqnumber,  AssessorName = CMAssess.CMR_Name, LMassess.lmr_id
--                From
--                            iO_Link_MasterReference LMassess
--                                    LEFT JOIN iO_Control_LinkMaster ON XLK_ID = LMassess.LMR_IDLink_Association
--                                    LEFT JOIN iO_Client_MasterReference CMAssess ON CMAssess.CMR_ID = LMassess.LMR_IDLink_CMR
--                                    LEFT JOIN iO_Product_MasterReference PMAssess ON PMAssess.RMR_ID = LMassess.LMR_IDLink_Code_ID
--                                    LEFT JOIN iO_Client_MasterReference CM ON CM.CMR_ID = LMassess.LMR_IDLink_Code_ID
--                Where
--                    XLK_Detail = 'Loan\Assessor'
                     
--                ) as Assess on assess.loannum = RMR_SeqNumber

--       LEFT JOIN M3_MAIN.dbo.iO_Product_LoanMDT iO_Product_LoanMDT ON iO_Product_MasterReference.RMR_ID = iO_Product_LoanMDT.RLM_IDLink_RMR --getting the Period Term
--       left join
--              (select rlm_idlink_rmr ,XRPu_Detail [LoanPurpose]
--                     From iO_Control_ProductPurpose    inner join iO_Product_LoanMDT on RLM_IDLink_XRPu = xrpu_id
              
--              )as LoanPurpose on Loanpurpose.RLM_IDLink_RMR = RMR_ID
						
      
--       left join tempLSInst on tempLSInst.rlp_idlink_rmr = rmr_id                        
--       left join tempPSInst on tempPSInst.RPSD_IDLink_RMR = rmr_id

--       left join     
--              (select rtm_idlink_rmr,sum(rtm_value) as Received
--              from io_product_transaction
--              where  rtm_idlink_xtrm in ('{3b78e2bc-412d-4e78-927a-e255975efbfd}'
--                                                       ,'{5d21b3ef-7739-4427-85a6-70a1677786f1}' 
--                                                       ,'{b426962b-3748-4bbf-9232-92ba164dc785}' 
--                                                       ,'{77d7215b-a0ad-495a-86f5-e791f035f335}' 
--                                                       ,'{da9c356c-51b7-46e7-b637-22f2c2897a44}' 
--                                                       ,'{a8136ec2-6d41-4df2-97e2-a92baa39f139}' 
--                                                       ,'{95df5a7c-ba97-45cd-a732-cf9eb4cf4fd0}' 
--                                                       ,'{2f97e453-ddcd-49b7-958d-e85460e5c3cf}' 
--                                                       ,'{9a77a79c-c8f7-494f-8e9f-48e304dfd652}' 
--                                                       ,'{f03763e2-eb24-4ca9-bef2-e525ade90ce8}' 
--                                                       ,'{468824e4-f92e-428c-8000-de9d68619d23}' 
--                                                       ,'{d685de8f-4009-4968-9fe6-bd63de507376}' 
--                                                       ,'{d90943f6-a537-4e04-adc0-7a880260a940}' 
--                                                       ,'{369d0352-6702-44dc-86a5-aa1e63d43a28}' 
--                                                       ,'{c1b0f505-72bd-4f1d-ac11-f45d77e4bf7d}' 
--                                                       ,'{8b80a451-3d1a-4097-81ea-959dd2f0d8f6}' 
--                                                       ,'{857a90f4-efa8-4c9f-abbf-19b7057a7b79}' 
--                                                       ,'{88d368ae-d2e3-4db4-9880-3de434f3b542}' 
--                                                       ,'{dc2c3e2a-1594-4058-b10f-73627855f28a}' 
--                                                       ,'{9251d213-46b3-4ffe-a59e-675bc7ed8258}')
--                                                       and RTM_TypeGhost= 0
--              group by rtm_idlink_rmr
              
--              ) as GRecv on GRecv.rtm_idlink_rmr = RMR_ID                   
              
--              left join
--              (             select rtm_idlink_rmr,sum(rtm_value) as Dishonour
--              from io_product_transaction
--              where  rtm_idlink_xtrm in ('{1d80d541-cd59-4e75-90d5-6c48e9c326ca}'
--                                                       ,'{1711bd64-942a-456a-b723-e65d3c877a89}'
--                                                       ,'{e832ac26-3c19-41aa-871c-a08f9b698d69}'
--                                                       ,'{244d60d7-2cef-4e24-8a7d-02c9cab998d1}'
--                                                       ,'{f63e5521-cbef-414c-89ed-d6aa29644687}'
--                                                       ,'{bfad6a88-cb2f-49ca-9b88-c1f962b81111}')
--                                                       and rtm_typeghost = 0
--              group by rtm_idlink_rmr) as Dishon on Dishon.rtm_idlink_rmr = RMR_ID 
--       left join
--              (select RCFe_IDLink_RMR ,isnull(sum(rcfe_value),0) [ApplicationFee]
--                     from io_product_controlfee  
--                           where [RCFe_IDLink_XTRM] in ('{53df8e13-3cca-4c0d-a682-9015181fa860}','{16d4aab0-b8a1-47f7-9808-f75cd943b6f0}','{7b4ea91e-c309-43f2-b890-5c252be34ae4}' )
--                           group by RCFe_IDLink_RMR
--              ) as AppFee on AppFee.RCFe_IDLink_RMR = RMR_ID  
--       left join
--           (select RCB_IDLink_RMR,isnull((rcb_currentValue),0) [CashOutAmt] from iO_Product_ControlBalance
--                     where rcb_idlink_xrbl='{fa9b4019-3380-435c-bcdd-40b78d39471e}'
--           )  as CashOut on CashOut.RCB_IDLink_RMR = RMR_ID

--       left join
--              (             select rtm_idlink_rmr,sum(rtm_value) as InsuranceAmt
--              from io_product_transaction
--              where  rtm_idlink_xtrm in ('{86b90c31-7d4c-407d-ac5e-ab39a83ab88e}',
--                                                       '{f1d448c2-d6dd-4e45-bb47-bab3f955d30a}', 
--                                                       '{cfaa6035-dc9e-49fd-ba1e-4917282f86a4}', 
--                                                       '{b024482a-6f8c-48af-bc0c-7b4ec926db1b}', 
--                                                       '{4b133079-a16a-4859-86e5-34b2963bce5e}', 
--                                                       '{03f89803-662f-4234-bf8e-b59296b4961f}', 
--                                                       '{ebe294bf-5609-4ab7-b904-b1576c2fc836}', 
--                                                       '{ce886294-cb63-4892-89ac-1c67d8ad51d6}', 
--                                                       '{d271376c-6495-43a6-8d21-1df2784400a5}', 
--                                                       '{9bba1416-e284-49b7-9eb8-9338afa9d139}', 
--                                                       '{d07f93a7-f98c-42b8-9953-a9a62879035e}', 
--                                                       '{10dd208f-f453-4323-af7f-ef3a2a44df86}') 
--                                                       and rtm_typeghost = 0
--              group by rtm_idlink_rmr) as Insur on Insur.rtm_idlink_rmr = RMR_ID
              
--       left join
--           (select rcbr_idlink_rmr,isnull(sum(rcbr_value),0) [Brokerage] from io_product_controlbrokerage
--                     group by rcbr_idlink_rmr
--           )  as Brokerage on Brokerage.rcbr_idlink_rmr = RMR_ID
           
--    left join iO_Link_MasterReference as BranchRefLink on BranchRefLink.lmr_idlink_code_id = DSS_IDLink_RMR 
--              and BranchRefLink.LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}' 
--       left join io_client_masterreference as CMRBranchRef on CMRBranchRef.cmr_id = BranchRefLink.LMR_IDLink_CMR 
--       left join
--       ( select rcfe_idlink_rmr, isnull(CMDealer.cmr_name, rcfe_clientname) [Vendor], XLK_Detail [Category]
--              from io_product_controlfee left join io_control_transactionmaster on rcfe_idlink_xtrm = xtrm_id
--                     left join io_client_masterreference CMDealer on rcfe_idlink_payable = CMDealer.cmr_id
--                     left join io_link_masterreference LM on rcfe_idlink_payable=LM.lmr_idlink_cmr
--                     inner join io_control_linkmaster on LM.lmr_idlink_code_id = xlk_id
--              where XLK_Detail in('ARMnet\dealer','ARMnet\Private Vendor') and CMDealer.Cmr_Seqnumber is not null
       
--       ) as Vendor on Vendor.RCFe_IDLink_RMR = RMR_ID
--       left join
--       (Select distinct RSC_IDLink_RMR,RSC_TypeOfSecurity, RSC_Make,RSC_Model, RSC_Year,RSC_color, RSC_RegNumber,RSC_VinNumber, RSC_EngineNumber ,XSYSsa_ABBR [RegState],RSC_GlassesValue, RSC_CurrentMarketValue
--              From iO_Product_SecurityVEH 
--                     Left Join iO_Control_SystemStates On RSC_IDLink_RegState = XSYSsa_ID
--              where RSC_Make is not null and RSC_Model is not null and RSC_TypeOfSecurity is not null
--         ) as VehicleSecurity on VehicleSecurity.RSC_IDLink_RMR = RMR_ID
         
--       left join 
--       (SELECT distinct [RPSD_IDLink_RMR] ,xfr_detail [Frequency], RPSD_InterestRate [IntRate] FROM [M3_MAIN].[dbo].[iO_Product_PaymentScheduleDetail]
--              inner join iO_Control_Frequency on XFR_ID = RPSD_IDLink_Frequency
--              inner join    (SELECT distinct [RPSD_IDLink_RMR] [rmrGuid] ,max(RPSD_SeqNumber)[maxseqno] FROM [M3_MAIN].[dbo].[iO_Product_PaymentScheduleDetail]
--                                  inner join iO_Control_Frequency on XFR_ID = RPSD_IDLink_Frequency group by [RPSD_IDLink_RMR]
--                           ) as maxseqnum on maxseqnum.[maxseqno] = RPSD_SeqNumber                           
--                     group by [RPSD_IDLink_RMR] ,xfr_detail,RPSD_InterestRate ) as Freq on Freq.RPSD_IDLink_RMR = rmr_id
       
--       left join
--       (Select  RCB_IDLink_RMR, isnull(sum(isnull(RCB_CurrentValue,0)),0) [Arrears]
--              From iO_Product_ControlBalance  
--                     Left Join iO_Control_ProductBalance on RCB_IDLink_XRBl = XRBl_ID  
--              Where XRBl_ID = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' group by RCB_IDLink_RMR
--       ) as ArrearsBal on ArrearsBal.RCB_IDLink_RMR = RMR_ID
       
--       left join
--              (select       RTM_IDLink_RMR, COUNT(*) [NumDishon] from iO_Product_Transaction 
--                     inner join iO_Control_TransactionMaster on rtm_IDLink_XTRM = XTRM_ID
--                     where xtrm_IDUSer in (755104,130096,130132) and rtm_typeghost = 0
--                     group by RTM_IDLink_RMR
--              ) AS DishnCnt on DishnCnt.RTM_IDLink_RMR = RMR_ID
--Where
--       (base.LMR_IDLink_Association in ('{146afcaa-059b-469e-a000-0103e84144dc}') and CMRBranchRef.CMR_Name = 'Loan Centre')
              

--group by
--             br.Branch_Name,
--             CMRBranchRef.CMR_Name,
--             CMR.CMR_SeqNumber,   RMR_SeqNumber,       base.lmr_idlink_code_id,  LDAT.RCD_CurrentStart,PDAT.RCD_CurrentStart,
--              XRP_Detail,XSU_Detail,CMR.CMR_Name,xsu_detail,CMRBroker.CMR_Name,AssessorName,vendor.vendor,vehicleSecurity.RSC_TypeOfSecurity,vehicleSecurity.RSC_Make,
--              vehicleSecurity.RSC_Model, vehicleSecurity.RSC_Year,vehicleSecurity.RSC_color, vehicleSecurity.RSC_RegNumber,vehicleSecurity.RSC_VinNumber,vehicleSecurity.RSC_EngineNumber,
--              VehicleSecurity.RegState , VehicleSecurity.RSC_GlassesValue,VehicleSecurity.RSC_CurrentMarketValue,LoanPurpose.LoanPurpose,CMRBrokerCont.CMR_Name ,iO_Product_LoanMDT.RLM_Term_Month
--              ,Freq.intRate,CashOut.cashoutamt,Insur.Insuranceamt,Brokerage.Brokerage,dss_TotalInterest,DSS_MonthlyServiceFee,APP.RCB_CurrentValue,PRIN.RCB_CurrentValue
--              ,GRecv.received,Dishon.Dishonour,appfee.ApplicationFee,tempLSInst.Inst_Due,tempPSInst.InstalDue,Frequency,ArrearsBal.Arrears,DishnCnt.NumDishon


--select * from tempPSInst where RPSD_IDLink_RMR in (Select rmr_id from iO_Product_MasterReference where rmr_seqnumber =1096)

--select * from  tempLSInst where rlp_idlink_rmr in (Select rmr_id from iO_Product_MasterReference where rmr_seqnumber =1096);



END

GO
