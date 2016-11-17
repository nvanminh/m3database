CREATE TABLE [dbo].[io_Product_SecurityPTYRent]
(
[RSPr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSPr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPr_IDLink_RSPt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSPr_RentAmountDate] [datetime] NULL,
[RSPr_RentAmount] [float] NULL,
[RSPr_IDLink_RentCurrency_RSD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[io_Product_SecurityPTYRent] ADD CONSTRAINT [PK_iO_Product_SecurityPTYRent] PRIMARY KEY CLUSTERED  ([RSPr_ID]) ON [PRIMARY]
GO
