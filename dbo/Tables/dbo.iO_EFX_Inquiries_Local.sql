CREATE TABLE [dbo].[iO_EFX_Inquiries_Local]
(
[EFXInq_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Type] [int] NULL,
[EFXInq_IDUser] [int] NULL,
[EFXInq_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXInq_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_date] [int] NULL,
[EFXInq_CustomerId_CustomerNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_CustomerId_Name] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_ParsedTelephone_AreaCode] [int] NULL,
[EFXInq_ParsedTelephone_Number] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_ParsedTelephone_Extension] [int] NULL,
[EFXInq_ConsumerOnlyDisplayIndicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXInq_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
