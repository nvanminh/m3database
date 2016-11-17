CREATE TABLE [dbo].[iO_B2B_DetailCurrentCreditProv]
(
[BBdu_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdu_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_Source] [int] NULL,
[BBdu_DateRecorded] [datetime] NULL,
[BBdu_CreditProvider] [varchar] (28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_ClientReference] [varchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdu_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailCurrentCreditProv] ADD CONSTRAINT [PK_iO_B2B_DetailCurrentCreditProv] PRIMARY KEY CLUSTERED  ([BBdu_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCurrentCreditProv', 'COLUMN', N'BBdu_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCurrentCreditProv', 'COLUMN', N'BBdu_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCurrentCreditProv', 'COLUMN', N'BBdu_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCurrentCreditProv', 'COLUMN', N'BBdu_Ownership'
GO
