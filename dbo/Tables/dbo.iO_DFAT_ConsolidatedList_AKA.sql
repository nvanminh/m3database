CREATE TABLE [dbo].[iO_DFAT_ConsolidatedList_AKA]
(
[DCLk_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCLk_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLk_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLk_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLk_IDLink_DCLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLk_FullName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLk_FKA] [bit] NULL,
[DCLk_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DFAT_ConsolidatedList_AKA] ADD CONSTRAINT [PK_iO_DFAT_ConsolidatedList_AKA] PRIMARY KEY CLUSTERED  ([DCLk_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_AKA', 'COLUMN', N'DCLk_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_AKA', 'COLUMN', N'DCLk_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_AKA', 'COLUMN', N'DCLk_Ownership'
GO
