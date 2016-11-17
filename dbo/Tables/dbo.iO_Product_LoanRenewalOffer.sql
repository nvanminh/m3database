CREATE TABLE [dbo].[iO_Product_LoanRenewalOffer]
(
[RLRo_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLRo_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_SeqNumber] [bigint] NULL,
[RLRo_IDLink_RLR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_IDLink_XRP] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_Rate] [real] NULL,
[RLRo_Payment] [real] NULL,
[RLRo_ProductType] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRo_TotalPayment] [real] NULL,
[RLRo_TotalPaymentForTerm] [real] NULL,
[RLRo_TotalCostForTerm] [real] NULL,
[RLRo_MaturityDate] [datetime] NULL,
[RLRo_BalanceAtMaturity] [real] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanRenewalOffer] ADD CONSTRAINT [PK_iO_Product_LoanRenewalOffer] PRIMARY KEY CLUSTERED  ([RLRo_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
