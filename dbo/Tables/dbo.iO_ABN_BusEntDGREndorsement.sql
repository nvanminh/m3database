CREATE TABLE [dbo].[iO_ABN_BusEntDGREndorsement]
(
[ABbe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbe_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbe_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbe_EndorsedFromDate] [datetime] NULL,
[ABbe_EndorsedToDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntDGREndorsement] ADD CONSTRAINT [PK_iO_ABN_BusEntDGREndorsement] PRIMARY KEY CLUSTERED  ([ABbe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Endorsed from date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_EndorsedFromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Endorsed to date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_EndorsedToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_IDLink_ABbm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGREndorsement', 'COLUMN', N'ABbe_SeqNumber'
GO
