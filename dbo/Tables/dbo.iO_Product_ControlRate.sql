CREATE TABLE [dbo].[iO_Product_ControlRate]
(
[RCR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCR_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCR_IDUser] [int] NULL,
[RCR_Type] [int] NULL,
[RCR_Rate] [float] NULL,
[RCR_High] [float] NULL,
[RCR_DateEffective] [datetime] NULL,
[RCR_ExpiryDate] [datetime] NULL,
[RCR_Option] [int] NULL,
[RCR_BreakFromClass] [bit] NULL,
[RCR_AddToBase] [bit] NULL,
[RCR_AddToClass] [bit] NULL,
[RCR_FixedRateOption] [bit] NULL,
[RCR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCR_BuyDownDiff] [float] NULL,
[RLR_FixedTerm] [int] NULL,
[RCR_Balance] [float] NULL,
[RCR_IDLink_XRBL] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_ControlRate] ADD CONSTRAINT [PK_iO_Product_ControlRate] PRIMARY KEY CLUSTERED  ([RCR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Product_ControlRate_25_1260583579__K5_K9_K1_14] ON [dbo].[iO_Product_ControlRate] ([RCR_IDLink_RMR], [RCR_Type], [RCR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_ControlRate_10] ON [dbo].[iO_Product_ControlRate] ([RCR_IDLink_RMR], [RCR_Type], [RCR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlRate', 'COLUMN', N'RCR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlRate', 'COLUMN', N'RCR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_ControlRate', 'COLUMN', N'RCR_Ownership'
GO
