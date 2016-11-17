CREATE TABLE [dbo].[iO_B2B_DetailCollectionEnquiry]
(
[BBdq_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdq_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_Source] [int] NULL,
[BBdq_DateRecorded] [datetime] NULL,
[BBdq_AccTypeDesc] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccRoletype] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccCoBorrowerName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccCollStatusCode] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccCollStatusDesc] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_AccCollStatusDate] [datetime] NULL,
[BBdq_ClientName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_ReasToReportCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_ReasToReportDesc] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_EnquirerName] [varchar] (28) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_EnquiryAmt] [float] NULL,
[BBdq_EnquiryCurrencyCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdq_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailCollectionEnquiry] ADD CONSTRAINT [PK_iO_B2B_DetailCollectionEnquiry] PRIMARY KEY CLUSTERED  ([BBdq_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCollectionEnquiry', 'COLUMN', N'BBdq_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCollectionEnquiry', 'COLUMN', N'BBdq_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCollectionEnquiry', 'COLUMN', N'BBdq_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCollectionEnquiry', 'COLUMN', N'BBdq_Ownership'
GO
