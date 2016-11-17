CREATE TABLE [dbo].[iO_B2B_DetailProprietorship]
(
[BBdp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdp_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdp_Source] [int] NULL,
[BBdp_DateAppointed] [datetime] NULL,
[BBdp_IDLink_BBcm2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailProprietorship] ADD CONSTRAINT [PK_iO_B2B_DetailProprietorship] PRIMARY KEY CLUSTERED  ([BBdp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailProprietorship', 'COLUMN', N'BBdp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailProprietorship', 'COLUMN', N'BBdp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailProprietorship', 'COLUMN', N'BBdp_Ownership'
GO
