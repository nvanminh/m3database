CREATE TABLE [dbo].[iO_DFAT_ConsolidatedList_Addresses]
(
[DCLa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCLa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLa_IDLink_DCLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLa_FullAddress] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DFAT_ConsolidatedList_Addresses] ADD CONSTRAINT [PK_iO_DFAT_ConsolidatedList_Addresses] PRIMARY KEY CLUSTERED  ([DCLa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_Addresses', 'COLUMN', N'DCLa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_Addresses', 'COLUMN', N'DCLa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_Addresses', 'COLUMN', N'DCLa_Ownership'
GO
