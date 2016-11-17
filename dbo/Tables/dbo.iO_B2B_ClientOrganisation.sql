CREATE TABLE [dbo].[iO_B2B_ClientOrganisation]
(
[BBco_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBco_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_FileCreateDate] [datetime] NULL,
[BBco_NameStartDate] [datetime] NULL,
[BBco_ASICSearchDate] [datetime] NULL,
[BBco_OrgName] [varchar] (71) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_OrgNumber] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_OrgTypeCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_OrgStatusDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_OrgStatusCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_IncorporationDate] [datetime] NULL,
[BBco_IncorporationState] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_PrincipalActivity] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_LastAnnualGenMeetingDate] [datetime] NULL,
[BBco_LastAnnualReturnLodgedDate] [datetime] NULL,
[BBco_ABN] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBco_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientOrganisation] ADD CONSTRAINT [PK_iO_B2B_ClientOrganisation] PRIMARY KEY CLUSTERED  ([BBco_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientOrganisation', 'COLUMN', N'BBco_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientOrganisation', 'COLUMN', N'BBco_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientOrganisation', 'COLUMN', N'BBco_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientOrganisation', 'COLUMN', N'BBco_Ownership'
GO
