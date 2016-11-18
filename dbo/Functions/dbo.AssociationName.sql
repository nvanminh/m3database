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
CREATE FUNCTION [dbo].[AssociationName] 
(
	-- Add the parameters for the function here
	@FacilityID varchar(40),
	@AssocID varchar(40),
	@DisplayStyle int,
	@Delimeter varchar(max)

)
RETURNS varchar(max)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result varchar(max)


set @Result = ''

if (@DisplayStyle = 0)
begin
set @Result = 
(
	Select
	dbo.XMLWordReplace(CASE CMR_IDLink_XCY
			WHEN '{05b3d1e5-dbf5-428e-a462-39c98b55d693}'  THEN CTC_CompanyName
			WHEN '{240dc8ad-a1d8-4a4a-8240-2ec77bb25f74}'  THEN CTC_CompanyName
			ELSE CASE ISNULL(CTI_IDLink_XCT,'')
					WHEN '' THEN CTI_FirstName + ' ' + CTI_Surname
					ELSE (Select XCTi_Detail From io_Control_ClientTitle Where CTI_IDLink_XCT = XCTi_ID) + ' ' + CTI_FirstName + ' ' + CTI_Surname
				 END
		END )+ @Delimeter
	FROM io_Client_MasterReference 
		Left Join io_Client_TypeIndividual ON CMR_ID = CTI_IDLink_CMR
		Left Join io_Client_TypeCompany ON CMR_ID = CTC_IDLink_CMR
		Inner Join iO_Link_MasterReference ON LMR_IDLink_CMR = CMR_ID
		inner join io_product_masterreference on LMR_IDLink_Code_ID = rmr_id
	WHERE  
		LMR_IDLink_Association = @AssocID 
		AND 
		LMR_IDLink_Code_ID = @FacilityID
	FOR XML PATH ('') 
)
end
else if (@DisplayStyle = 1)
begin
set @Result = 
(
	Select
	dbo.XMLWordReplace(CASE CMR_IDLink_XCY
			WHEN '{05b3d1e5-dbf5-428e-a462-39c98b55d693}'  THEN CTC_CompanyName
			WHEN '{240dc8ad-a1d8-4a4a-8240-2ec77bb25f74}'  THEN CTC_CompanyName
			ELSE CTI_Surname + ', ' + CTI_FirstName
	END )+ @Delimeter
	FROM io_Client_MasterReference 
		Left Join io_Client_TypeIndividual ON CMR_ID = CTI_IDLink_CMR
		Left Join io_Client_TypeCompany ON CMR_ID = CTC_IDLink_CMR
		Inner Join iO_Link_MasterReference ON LMR_IDLink_CMR = CMR_ID
		inner join io_product_masterreference on LMR_IDLink_Code_ID = rmr_id
	WHERE  
		LMR_IDLink_Association = @AssocID 
		AND 
		LMR_IDLink_Code_ID = @FacilityID
	FOR XML PATH ('') 
)
end
else if (@DisplayStyle = 2)
begin
set @Result = 
(
	Select
	dbo.XMLWordReplace(cmr_name) + @Delimeter
	FROM io_Client_MasterReference 
		inner join iO_Link_MasterReference on cmr_id = LMR_IDLink_CMR
	WHERE  
		LMR_IDLink_Association = @AssocID AND 
		LMR_IDLink_Code_ID = @FacilityID
	FOR XML PATH ('')
)
end


	-- Return the result of the function
	RETURN LEFT(@Result, Len(@Result)-Len(@Delimeter))

END

GO
