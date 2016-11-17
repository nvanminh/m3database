CREATE TABLE [dbo].[iO_B2B_DetailDisqualifiedDirectorship]
(
[BBdi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdi_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdi_Source] [int] NULL,
[BBdi_DateDisqualified] [datetime] NULL,
[BBdi_DateDisqualifiedUntil] [datetime] NULL,
[BBdi_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailDisqualifiedDirectorship] ADD CONSTRAINT [PK_iO_B2B_DetailDisqualifiedDirectorship] PRIMARY KEY CLUSTERED  ([BBdi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDisqualifiedDirectorship', 'COLUMN', N'BBdi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDisqualifiedDirectorship', 'COLUMN', N'BBdi_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDisqualifiedDirectorship', 'COLUMN', N'BBdi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDisqualifiedDirectorship', 'COLUMN', N'BBdi_Ownership'
GO
