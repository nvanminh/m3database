CREATE TABLE [dbo].[iO_Product_LoanRefinance]
(
[RLRf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLRf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRf_SeqNumber] [bigint] NULL,
[RLRf_IDLink_RLR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRf_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLRf_Cancelled] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanRefinance] ADD CONSTRAINT [PK_iO_Product_LoanRefinance] PRIMARY KEY CLUSTERED  ([RLRf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
