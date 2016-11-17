CREATE TABLE [dbo].[iO_Product_InvestmentMDT]
(
[RIN_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RIN_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RIN_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RIN_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_IDLink_XRPy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_IDLink_XPM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_IDLink_XRPu] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_IDLink_RollOver] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RIN_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RIN_IDUser] [int] NULL,
[RIN_Type] [int] NULL,
[RIN_Term_Years] [int] NULL,
[RIN_Term_Month] [int] NULL,
[RIN_RollOverUseCurrentProduct] [bit] NULL,
[RIN_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_InvestmentMDT] ADD CONSTRAINT [PK_iO_Product_InvestmentMDT] PRIMARY KEY CLUSTERED  ([RIN_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_InvestmentMDT] ON [dbo].[iO_Product_InvestmentMDT] ([RIN_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_InvestmentMDT', 'COLUMN', N'RIN_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_InvestmentMDT', 'COLUMN', N'RIN_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_InvestmentMDT', 'COLUMN', N'RIN_Ownership'
GO
