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
CREATE FUNCTION [dbo].[GetNoOfLACCS] 
(
	-- Add the parameters for the function here
	@loanseq varchar(40),
	@settledate date

)
RETURNS varchar(10)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(10)


set @Result = 
(select count(*) from iO_Link_MasterReference lmr with (nolock) inner join iO_Product_MasterReference rmr with (nolock) on lmr.LMR_IDLink_Code_ID = rmr.RMR_ID inner join iO_Product_ControlDate rcd with (nolock) on lmr.lmr_idlink_code_id = rcd.RCD_IDLink_RMR where LMR_IDLink_CMR 
in (select LMR_IDLink_CMR from iO_Link_MasterReference with (nolock) where lmr_idlink_code_id = (select rmr_id from io_product_masterreference with (nolock) where rmr_seqnumber = @loanseq) and LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' )and LMR_IDLink_Association = '{146afcaa-059b-469e-a000-0103e84144dc}' and rmr.RMR_IDLink_xrp = '{08bb93c4-e84d-4ad2-aca7-8479ec79e54e}' 
and RCD_Type = 6 and rcd.RCD_CurrentStart < @settledate)

return @Result

END









GO
