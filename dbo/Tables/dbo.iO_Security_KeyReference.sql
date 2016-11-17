CREATE TABLE [dbo].[iO_Security_KeyReference]
(
[SKM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SKM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SKM_Type] [int] NULL,
[SKM_IDUser] [int] NULL,
[SKM_UserID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_Password] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_Locked] [bit] NULL,
[SKM_PasswordAttempts] [int] NULL,
[SKM_LastPasswordChange] [datetime] NULL,
[SKM_LastLogin] [datetime] NULL,
[SKM_LastActivity] [datetime] NULL,
[SKM_LastLocked] [datetime] NULL,
[SKM_LastTermsAcceptance] [datetime] NULL,
[SKM_OnceOffPassword] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SKM_OnceOffCreated] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_KeyReference] ADD CONSTRAINT [PK_iO_Security_KeyReference] PRIMARY KEY CLUSTERED  ([SKM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Security_KeyReference] ON [dbo].[iO_Security_KeyReference] ([SKM_IDLink_Code]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyReference', 'COLUMN', N'SKM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyReference', 'COLUMN', N'SKM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_KeyReference', 'COLUMN', N'SKM_Ownership'
GO
