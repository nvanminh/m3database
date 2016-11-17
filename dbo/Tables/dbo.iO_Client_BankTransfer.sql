CREATE TABLE [dbo].[iO_Client_BankTransfer]
(
[CBT_ID] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBT_Ownership] [char] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_IDLink_CMR] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_IDLink_XTRF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CBT_IDUser] [int] NULL,
[CBT_Type] [int] NULL,
[CBT_DDFileName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_DDFileDirector] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_FinancialInstName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_UserName] [char] (26) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_UserNumber] [char] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_AccountName] [char] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_AccountBSB] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_AccountNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_CollectionBSB] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_CollectionAccount] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_DescriptionOnEntries] [char] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_CompanyID] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_CompanyBIN] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_DDLongName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_DDShortName] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_RemitterName] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_FunderName] [char] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CBT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_BankTransfer] ADD CONSTRAINT [PK_iO_Client_BankTransfer] PRIMARY KEY CLUSTERED  ([CBT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_BankTransfer] ON [dbo].[iO_Client_BankTransfer] ([CBT_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankTransfer', 'COLUMN', N'CBT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankTransfer', 'COLUMN', N'CBT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_BankTransfer', 'COLUMN', N'CBT_Ownership'
GO
