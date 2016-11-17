-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetArrearsBalance]
(
	-- Add the parameters for the function here
	@accountID varchar(40)
)
RETURNS float
AS
BEGIN

declare @Result float
	-- Declare the return variable here


DECLARE @TranRank 
	table 
	(
		rank int IDENTITY primary key ,
		Tran_Account_GUID VARCHAR(40),
		Tran_Guid varChar(40) COLLATE SQL_Latin1_General_CP1_CI_AS,
		Tran_Type int,
		Tran_Text varchar(200),
		Tran_Date datetime,
		Tran_Proc datetime,
		Tran_Prin decimal(18,2),
		Tran_Sched decimal(18,2),
		Tran_MPA decimal(18,2),
		Tran_OLim decimal(18,2),
		Tran_Prin_Total decimal(18,2),
		Tran_Sched_Total decimal(18,2),
		Tran_MPA_Total decimal(18,2),
		Tran_OLim_Total decimal(18,2),
		Tran_Note Text,
		Tran_ValueDB decimal(18,2),
		Tran_ValueCR decimal(18,2),
		Tran_PrinFlag bit,
		Tran_SchedFlag bit,
		Tran_MPAFlag bit,
		Tran_SeqNo bigint,
		Tran_Ghost bit,
		Tran_Color bigint,
		Tran_XTRM varchar(40),
		Tran_XTRMb varchar(40),
		Tran_Till varchar(40),
		Tran_IsCashPayment bit
    )           

-- Insert Account Data                
insert into @TranRank(Tran_Guid, Tran_Date, Tran_Proc, Tran_Account_Guid, Tran_Prin, Tran_MPA, Tran_Type, Tran_Text,Tran_ValueDB,Tran_ValueCR,Tran_SeqNo,Tran_Ghost,Tran_Color,Tran_XTRM,
Tran_Note,Tran_Till,Tran_IsCashPayment)
select  	
	RTM_ID,
	RTM_Datee,
	RTM_DateC,
	RTM_IDLink_RMR,
	0,
	0,
	xtrm_IDUSer,
	xtrm_IDText,
	isnull(rtm_valuedb,0),
	isnull(rtm_valuecr,0),
	rtm_seqnumber,
	rtm_typeghost,
	xtrm_color,
	XTRM_ID,
	--case xtrm_iduser
		--when -4000 then rtm_note
		--else
			--case
			--	when isnull(xtrm_iduser, 0) = 0 then rtm_note
			--	else xtrm_idtext
			--end
	--end,
	rtm_note,
	rtm_idlink_till,
	0
from 
	iO_Product_Transaction RTMTemp
		inner join iO_Control_TransactionMaster on XTRM_ID = RTM_IDLink_XTRM
where 
	rtmtemp.rtm_idlink_rmr =  @accountID
order by
	RTMTemp.RTM_DateE, RTMTemp.RTM_DateC, rtm_SeqNumber

-- Set Principal Flag
update 
	@TranRank
set 
	Tran_XTRMb = XTRMb_IDLink_XRBl
from 
	@TranRank
		inner join iO_Control_TransactionBalance on XTRMb_IDLink_XTRM = Tran_XTRM 
where
	XTRMb_IDLink_XRBl = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' /* '@IDControlBalance(117)' */

-- Principal Balance
update 
	@TranRank
set 
	Tran_Prin = isnull(Tran_ValueDB,0) - isnull(Tran_ValueCR,0)
from 
	@TranRank
where
	Tran_XTRMb = '{cf421ec7-af23-474c-9f8f-46e6b899075f}' /* '@IDControlBalance(117)' */



-- Set Arrears Flag
update 
	@TranRank
set 
	Tran_XTRMb = XTRMb_IDLink_XRBl
from 
	@TranRank
		inner join iO_Control_TransactionBalance on XTRMb_IDLink_XTRM = Tran_XTRM 
where
	XTRMb_IDLink_XRBl = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' /* '@IDControlBalance(109)' */

-- Arrears Balance
update 
	@TranRank
set 
	Tran_MPA =  isnull(Tran_ValueDB,0) - isnull(Tran_ValueCR,0)
from 
	@TranRank
where
	Tran_XTRMb = '{b1f3d85e-c51f-4160-9ee5-933fca427dee}' /* '@IDControlBalance(109)' */
		

-- Generate running total
-- Principal
update @tranrank 
		set 
		Tran_Prin_Total = 
		(
			select sum(Tran_Prin)
			from @tranrank b
			where b.rank <= a.rank
		)
from 
	@tranrank a

--update arrears balanace < 0 
update t
set t.Tran_MPA = 0
from @tranrank t join iO_Product_Transaction on RTM_ID = t.Tran_Guid join iO_Link_MasterReference lmr 
on RTM_IDLink_RMR = LMR_IDLink_Code_ID and LMR_IDLink_Association in ('{7e504c4d-821c-4623-a928-28ee65c3b8c8}','{b55145aa-2697-43b5-9c6a-c4a0960823d8}','{5b3468c2-78d3-450d-bfe3-52c15a6a1d0c}') 
where Tran_MPA < 0 and LMR_IDLink_CMR  in ('{cf65e2fb-5964-491a-9511-ca361149ebb2}')
	
	-- Arrears
update @tranrank 
		set 
		Tran_MPA_Total = case
		when 
		(
		select sum(Tran_MPA)
			from @tranrank b
			where b.rank <= a.rank
		) < 0 then 0
		when 
		(
			select sum(Tran_MPA)
			from @tranrank b
			where b.rank <= a.rank
		) > Tran_Prin_Total then Tran_Prin_Total
		else
		(
			select sum(Tran_MPA)
			from @tranrank b
			where b.rank <= a.rank
		)
		end
from 
	@tranrank a
	
update @TranRank
	set Tran_IsCashPayment = 1
	from @TranRank
	inner join io_product_transaction
	on Tran_Guid = rtm_ID
	inner join io_control_transactionclassification
	on xtrmcl_idlink_xtrm = RTM_IDLink_XTRM
	and XTRMcl_IDLink_XLK = '{8083b094-45ca-4dad-88b0-a8a0c483a347}'


-- Return Data
set @Result = (
select	
	top 1 
	Tran_MPA_Total [Arrears]	
from 
	@TranRank 

where (tran_ghost <> 1 or tran_ghost is null)
order by 
	Tran_Date DESC, Tran_Proc DESC, Tran_SeqNo DESC
	)
return @result
END


GO
