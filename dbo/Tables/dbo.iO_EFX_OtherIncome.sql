CREATE TABLE [dbo].[iO_EFX_OtherIncome]
(
[EFXOI_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_Type] [int] NULL,
[EFXOI_IDUser] [int] NULL,
[EFXOI_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXOI_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_DateReported] [int] NULL,
[EFXOI_Amount] [int] NULL,
[EFXOI_IncomeSource] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXOI_VerificationDate] [int] NULL,
[EFXOI_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
