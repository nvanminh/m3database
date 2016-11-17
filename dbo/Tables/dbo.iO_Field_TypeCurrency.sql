CREATE TABLE [dbo].[iO_Field_TypeCurrency]
(
[FTYc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTYc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FTYc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTYc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTYc_IDLink_FMRc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FTYc_Currency] [money] NULL,
[FTYc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Field_TypeCurrency] ADD CONSTRAINT [PK_iO_Field_TypeCurrency] PRIMARY KEY CLUSTERED  ([FTYc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Field_TypeCurrency] ON [dbo].[iO_Field_TypeCurrency] ([FTYc_IDLink_FMRc]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeCurrency', 'COLUMN', N'FTYc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeCurrency', 'COLUMN', N'FTYc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Field_TypeCurrency', 'COLUMN', N'FTYc_Ownership'
GO
