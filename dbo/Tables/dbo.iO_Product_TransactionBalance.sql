CREATE TABLE [dbo].[iO_Product_TransactionBalance]
(
[RTB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_IDLink_XRBl] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTB_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTB_IDUser] [int] NULL,
[RTB_Type] [int] NULL,
[RTB_Value] [float] NULL,
[RTB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionBalance] ADD CONSTRAINT [iO_Product_TransactionBalance_PrimaryKey] PRIMARY KEY NONCLUSTERED  ([RTB_ID]) ON [PRIMARY]
GO
CREATE UNIQUE CLUSTERED INDEX [pk_io_Product_TransactionBalance] ON [dbo].[iO_Product_TransactionBalance] ([RTB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_TransactionBalance_3] ON [dbo].[iO_Product_TransactionBalance] ([RTB_IDLink_RMR], [RTB_IDLink_XRBl], [RTB_ID], [RTB_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_TransactionBalance_1] ON [dbo].[iO_Product_TransactionBalance] ([RTB_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionBalance', 'COLUMN', N'RTB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionBalance', 'COLUMN', N'RTB_Ownership'
GO
