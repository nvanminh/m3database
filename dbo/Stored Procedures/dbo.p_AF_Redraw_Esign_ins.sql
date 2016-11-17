SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_AF_Redraw_Esign_ins]
    @ClientGUID			varchar(40),
    @LoanGUID			varchar(40),
    @RedrawGUID			varchar(40),
    @FirstName			varchar(255),
    @LastName			varchar(255),
    @DOB				datetime,
    @IPAddress			varchar(50),
    @ContractVersion	nvarchar(40),
    @SignDateTime		datetime,
    @Ownership			nvarchar(50),
    @New_RES_ID			varchar(40) OUTPUT
AS
BEGIN
    --DECLARE @RMR_ID varchar(40);
    --DECLARE @CMR_ID varchar(40);

    --SET @RMR_ID = 'xxx-xxx';
    --SET @CMR_ID = 'yyy-yyy';
    --// Ownership = '{ARMnet Gateway - CTF}'
    --SELECT @RMR_ID = RMR_ID FROM [dbo].[iO_Product_MasterReference] WHERE RMR_SeqNumber = @LoanNo;
    --SELECT @CMR_ID = CMR_ID FROM [dbo].[iO_Client_MasterReference] WHERE CMR_SeqNumber = @CustomerNo;

    EXEC [dbo].[p_ProductEsign_ins]
        @FirstName,
        @LastName,
        @DOB,
        @IPAddress,
        @SignDateTime,
        @LoanGUID,
        @Ownership,
        @ContractVersion,
        @ClientGUID,
        @RedrawGUID,
        @New_RES_ID OUTPUT;

    SELECT
        @New_RES_ID AS 'ID'
END
GO
