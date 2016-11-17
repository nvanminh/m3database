CREATE TABLE [dbo].[iO_System_FraudPhone]
(
[SYSfp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfp_ISD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_AreaCode] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfp_Details] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudPhone] ADD CONSTRAINT [PK_iO_System_FraudPhone] PRIMARY KEY CLUSTERED  ([SYSfp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudPhone', 'COLUMN', N'SYSfp_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudPhone', 'COLUMN', N'SYSfp_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudPhone', 'COLUMN', N'SYSfp_Ownership'
GO
