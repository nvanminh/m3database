CREATE TABLE [dbo].[iO_Product_BalanceHistroy]
(
[RBH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RBH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RBH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RBH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RBH_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RBH_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RBH_Type] [int] NULL,
[RBH_SeqNumber] [bigint] NULL,
[RBH_Date] [datetime] NULL,
[RBH_Value] [float] NULL,
[RBH_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_BalanceHistroy] ADD CONSTRAINT [PK_iO_Product_BalanceHistroy] PRIMARY KEY CLUSTERED  ([RBH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_BalanceHistroy] ON [dbo].[iO_Product_BalanceHistroy] ([RBH_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
