CREATE TABLE [dbo].[iO_EFX_NSF]
(
[EFXNSF_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Type] [int] NULL,
[EFXNSF_IDUser] [int] NULL,
[EFXNSF_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXNSF_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_DateReported] [int] NULL,
[EFXNSF_CreditorId_CustomerNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_CreditorId_Name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_ParsedTelephone_AreaCode] [int] NULL,
[EFXNSF_ParsedTelephone_Number] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_ParsedTelephone_Extension] [int] NULL,
[EFXNSF_NSFAmount] [varchar] (42) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_Details] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNSF_VerificationDate] [int] NULL,
[EFXNSF_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
