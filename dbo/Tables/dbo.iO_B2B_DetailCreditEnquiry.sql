CREATE TABLE [dbo].[iO_B2B_DetailCreditEnquiry]
(
[BBde_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBde_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_Source] [int] NULL,
[BBde_DateRecorded] [datetime] NULL,
[BBde_AccTypeCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_AccTypeDesc] [varchar] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_EnqAmt] [float] NULL,
[BBde_EnqCurrencyCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_CredEnquirerName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_RoleType] [varchar] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_CoBorrowerName] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_ClientRef] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_EnqType] [varchar] (24) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBde_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailCreditEnquiry] ADD CONSTRAINT [PK_iO_B2B_DetailCreditEnquiry] PRIMARY KEY CLUSTERED  ([BBde_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCreditEnquiry', 'COLUMN', N'BBde_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCreditEnquiry', 'COLUMN', N'BBde_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCreditEnquiry', 'COLUMN', N'BBde_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailCreditEnquiry', 'COLUMN', N'BBde_Ownership'
GO
