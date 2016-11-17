CREATE TABLE [dbo].[iO_ABN_BusEntAddress]
(
[ABba_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABba_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABba_StateCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_PostCode] [varchar] (12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABba_EffectiveFromDate] [datetime] NULL,
[ABba_EffectiveToDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntAddress] ADD CONSTRAINT [PK_iO_ABN_BusEntAddress] PRIMARY KEY CLUSTERED  ([ABba_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date address is effective from.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_EffectiveFromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date address is effective to.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_EffectiveToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_IDLink_ABbm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Address postcode.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_PostCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_SeqNumber'
GO
EXEC sp_addextendedproperty N'MS_Description', N'State identifier - VIC, NSW, QLD etc', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntAddress', 'COLUMN', N'ABba_StateCode'
GO
