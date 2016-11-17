CREATE TABLE [dbo].[iO_ABN_BusEntDGRFundNames]
(
[ABbd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ABbd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbd_IDLink_ABbf] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[ABbd_OrganisationName] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ABbd_Score] [int] NULL,
[ABbd_IsCurrentIndicator] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_ABN_BusEntDGRFundNames] ADD CONSTRAINT [PK_iO_ABN_BusEntDGRFundNames] PRIMARY KEY CLUSTERED  ([ABbd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Foreign key - iO_ABN_BusEntDGRFundMaster', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_IDLink_ABbf'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'A flag to indicate the fund name is current.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_IsCurrentIndicator'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the fund.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_OrganisationName'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_Ownership'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Score.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_Score'
GO
EXEC sp_addextendedproperty N'MS_Description', N'System generated sequential number.', 'SCHEMA', N'dbo', 'TABLE', N'iO_ABN_BusEntDGRFundNames', 'COLUMN', N'ABbd_SeqNumber'
GO
