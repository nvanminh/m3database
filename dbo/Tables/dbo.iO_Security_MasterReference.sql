CREATE TABLE [dbo].[iO_Security_MasterReference]
(
[SMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_IDLink_Profile] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SMR_Type] [int] NULL,
[SMR_IDUser] [int] NULL,
[SMR_Title] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_Login_ID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_Password] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SMR_AccessForcePasswordChange] [bit] NULL,
[SMR_Supervisor] [bit] NULL,
[SMR_AccessClient] [bit] NULL,
[SMR_AccessAccount] [bit] NULL,
[SMR_AccessClientCenterNew] [bit] NULL,
[SMR_AccessClientCenterDelete] [bit] NULL,
[SMR_AccessProductCenterNew] [bit] NULL,
[SMR_LocationType] [int] NULL,
[SMR_Action] [int] NULL,
[SMR_Hint] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_DocumentDirectory_Client] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_DocumentDirectory_Product] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_DocumnetDirectory_Template] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_DocumentDirectory_Email] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_SMTPServer] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_POP3Server] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_POP3UserID] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_POP3Pwd] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_LastLockoutTime] [datetime] NULL,
[SMR_LastPasswordChange] [datetime] NULL,
[SMR_ApplyPasswordPolicy] [bit] NULL CONSTRAINT [DF_iO_Security_MasterReference_SMR_ApplyPasswordPolicy] DEFAULT ((1)),
[SMR_ApprovalLimit] [float] NULL,
[SMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_LoginAttempts] [int] NULL,
[SMR_LastActivity] [datetime] NULL,
[SMR_EnvironmentUserName] [varchar] (104) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_AuthCode] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SMR_AutoPolled] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_MasterReference] ADD CONSTRAINT [PK_iO_Security_MasterReference] PRIMARY KEY CLUSTERED  ([SMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Security_MasterReference_UNP] ON [dbo].[iO_Security_MasterReference] ([SMR_EnvironmentUserName]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Security_MasterReference] ON [dbo].[iO_Security_MasterReference] ([SMR_Login_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-104634_Seqnumber] ON [dbo].[iO_Security_MasterReference] ([SMR_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_MasterReference', 'COLUMN', N'SMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_MasterReference', 'COLUMN', N'SMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_MasterReference', 'COLUMN', N'SMR_Ownership'
GO
