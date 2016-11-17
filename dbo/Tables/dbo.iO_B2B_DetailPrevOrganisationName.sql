CREATE TABLE [dbo].[iO_B2B_DetailPrevOrganisationName]
(
[BBdr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_Source] [int] NULL,
[BBdr_OrgPrevName] [varchar] (71) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_OrgPrevType] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdr_NameStartDate] [datetime] NULL,
[BBdr_ASICSearchDate] [datetime] NULL,
[BBdr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailPrevOrganisationName] ADD CONSTRAINT [PK_iO_B2B_DetailPrevOrganisationName] PRIMARY KEY CLUSTERED  ([BBdr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPrevOrganisationName', 'COLUMN', N'BBdr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPrevOrganisationName', 'COLUMN', N'BBdr_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPrevOrganisationName', 'COLUMN', N'BBdr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPrevOrganisationName', 'COLUMN', N'BBdr_Ownership'
GO
