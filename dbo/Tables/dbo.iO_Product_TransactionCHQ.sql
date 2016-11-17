CREATE TABLE [dbo].[iO_Product_TransactionCHQ]
(
[RTQ_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTQ_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTQ_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_IDUser] [int] NULL,
[RTQ_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RTQ_ChequeNumber] [int] NULL,
[RTQ_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_AccountBSBNo] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_AccountNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_Type] [int] NULL,
[RTQ_Drawer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_Bank] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_Branch] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_ChequeDated] [datetime] NULL,
[RTQ_TPartyName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyBank] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyBranch] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyAccountBSB] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyAccountNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyChequeNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTQ_TPartyChequeDate] [datetime] NULL,
[RTQ_ChequeVerified] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionCHQ] ADD CONSTRAINT [PK_iO_Product_TransactionCHQ] PRIMARY KEY CLUSTERED  ([RTQ_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131206-181026_RTM] ON [dbo].[iO_Product_TransactionCHQ] ([RTQ_IDLink_RTM]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionCHQ', 'COLUMN', N'RTQ_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionCHQ', 'COLUMN', N'RTQ_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_TransactionCHQ', 'COLUMN', N'RTQ_Ownership'
GO
