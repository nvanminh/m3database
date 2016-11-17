CREATE TABLE [dbo].[iO_Field_TypeDate]
(
[FTDc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTDc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTDc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTDc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTDc_IDLink_FMRc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTDc_Date] [datetime] NULL,
[FTDc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_TypeDate] ADD CONSTRAINT [PK_iO_Field_TypeDate] PRIMARY KEY CLUSTERED  ([FTDc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeDate', 'COLUMN', N'FTDc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeDate', 'COLUMN', N'FTDc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeDate', 'COLUMN', N'FTDc_Ownership'
GO
