CREATE TABLE [dbo].[iO_Security_KeyAudit]
(
[SKA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SKA_Type] [int] NULL,
[SKA_IDUser] [int] NULL,
[SKA_EventDate] [datetime] NULL,
[SKA_EventDescription] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_SKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_SBM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_SMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_EventLocation] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_EventUserDomainName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKA_EventUserName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_KeyAudit] ADD CONSTRAINT [PK_iO_Security_KeyAudit] PRIMARY KEY CLUSTERED  ([SKA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Security_KeyAudit] ON [dbo].[iO_Security_KeyAudit] ([SKA_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyAudit', 'COLUMN', N'SKA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyAudit', 'COLUMN', N'SKA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyAudit', 'COLUMN', N'SKA_Ownership'
GO
