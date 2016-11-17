CREATE TABLE [dbo].[iO_ABN_BusEntABN]
(
[ABbb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbb_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbb_IdentifierValue] [bigint] NULL,
[ABbb_IsCurrentIndicator] [bit] NULL,
[ABbb_ReplacedIdentifierValue] [bigint] NULL,
[ABbb_ReplacedFromDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntABN] ADD CONSTRAINT [PK_iO_ABN_BusEntABN] PRIMARY KEY CLUSTERED  ([ABbb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Identifier value.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_IdentifierValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_IDLink_ABbm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A flag to indicate the ABN is current.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_IsCurrentIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'The date record was replaced.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_ReplacedFromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Replaced identifier value.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_ReplacedIdentifierValue'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntABN', 'COLUMN', N'ABbb_SeqNumber'
GO
