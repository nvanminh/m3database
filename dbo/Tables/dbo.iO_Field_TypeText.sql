CREATE TABLE [dbo].[iO_Field_TypeText]
(
[FTTc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTTc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTTc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTTc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTTc_IDLink_FMRc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTTc_Text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTTc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_TypeText] ADD CONSTRAINT [PK_iO_Field_TypeText] PRIMARY KEY CLUSTERED  ([FTTc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeText', 'COLUMN', N'FTTc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeText', 'COLUMN', N'FTTc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeText', 'COLUMN', N'FTTc_Ownership'
GO
