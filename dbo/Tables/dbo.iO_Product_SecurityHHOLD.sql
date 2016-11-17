CREATE TABLE [dbo].[iO_Product_SecurityHHOLD]
(
[RSH_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSH_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSH_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSH_ProdDescription] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_ProdSupplier] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_Empty1] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_Empty2] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSH_Empty3] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityHHOLD] ADD CONSTRAINT [PK_iO_Product_SecurityHHOLD] PRIMARY KEY CLUSTERED  ([RSH_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityHHOLD', 'COLUMN', N'RSH_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityHHOLD', 'COLUMN', N'RSH_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityHHOLD', 'COLUMN', N'RSH_Ownership'
GO
