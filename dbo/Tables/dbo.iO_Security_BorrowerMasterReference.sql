CREATE TABLE [dbo].[iO_Security_BorrowerMasterReference]
(
[SBM_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SBM_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SBM_UserID] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_Password] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SBM_Locked] [bit] NULL,
[SBM_PasswordAttempts] [int] NULL,
[SBM_LastPasswordChange] [datetime] NULL,
[SBM_LastLogin] [datetime] NULL,
[SBM_LastActivity] [datetime] NULL,
[SBM_LastLocked] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Security_BorrowerMasterReference] ADD CONSTRAINT [PK_iO_Security_BorrowerMasterReference] PRIMARY KEY CLUSTERED  ([SBM_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerMasterReference', 'COLUMN', N'SBM_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerMasterReference', 'COLUMN', N'SBM_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Security_BorrowerMasterReference', 'COLUMN', N'SBM_Ownership'
GO
