CREATE TABLE [dbo].[iO_EFX_SecuredLoans]
(
[EFXSEC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_Type] [int] NULL,
[EFXSEC_IDUser] [int] NULL,
[EFXSEC_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXSEC_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_DateFiled] [int] NULL,
[EFXSEC_CourtId_CustomerNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_CourtId_Name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_SecuredLoanCreditorId_NameAddressAndAmount] [varchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_SecuredLoanCreditorId_Industry_code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_SecuredLoanCreditorId_Industry_description] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSEC_MaturityDate] [int] NULL,
[EFXSEC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
