CREATE TABLE [dbo].[iO_EFX_Inquiries_Foreign]
(
[EFXFIQ_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_Type] [int] NULL,
[EFXFIQ_IDUser] [int] NULL,
[EFXFIQ_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXFIQ_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_date] [int] NULL,
[EFXFIQ_CityNameOrInquiryNumber] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFIQ_InquiryProvince] [int] NULL,
[EFXFIQ_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
