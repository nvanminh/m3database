CREATE TABLE [dbo].[iO_B2B_VeriChkResultMaster]
(
[BBvm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBvm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvm_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBvm_SummaryDesc] [varchar] (77) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBvm_SummaryCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_VeriChkResultMaster] ADD CONSTRAINT [PK_iO_B2B_VeriChkResultMaster] PRIMARY KEY CLUSTERED  ([BBvm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultMaster', 'COLUMN', N'BBvm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultMaster', 'COLUMN', N'BBvm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_VeriChkResultMaster', 'COLUMN', N'BBvm_Ownership'
GO
