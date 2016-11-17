SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO









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
CREATE FUNCTION [dbo].[GetStaffAssociatedBranch] 
(
	-- Add the parameters for the function here
	@StaffName varchar(40)

)
RETURNS varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)


set @Result = (select cmr_name from io_client_masterreference cmr inner join io_link_masterreference lmr on cmr.cmr_id = lmr.lmr_idlink_code_id where lmr.lmr_idlink_cmr  = (select cmr_id from io_client_masterreference cmr inner join io_link_masterreference lmr on cmr.cmr_id = lmr.lmr_idlink_cmr where cmr_name = @StaffName  and lmr.lmr_idlink_association = '{b351c3ab-033e-4a4a-9bc7-8bc5a63a837c}') and lmr.lmr_idlink_association =  '{b351c3ab-033e-4a4a-9bc7-8bc5a63a837c}')

return @Result

END





GO
