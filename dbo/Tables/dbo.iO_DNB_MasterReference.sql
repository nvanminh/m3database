CREATE TABLE [dbo].[iO_DNB_MasterReference]
(
[DNBmr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBmr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_SeqNumber] [bigint] NULL,
[DNBmr_RequestTime] [datetime] NULL,
[DNBmr_ProductType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_EnquiryType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_Environment] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_AccountType] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_EnquiryAmount] [money] NULL,
[DNBmr_CreditObligationCode] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmr_WarningCount] [int] NULL,
[DNBmr_ErrorCount] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_MasterReference] ADD CONSTRAINT [PK_iO_DNB_MasterReference] PRIMARY KEY CLUSTERED  ([DNBmr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
