CREATE TABLE [dbo].[iO_Security_BorrowerAudit]
(
[SBA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SBA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBA_IDLink_SBM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SBA_EventDate] [datetime] NULL,
[SBA_EventDescription] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_BorrowerAudit] ADD CONSTRAINT [PK_iO_Security_BorrowerAudit] PRIMARY KEY CLUSTERED  ([SBA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerAudit', 'COLUMN', N'SBA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerAudit', 'COLUMN', N'SBA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerAudit', 'COLUMN', N'SBA_Ownership'
GO
