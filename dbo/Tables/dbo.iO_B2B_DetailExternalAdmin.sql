CREATE TABLE [dbo].[iO_B2B_DetailExternalAdmin]
(
[BBdx_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdx_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_Source] [int] NULL,
[BBdx_AdminTitleDesc] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_AdminTitleCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_AdminName] [varchar] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_AdminAddress] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_DocNum] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_StartDate] [datetime] NULL,
[BBdx_CeaseDate] [datetime] NULL,
[BBdx_CreditorName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_CourtNum] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdx_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailExternalAdmin] ADD CONSTRAINT [PK_iO_B2B_DetailExternalAdmin] PRIMARY KEY CLUSTERED  ([BBdx_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailExternalAdmin', 'COLUMN', N'BBdx_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailExternalAdmin', 'COLUMN', N'BBdx_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailExternalAdmin', 'COLUMN', N'BBdx_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailExternalAdmin', 'COLUMN', N'BBdx_Ownership'
GO
