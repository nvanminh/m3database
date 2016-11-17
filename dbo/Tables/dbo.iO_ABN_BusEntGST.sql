CREATE TABLE [dbo].[iO_ABN_BusEntGST]
(
[ABbg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbg_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbg_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbg_EffectiveFromDate] [datetime] NULL,
[ABbg_EffectiveToDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntGST] ADD CONSTRAINT [PK_iO_ABN_BusEntGST] PRIMARY KEY CLUSTERED  ([ABbg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Effective from date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_EffectiveFromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Effective to date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_EffectiveToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_IDLink_ABbm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntGST', 'COLUMN', N'ABbg_SeqNumber'
GO
