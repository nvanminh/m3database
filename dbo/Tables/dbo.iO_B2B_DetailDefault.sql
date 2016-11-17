CREATE TABLE [dbo].[iO_B2B_DetailDefault]
(
[BBdd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_Source] [int] NULL,
[BBdd_AccTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccTypeDesc] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccClientRef] [varchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccRoleType] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccCoBorrowerName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccDefStatusCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccDefStatusDesc] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_AccDefStatusDate] [datetime] NULL,
[BBdd_OrigDefDate] [datetime] NULL,
[BBdd_OrigDefAmt] [float] NULL,
[BBdd_OrigDefCurrencyCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_OrigDefReasonToReportDesc] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_OrigDefReasonToReportCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_OrigDefCredProviderName] [varchar] (28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_CurDefDate] [datetime] NULL,
[BBdd_CurDefAmt] [float] NULL,
[BBdd_CurDefCurrencyCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_CurDefReasonToReportDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_CurDefReasonToreportCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_CurDefCredProviderName] [varchar] (28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailDefault] ADD CONSTRAINT [PK_iO_B2B_DetailDefault] PRIMARY KEY CLUSTERED  ([BBdd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDefault', 'COLUMN', N'BBdd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDefault', 'COLUMN', N'BBdd_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDefault', 'COLUMN', N'BBdd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDefault', 'COLUMN', N'BBdd_Ownership'
GO
