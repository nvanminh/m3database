CREATE TABLE [dbo].[iO_Product_TransactionReturn_EFTCan]
(
[RTRec_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTRec_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_IDLink_Batch] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_IDLink_RTM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_SeqNumber] [bigint] NULL,
[RTRec_ClientNumber] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_TransactionID] [bigint] NULL,
[RTRec_ExternalRef] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_ReturnCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_DateC] [datetime] NULL,
[RTRec_DateE] [datetime] NULL,
[RTRec_Amount] [money] NULL,
[RTRec_Type] [char] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_CustomerNumber] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_CustomerName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_Account] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_BankNum] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_TransitNum] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RTRec_Exception] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_TransactionReturn_EFTCan] ADD CONSTRAINT [PK_iO_Product_TransactionReturn_EFTCan] PRIMARY KEY CLUSTERED  ([RTRec_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
