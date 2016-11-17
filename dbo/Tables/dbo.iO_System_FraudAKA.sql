CREATE TABLE [dbo].[iO_System_FraudAKA]
(
[SYSfk_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfk_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfk_FirstName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_MiddleNames] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_SurOrCompanyName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfk_TrusteeName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudAKA] ADD CONSTRAINT [PK_iO_System_FraudAlias] PRIMARY KEY CLUSTERED  ([SYSfk_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAKA', 'COLUMN', N'SYSfk_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAKA', 'COLUMN', N'SYSfk_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudAKA', 'COLUMN', N'SYSfk_Ownership'
GO
