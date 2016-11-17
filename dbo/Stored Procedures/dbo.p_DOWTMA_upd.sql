SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_DOWTMA_upd]
	@DOWTMA_ID			int,				--// [WebPortal].[DOWTMA] PK
	@CMR_ID				varchar(40),		--// CustomerId
	@XRP_ID				varchar(40),		--// ProductId
	@SecurityToken		varchar(250),		--// Security Token
	@DateCreated		datetime,			--// Date Created
	@DateExpired		datetime,			--// Date Expired
	@MaxOffer			decimal(18, 2),		--// MAX Offer
	@Campain			varchar(250),		--// Campaign Name
	@ClickCount			int,				--// Web Site Click count tracking
	@RMR_ID				varchar(40)			--// LoanId
AS
BEGIN
	UPDATE
		D
	SET
		D.DOWTMA_CMR_ID = @CMR_ID
		,D.DOWTMA_XRP_ID = @XRP_ID
		,D.DOWTMA_SecurityToken = @SecurityToken
		,D.DOWTMA_DateCreated = @DateCreated
		,D.DOWTMA_DateExpired = @DateExpired
		,D.DOWTMA_MaxOffer = @MaxOffer
		,D.DOWTMA_Campain = @Campain
		,D.DOWTMA_ClickCount = @ClickCount
		,D.DOWTMA_RMR_ID = @RMR_ID
	FROM
		[WebPortal].[DOWTMA] D
	WHERE
		D.DOWTMA_ID = @DOWTMA_ID
END

GO
