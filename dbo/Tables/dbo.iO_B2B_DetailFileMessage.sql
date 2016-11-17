CREATE TABLE [dbo].[iO_B2B_DetailFileMessage]
(
[BBdm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdm_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdm_Source] [int] NULL,
[BBdm_Message] [varchar] (77) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdm_DateRecorded] [datetime] NULL,
[BBdm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailFileMessage] ADD CONSTRAINT [PK_iO_B2B_DetailFileMessage] PRIMARY KEY CLUSTERED  ([BBdm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailFileMessage', 'COLUMN', N'BBdm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailFileMessage', 'COLUMN', N'BBdm_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailFileMessage', 'COLUMN', N'BBdm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailFileMessage', 'COLUMN', N'BBdm_Ownership'
GO
