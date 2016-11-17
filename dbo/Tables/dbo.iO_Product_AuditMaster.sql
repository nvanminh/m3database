CREATE TABLE [dbo].[iO_Product_AuditMaster]
(
[RAU_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RAU_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RAU_Type] [int] NULL,
[RAU_IDUser] [int] NULL,
[RAU_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_Grade] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_Compliant] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_SufficientDownPayment] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_SufficientClosingCosts] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_MLSListingComply] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_OfferToPurchaseComply] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_AcceptableToLender] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RAU_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_AuditMaster] ADD CONSTRAINT [PK_iO_Product_AuditMaster] PRIMARY KEY CLUSTERED  ([RAU_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Product_AuditMaster] ON [dbo].[iO_Product_AuditMaster] ([RAU_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_AuditMaster', 'COLUMN', N'RAU_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_AuditMaster', 'COLUMN', N'RAU_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_AuditMaster', 'COLUMN', N'RAU_Ownership'
GO
