CREATE TABLE [dbo].[iO_B2B_DetailCourtAction]
(
[BBdc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_Source] [int] NULL,
[BBdc_ActionType] [varchar] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_ActionDate] [datetime] NULL,
[BBdc_ActionAmt] [float] NULL,
[BBdc_ActionCurrencyCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_CreditorName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_PlaintNum] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_CourtType] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_RoleType] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_CoBorrowerName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_ActionStatusDesc] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_ActionStatusDate] [datetime] NULL,
[BBdc_ActionStatusCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailCourtAction] ADD CONSTRAINT [PK_iO_B2B_DetailCourtAction] PRIMARY KEY CLUSTERED  ([BBdc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCourtAction', 'COLUMN', N'BBdc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCourtAction', 'COLUMN', N'BBdc_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCourtAction', 'COLUMN', N'BBdc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCourtAction', 'COLUMN', N'BBdc_Ownership'
GO
