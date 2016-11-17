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
CREATE FUNCTION [dbo].[GetNoOfDishonorLastMonth] 
(
	-- Add the parameters for the function here
	@loanid int

)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(10)


set @Result = 
(select count(*) from io_product_transaction where rtm_idlink_xtrm = '{e832ac26-3c19-41aa-871c-a08f9b698d69}' and rtm_idlink_rmr = (select rmr_id from io_product_masterreference where rmr_seqnumber =@loanid ) and rtm_datee between  DATEADD(month, -1, getdate()) and GETDATE())

return @Result

END













GO
