CREATE TABLE [dbo].[iO_Product_MasterReference]
(
[RMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_RMRParent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_Parent] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_IDLink_XSYSlt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RMR_SeqGroup] [int] NULL,
[RMR_RunStatus] [int] NULL,
[RMR_IDUser] [int] NULL,
[RMR_Type] [int] NULL,
[RMR_SecurityValue] [int] NULL,
[RMR_SecurityLock] [bit] NULL,
[RMR_EODDate] [datetime] NULL,
[RMR_Child] [bit] NULL,
[RMR_BrokerLinked] [int] NULL,
[RMR_Action_PEGA] [bit] NULL,
[RMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_SplitType] [int] NULL,
[RMR_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_RenewalCounter] [int] NULL,
[RMR_ProductAllocationMethod] [int] NULL,
[RMR_ProductType] [int] NULL,
[RMR_CustomerType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_AdditionalDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_CreditBureauResponse] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMR_Identification_Verified] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_MasterReference] ADD CONSTRAINT [PK_iO_Product_MasterReference] PRIMARY KEY CLUSTERED  ([RMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-104833_XRP] ON [dbo].[iO_Product_MasterReference] ([RMR_IDLink_XRP]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-104857_XSU] ON [dbo].[iO_Product_MasterReference] ([RMR_IDLink_XSU]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Product_MasterReference_Running] ON [dbo].[iO_Product_MasterReference] ([RMR_RunStatus]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_MasterReference] ON [dbo].[iO_Product_MasterReference] ([RMR_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MasterReference', 'COLUMN', N'RMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MasterReference', 'COLUMN', N'RMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_MasterReference', 'COLUMN', N'RMR_Ownership'
GO
