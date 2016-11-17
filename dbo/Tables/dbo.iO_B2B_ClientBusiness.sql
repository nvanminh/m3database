CREATE TABLE [dbo].[iO_B2B_ClientBusiness]
(
[BBcb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBcb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_FileCreateDate] [datetime] NULL,
[BBcb_NameCommencedDate] [datetime] NULL,
[BBcb_Name] [varchar] (71) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_NameSearchDate] [datetime] NULL,
[BBcb_BusStatusDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_BusStatusCode] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_RegDate] [datetime] NULL,
[BBcb_RegState] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_RegNo] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_LastRenewalDate] [datetime] NULL,
[BBcb_NatureOfBusiness] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_ABN] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBcb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ClientBusiness] ADD CONSTRAINT [PK_iO_B2B_ClientBusiness] PRIMARY KEY CLUSTERED  ([BBcb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientBusiness', 'COLUMN', N'BBcb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientBusiness', 'COLUMN', N'BBcb_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientBusiness', 'COLUMN', N'BBcb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ClientBusiness', 'COLUMN', N'BBcb_Ownership'
GO
