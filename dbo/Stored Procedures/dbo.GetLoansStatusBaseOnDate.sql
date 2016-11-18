SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[GetLoansStatusBaseOnDate]
	@startdate datetime  = null,  
	@enddate datetime = null
AS
if @startdate is null set @startdate = GETDATE(); --//Testing Synchronization
if @enddate is null set @enddate = GETDATE();
with loans as(
select lmr_idlink_code_id as [pid] from iO_Link_MasterReference where LMR_IDLink_CMR = '{5b277056-d65c-4296-a72d-237ab4b834bf}' and LMR_IDLink_Association = '{e7c16435-e664-43b3-ba0e-4a4adeb8b56f}'
),
receceivedloasn as(
select rcd.RCD_IDLink_RMR as [LoanID], rcd_currentstart as [LoanReceivedDate] from iO_Product_ControlDate rcd inner join loans on loans.[pid]=rcd.rcd_idlink_rmr where rcd.rcd_type = 106
)
select REPLACE(xsu_detail,'Money3\','') as [Loan Status], 
sum(count(*)) over (partition by xsu_detail) as [Total by Loan Status], 
sum(count(*))  over () as [Total Loans] from iO_Product_MasterReference prods  inner join receceivedloasn on prods.RMR_ID = receceivedloasn.[LoanID] inner join io_control_statusmaster st on st.XSU_ID  = prods.RMR_IDLink_XSU where convert(date,[LoanReceivedDate],103) >= convert(date,@startdate,103) and convert(date,[LoanReceivedDate],103) <= convert(date,@enddate,103) group by xsu_detail

GO
