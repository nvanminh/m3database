CREATE TABLE [dbo].[iO_ABN_BusEntDGRFundMaster]
(
[ABbf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbf_IDLink_ABbm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbf_EndorsedFromDate] [datetime] NULL,
[ABbf_EndorsedToDate] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntDGRFundMaster] ADD CONSTRAINT [PK_iO_ABN_BusEntDGRFundMaster] PRIMARY KEY CLUSTERED  ([ABbf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Endorsed from date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_EndorsedFromDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Endorsed to date.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_EndorsedToDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_IDLink_ABbm'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundMaster', 'COLUMN', N'ABbf_SeqNumber'
GO
