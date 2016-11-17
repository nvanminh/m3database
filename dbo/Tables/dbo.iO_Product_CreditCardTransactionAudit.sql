CREATE TABLE [dbo].[iO_Product_CreditCardTransactionAudit]
(
[RCCta_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCCta_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RCCta_IDUser] [int] NULL,
[RCCta_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_DateE] [datetime] NULL,
[RCCta_DateC] [datetime] NULL,
[RCCta_Value] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_Sign] [char] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_MerchantName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_MerchantCity] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_MerchantState] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_MerchantPostCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_BatchID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCCta_Processed] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CreditCardTransactionAudit] ADD CONSTRAINT [PK_iO_Product_CreditCardTransactionAudit] PRIMARY KEY CLUSTERED  ([RCCta_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardTransactionAudit', 'COLUMN', N'RCCta_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardTransactionAudit', 'COLUMN', N'RCCta_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CreditCardTransactionAudit', 'COLUMN', N'RCCta_Ownership'
GO
