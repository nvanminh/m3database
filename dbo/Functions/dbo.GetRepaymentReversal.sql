SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO





CREATE FUNCTION [dbo].[GetRepaymentReversal]
    (
      @loanid float 
    )
RETURNS float
as
BEGIN
declare @result float 
set @result = 0 
select @result = 
(select sum(isnull(rtm_value,0)) 
from io_product_transaction 
where rtm_idlink_rmr = (select rmr_id from iO_Product_MasterReference where RMR_SeqNumber =  @loanid)
and rtm_idlink_xtrm in ('{d96fdc0b-ea82-46c3-9982-0bc4f155935c}'))

return isnull(@result,0)
END





GO
