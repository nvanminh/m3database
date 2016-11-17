CREATE TABLE [dbo].[iO_B2B_VeriChkResultDriverLic]
(
[BBvl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBvl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBvl_IDLink_BBvm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_MatchSummary] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_DLNumberMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvl_DLNameMatch] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriChkResultDriverLic] ADD CONSTRAINT [PK_iO_B2B_VeriChkResultDriverLic] PRIMARY KEY CLUSTERED  ([BBvl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultDriverLic', 'COLUMN', N'BBvl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultDriverLic', 'COLUMN', N'BBvl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultDriverLic', 'COLUMN', N'BBvl_Ownership'
GO
