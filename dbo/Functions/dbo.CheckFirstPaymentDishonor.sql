-- =============================================
-- Author:		Axcess Consulting
-- Create date: 18/02/2008
-- Description:	Returns all client names based on facility association and display style
--
-- PARAMETERS:
-- @FacilityID = facility id (GUID)
-- @AssocID = Association ID (GUID)
-- @DisplayStyle = display style, options below
--		0 = Mr John Citizen
--		1 = Citizen, John
--		2 = Citizen John (this is taken from io_client_masterreference.CMR_Name)
-- @Delimeter = value used between names if more than one is returned
--
-- RETURNS:
-- Text of names, separated by Delimeter of specified facility association, in the specified style.
-- Company name will always be retuned if assoication is of a compay related class
-- =============================================
CREATE FUNCTION [dbo].[CheckFirstPaymentDishonor] 
(
	-- Add the parameters for the function here
	@loanseq varchar(40)

)
RETURNS varchar(10)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(10)


set @Result = 
(select top 1 
case 
when RPSD_IDLink_Dishonour is null then 'No'
when RPSD_IDLink_Dishonour is not null then 'Yes'
end as '1st Payment Dishonour'
from iO_Product_PaymentScheduleDetail with (nolock) where rpsd_idlink_rmr = (select rmr_id from iO_Product_MasterReference with (nolock) where rmr_seqnumber = @loanseq)  order by rpsd_paymentduedate asc)

return @Result

END






GO
