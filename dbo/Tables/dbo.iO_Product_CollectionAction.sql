CREATE TABLE [dbo].[iO_Product_CollectionAction]
(
[RCA_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCA_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCA_Type] [int] NULL,
[RCA_IDUser] [int] NULL,
[RCA_Note] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_Date] [datetime] NULL,
[RCA_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_IDLink_XRCA] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCA_SecurityValue] [int] NULL,
[RCA_Current] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CollectionAction] ADD CONSTRAINT [PK_iO_Product_CollectionAction] PRIMARY KEY CLUSTERED  ([RCA_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CollectionAction', 'COLUMN', N'RCA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CollectionAction', 'COLUMN', N'RCA_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CollectionAction', 'COLUMN', N'RCA_Ownership'
GO
