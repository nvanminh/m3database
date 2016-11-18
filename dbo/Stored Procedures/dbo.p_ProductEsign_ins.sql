SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_ProductEsign_ins]
    @FirstName			varchar(255),
    @LastName			varchar(255),
    @DOB				datetime,
    @IPAddress			varchar(50),
    @SignDateTime		datetime,
    @RMR_ID				nvarchar(50),
    @Ownership			nvarchar(50),
    @ContractVersion	nvarchar(40),
    @CMR_ID				varchar(40),
    @Redraw_ID			varchar(40),
    @New_RES_ID			varchar(40) NULL OUTPUT
AS
BEGIN
    DECLARE @New_ID varchar(40) = '{' + LOWER(NEWID()) + '}';

    INSERT INTO [WebPortal].[ProductESign]
        ([RES_ID]
        ,[RES_FirstName]
        ,[RES_LastName]
        ,[RES_DoB]
        ,[RES_IPAddress]
        ,[RES_TimeStamp]
        ,[RES_IDLink_RMR]
        ,[RES_Ownership]
        ,[RES_CreatedOn]
        ,[RES_Version]
        ,[RES_LinkID_CMD]
        ,[RES_LinkID_RWD])
    --OUTPUT
    --    inserted.RES_ID
    VALUES
        (@New_ID
        ,@FirstName
        ,@LastName
        ,CAST(@DOB AS date)
        ,@IPAddress
        ,@SignDateTime
        ,@RMR_ID
        ,@Ownership
        ,GETDATE()
        ,@ContractVersion
        ,@CMR_ID
        ,@Redraw_ID)

    SET @New_RES_ID = @New_ID
END
GO
