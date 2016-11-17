CREATE TABLE [dbo].[iO_Control_ProductCollectionAction]
(
[XRCA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRCA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_SeqNumber] [bigint] NULL,
[XRCA_IDUser] [int] NULL,
[XRCA_Type] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_Code] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_Journal_Type] [int] NULL,
[XRCA_ReTaskDays] [int] NULL,
[XRCA_IDLink_Note] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRCA_SecurityValue] [int] NULL,
[XRCA_Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductCollectionAction] ADD CONSTRAINT [PK_iO_Control_ProductCollectionAction] PRIMARY KEY CLUSTERED  ([XRCA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductCollectionAction', 'COLUMN', N'XRCA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductCollectionAction', 'COLUMN', N'XRCA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductCollectionAction', 'COLUMN', N'XRCA_Ownership'
GO
