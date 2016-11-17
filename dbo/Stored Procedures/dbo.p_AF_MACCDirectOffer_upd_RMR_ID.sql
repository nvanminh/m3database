SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[p_AF_MACCDirectOffer_upd_RMR_ID]
	@DOWTMA_ID	int,
	@LoanNo		bigint
AS
BEGIN
	--// Update Varaible
	DECLARE @CMR_ID				varchar(40);
	DECLARE @XRP_ID				varchar(40);
	DECLARE @SecurityToken		varchar(250);
	DECLARE @DateCreated		datetime;
	DECLARE @DateExpired		datetime;
	DECLARE @MaxOffer			decimal(18, 2);
	DECLARE @Campain			varchar(250);
	DECLARE @ClickCount			int;
	DECLARE @RMR_ID				varchar(40);

	SELECT @RMR_ID = RMR.RMR_ID FROM [dbo].[iO_Product_MasterReference] RMR WITH (NOLOCK) WHERE RMR.RMR_SeqNumber = @LoanNo;

	SELECT
		@CMR_ID				= D.DOWTMA_CMR_ID
		,@XRP_ID			= D.DOWTMA_XRP_ID
		,@SecurityToken		= D.DOWTMA_SecurityToken
		,@DateCreated		= D.DOWTMA_DateCreated
		,@DateExpired		= D.DOWTMA_DateExpired
		,@MaxOffer			= D.DOWTMA_MaxOffer
		,@Campain			= D.DOWTMA_Campain
		,@ClickCount		= D.DOWTMA_ClickCount
		,@RMR_ID			= @RMR_ID --// Update
	FROM
		[WebPortal].[DOWTMA] D WITH (NOLOCK)
	WHERE
		D.DOWTMA_ID = @DOWTMA_ID


	EXEC
		[dbo].[p_DOWTMA_upd]
			@DOWTMA_ID		
			,@CMR_ID
			,@XRP_ID
			,@SecurityToken
			,@DateCreated
			,@DateExpired
			,@MaxOffer
			,@Campain
			,@ClickCount
			,@RMR_ID
END
GO
