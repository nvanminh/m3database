CREATE TABLE [dbo].[iO_ABN_BusEntMaster]
(
[ABbm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbm_IDLink_ABmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbm_RecordLastUpdatedDate] [datetime] NULL,
[ABbm_ASICNumber] [bigint] NULL,
[ABbm_EntityTypeCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbm_EntityTypeDesc] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntMaster] ADD CONSTRAINT [PK_iO_ABN_BusEntMaster] PRIMARY KEY CLUSTERED  ([ABbm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntMaster', 'COLUMN', N'ABbm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntMaster', 'COLUMN', N'ABbm_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntMaster', 'COLUMN', N'ABbm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntMaster', 'COLUMN', N'ABbm_Ownership'
GO
