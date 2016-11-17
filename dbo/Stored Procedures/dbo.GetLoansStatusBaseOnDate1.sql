SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROCEDURE [dbo].[GetLoansStatusBaseOnDate1]
	@startdate1 datetime  = null,  
	@enddate1 datetime = null
AS
if @startdate1 is null set @startdate1 = GETDATE();
if @enddate1 is null set @enddate1 = GETDATE();
with loans as(
select lmr_idlink_code_id as [pid] from iO_Link_MasterReference where LMR_IDLink_CMR = '{f8a07c55-9002-41cf-b98f-b8ca3637da31}' and LMR_IDLink_Association = '{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}'
),
receceivedloasn as(
select rcd.RCD_IDLink_RMR as [LoanID], rcd_currentstart as [LoanReceivedDate] from iO_Product_ControlDate rcd inner join loans on loans.[pid]=rcd.rcd_idlink_rmr where rcd.rcd_type = 106
)
select REPLACE(xsu_detail,'Money3\','') as [Loan Status], 
sum(count(*)) over (partition by xsu_detail) as [Total by Loan Status], 
sum(count(*))  over () as [Total Loans] from iO_Product_MasterReference prods  inner join receceivedloasn on prods.RMR_ID = receceivedloasn.[LoanID] inner join io_control_statusmaster st on st.XSU_ID  = prods.RMR_IDLink_XSU where [LoanReceivedDate] between @startdate1 and @enddate1 group by xsu_detail


GO
