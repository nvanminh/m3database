CREATE TABLE [dbo].[iO_B2B_ClientAddress]
(
[BBca_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBca_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_AddrTypeCode] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_FileCreateDate] [datetime] NULL,
[BBca_FirstReportedDate] [datetime] NULL,
[BBca_UnitNo] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_StreetNo] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_Property] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_StreetName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_StreetTypeCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_Suburb] [varchar] (22) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_State] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_City] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_CountryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_PostCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_CountryName] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBca_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientAddress] ADD CONSTRAINT [PK_iO_B2B_ClientAddress] PRIMARY KEY CLUSTERED  ([BBca_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientAddress', 'COLUMN', N'BBca_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientAddress', 'COLUMN', N'BBca_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientAddress', 'COLUMN', N'BBca_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientAddress', 'COLUMN', N'BBca_Ownership'
GO
