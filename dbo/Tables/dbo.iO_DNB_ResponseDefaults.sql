CREATE TABLE [dbo].[iO_DNB_ResponseDefaults]
(
[DNBd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_SeqNumber] [bigint] NULL,
[DNBd_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_AccountTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_AccountTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_OriginalCreditProvider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CurrentCreditProvider] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_OriginalCustomerReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CurrentCustomerReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_StatusDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_StatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CreditObligationCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CreditObligationDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_Purpose] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_OriginalAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CurrentAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_LastPaymentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_DateOfDefault] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_OriginalReasonToReportDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_OriginalReasonToReportCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CurrentReasonToReportDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBd_CurrentReasonToReportCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseDefaults] ADD CONSTRAINT [PK_iO_DNB_ResponseDefaults] PRIMARY KEY CLUSTERED  ([DNBd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
