SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE FUNCTION [dbo].[GetNoOfPayment]
    (
      @loanid INT 
    )
RETURNS float
as
BEGIN
declare @result int 
set @result = 0 
select @result = 
(select
	count(isnull(rpsd.rpsd_id,0))
from
	io_product_paymentscheduledetail rpsd
where
	rpsd_idlink_rmr = (select rmr_id from io_product_masterreference where rmr_seqnumber = @loanid))
	

return @result
END



GO
