CREATE TABLE [dbo].[iO_Product_LoanRenewalTerms]
(
[RLRt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLRt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_SeqNumber] [bigint] NULL,
[RLRt_IDLink_RLRo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_IDLink_XTKM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRt_Rate_Discretion] [decimal] (18, 0) NULL,
[RLRt_Rate_Blend] [bit] NULL,
[RLRt_Rate] [decimal] (18, 0) NULL,
[RLRt_Payment_Discretion] [decimal] (18, 0) NULL,
[RLRt_Amortization] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanRenewalTerms] ADD CONSTRAINT [PK_iO_Product_LoanRenewalTerms] PRIMARY KEY CLUSTERED  ([RLRt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
