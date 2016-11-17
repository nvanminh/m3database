CREATE TABLE [dbo].[iO_Product_CommissionSplit]
(
[RCMs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCMs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMs_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMs_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCMs_Type] [int] NULL,
[RCMs_IDUser] [int] NULL,
[RCMs_SplitValue] [float] NULL,
[RCMs_LodgementType] [int] NULL,
[RCMs_UpfrontProcessed] [bit] NULL,
[RCMs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCMs_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CommissionSplit] ADD CONSTRAINT [PK_io_Product_CommissionSplit] PRIMARY KEY CLUSTERED  ([RCMs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CommissionSplit', 'COLUMN', N'RCMs_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CommissionSplit', 'COLUMN', N'RCMs_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CommissionSplit', 'COLUMN', N'RCMs_Ownership'
GO
