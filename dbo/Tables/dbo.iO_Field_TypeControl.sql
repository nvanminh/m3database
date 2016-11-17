CREATE TABLE [dbo].[iO_Field_TypeControl]
(
[FTCc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTCc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTCc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTCc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTCc_IDLink_FMRc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTCc_Control] [int] NULL,
[FTCc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_TypeControl] ADD CONSTRAINT [PK_iO_Field_TypeControl] PRIMARY KEY CLUSTERED  ([FTCc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Field_TypeControl] ON [dbo].[iO_Field_TypeControl] ([FTCc_IDLink_FMRc]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeControl', 'COLUMN', N'FTCc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeControl', 'COLUMN', N'FTCc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeControl', 'COLUMN', N'FTCc_Ownership'
GO
