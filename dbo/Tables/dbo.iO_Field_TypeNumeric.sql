CREATE TABLE [dbo].[iO_Field_TypeNumeric]
(
[FTNc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTNc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTNc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTNc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTNc_IDLink_FMRc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTNc_Numeric] [float] NULL,
[FTNc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_TypeNumeric] ADD CONSTRAINT [PK_iO_Field_TypeNumeric] PRIMARY KEY CLUSTERED  ([FTNc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Field_TypeNumeric] ON [dbo].[iO_Field_TypeNumeric] ([FTNc_IDLink_FMRc]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeNumeric', 'COLUMN', N'FTNc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeNumeric', 'COLUMN', N'FTNc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeNumeric', 'COLUMN', N'FTNc_Ownership'
GO
