CREATE TABLE [dbo].[iO_B2B_DetailBankruptcy]
(
[BBdb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_Source] [int] NULL,
[BBdb_DateDeclared] [datetime] NULL,
[BBdb_BankruptTypeCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_BankruptTypeDesc] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_Narrative] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_ProceedState] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_ProceedYear] [int] NULL,
[BBdb_ProceedNum] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_ProceedStatusType] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_DischargeStatusType] [varchar] (28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_DischargeStatusDate] [datetime] NULL,
[BBdb_RoleType] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_CoBorrowerName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailBankruptcy] ADD CONSTRAINT [PK_iO_B2B_DetailBankruptcy] PRIMARY KEY CLUSTERED  ([BBdb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailBankruptcy', 'COLUMN', N'BBdb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailBankruptcy', 'COLUMN', N'BBdb_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailBankruptcy', 'COLUMN', N'BBdb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailBankruptcy', 'COLUMN', N'BBdb_Ownership'
GO
