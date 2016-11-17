CREATE TABLE [dbo].[iO_B2B_ClientEmployment]
(
[BBce_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBce_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_CountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_FileCreateDate] [datetime] NULL,
[BBce_EmployerName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_OccupationDesc] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBce_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientEmployment] ADD CONSTRAINT [PK_iO_B2B_ClientEmployment] PRIMARY KEY CLUSTERED  ([BBce_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientEmployment', 'COLUMN', N'BBce_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientEmployment', 'COLUMN', N'BBce_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientEmployment', 'COLUMN', N'BBce_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientEmployment', 'COLUMN', N'BBce_Ownership'
GO
