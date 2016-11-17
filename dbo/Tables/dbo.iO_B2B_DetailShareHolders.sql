CREATE TABLE [dbo].[iO_B2B_DetailShareHolders]
(
[BBds_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBds_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBds_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBds_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBds_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBds_Source] [int] NULL,
[BBds_HolderName] [varchar] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBds_NumShares] [bigint] NULL,
[BBds_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailShareHolders] ADD CONSTRAINT [PK_iO_B2B_DetailShareHolders] PRIMARY KEY CLUSTERED  ([BBds_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailShareHolders', 'COLUMN', N'BBds_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailShareHolders', 'COLUMN', N'BBds_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailShareHolders', 'COLUMN', N'BBds_Ownership'
GO
