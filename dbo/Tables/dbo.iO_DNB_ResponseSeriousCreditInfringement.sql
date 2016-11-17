CREATE TABLE [dbo].[iO_DNB_ResponseSeriousCreditInfringement]
(
[DNBsci_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBsci_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_SeqNumber] [bigint] NULL,
[DNBsci_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_AccountTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_AccountTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_OriginalAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_StatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_StatusDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CurrentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_OriginalCustomerReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CurrentCustomerReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_LastPaymentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_DateOfDefault] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_Purpose] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CreditObligationCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CreditObligationDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_OriginalCreditProvider] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CurrentCreditProvider] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_OriginalReasonToReportDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_OriginalReasonToReportCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CurrentReasonToReportDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBsci_CurrentReasonToReportCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseSeriousCreditInfringement] ADD CONSTRAINT [PK_iO_DNB_ResponseSeriousCreditInfringement] PRIMARY KEY CLUSTERED  ([DNBsci_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
