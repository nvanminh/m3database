CREATE TABLE [dbo].[iO_Product_LoanRetention]
(
[RLR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RLR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_SeqNumber] [bigint] NULL,
[RLR_Date_Application] [datetime] NULL,
[RLR_Date_Close] [datetime] NULL,
[RLR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_XLK] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_XRIs] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_IDLink_RMR_New] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_StatusFlag] [bit] NULL,
[RLR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RLR_PenaltyCollectionType] [tinyint] NULL,
[RLR_PMAPenaltyApproval] [real] NULL,
[RLR_DischargeFeeReduction] [real] NULL,
[RLR_PayoutPenaltyReduction] [real] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanRetention] ADD CONSTRAINT [PK_iO_Product_LoanRetention] PRIMARY KEY CLUSTERED  ([RLR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
