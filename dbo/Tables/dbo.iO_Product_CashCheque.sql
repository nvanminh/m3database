CREATE TABLE [dbo].[iO_Product_CashCheque]
(
[RMC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMC_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[RMC_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_Complete] [bit] NULL,
[RMC_MarkedForDeletion] [bit] NULL,
[RMC_IsBrandNewCheque] [bit] NULL,
[RMC_FullyRefunded] [bit] NULL,
[RMC_CCCreateDate] [datetime] NULL,
[RMC_CCEffectiveDate] [datetime] NULL,
[RMC_ChequeAmount] [float] NULL,
[RMC_FeePercentage] [float] NULL,
[RMC_FeeAmount] [float] NULL,
[RMC_AmountToDisburse] [float] NULL,
[RMC_PayCashNowAmount] [float] NULL,
[RMC_PayCashLaterAmount] [float] NULL,
[RMC_PayByDirectCreditAmount] [float] NULL,
[RMC_PayByChequeAmount] [float] NULL,
[RMC_TotalPaid] [float] NULL,
[RMC_PayCashLaterDate] [datetime] NULL,
[RMC_PayByDirectCreditDate] [datetime] NULL,
[RMC_PayByChequeDate] [datetime] NULL,
[RMC_ChequeDated] [datetime] NULL,
[RMC_ChequeTypeID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeBSB] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeBank] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeBranch] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeDrawer] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeAccountNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_ChequeVerified] [bit] NULL,
[RMC_PayDCBSB] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCBank] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCBranch] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCDrawer] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCAccountNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCSelectedBankID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayChequeDated] [datetime] NULL,
[RMC_PayChequeNumber] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayChequeName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_PayDCReference] [varchar] (18) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RMC_IDLink_JointBorrower] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_CashCheque] ADD CONSTRAINT [PK_iO_product_cashcheque] PRIMARY KEY CLUSTERED  ([RMC_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CashCheque', 'COLUMN', N'RMC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CashCheque', 'COLUMN', N'RMC_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Product_CashCheque', 'COLUMN', N'RMC_Ownership'
GO
