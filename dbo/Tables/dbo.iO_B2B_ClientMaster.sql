CREATE TABLE [dbo].[iO_B2B_ClientMaster]
(
[BBcm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBcm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_TypeClient] [int] NULL,
[BBcm_TypeMatch] [int] NULL,
[BBcm_FullName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_BureauRef] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcm_ResidentOverseas] [bit] NULL,
[BBcm_Exclude] [bit] NULL,
[BBcm_Search] [bit] NULL,
[BBcm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientMaster] ADD CONSTRAINT [PK_iO_B2B_ClientMaster] PRIMARY KEY CLUSTERED  ([BBcm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientMaster', 'COLUMN', N'BBcm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientMaster', 'COLUMN', N'BBcm_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientMaster', 'COLUMN', N'BBcm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientMaster', 'COLUMN', N'BBcm_Ownership'
GO
