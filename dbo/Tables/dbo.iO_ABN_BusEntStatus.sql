CREATE TABLE [dbo].[iO_ABN_BusEntStatus]
(
[ABbs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbs_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbs_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbs_EntityStatusCode] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbs_EffectiveFromDate] [datetime] NULL,
[ABbs_EffectiveToDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntStatus] ADD CONSTRAINT [PK_iO_ABN_BusEntStatus] PRIMARY KEY CLUSTERED  ([ABbs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntStatus', 'COLUMN', N'ABbs_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntStatus', 'COLUMN', N'ABbs_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntStatus', 'COLUMN', N'ABbs_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntStatus', 'COLUMN', N'ABbs_Ownership'
GO
