CREATE TABLE [dbo].[iO_Keys_MasterReference]
(
[YMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_IDLink_ARMNet] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_IDLink_Foreign] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_IDLink_XFK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[YMR_IDUser] [int] NULL,
[YMR_Type] [int] NULL,
[YMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[YMR_Data_Extracted] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Keys_MasterReference] ADD CONSTRAINT [PK_iO_Keys_MasterReference] PRIMARY KEY CLUSTERED  ([YMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Keys_MasterReference] ON [dbo].[iO_Keys_MasterReference] ([YMR_IDLink_ARMNet], [YMR_IDLink_XFK]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Keys_MasterReference_12] ON [dbo].[iO_Keys_MasterReference] ([YMR_IDLink_ARMNet], [YMR_IDLink_XFK]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Keys_MasterReference_10] ON [dbo].[iO_Keys_MasterReference] ([YMR_IDLink_XFK], [YMR_IDLink_ARMNet], [YMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Keys_MasterReference_1] ON [dbo].[iO_Keys_MasterReference] ([YMR_IDLink_XFK], [YMR_IDLink_Foreign]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Keys_MasterReference', 'COLUMN', N'YMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Keys_MasterReference', 'COLUMN', N'YMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Keys_MasterReference', 'COLUMN', N'YMR_Ownership'
GO
