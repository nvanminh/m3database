CREATE TABLE [dbo].[iO_Product_SecurityRegister]
(
[RSR_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RSR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_IDLink_XSDt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_Value] [float] NULL,
[RSR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RSR_Date] [datetime] NULL,
[RSR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RSR_IDLink_XDRr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_SecurityRegister] ADD CONSTRAINT [io_product_securityregister_PrimaryKey] PRIMARY KEY CLUSTERED  ([RSR_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityRegister', 'COLUMN', N'RSR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityRegister', 'COLUMN', N'RSR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_SecurityRegister', 'COLUMN', N'RSR_Ownership'
GO
