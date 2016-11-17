CREATE TABLE [dbo].[iO_EFX_TradeLines_HighPayment]
(
[EFXTrdHP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Type] [int] NULL,
[EFXTrdHP_IDUser] [int] NULL,
[EFXTrdHP_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_IDLink_EFXTrd] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXTrdHP_PreviousHighPaymentRate_code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_PreviousHighPaymentRate_description] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Date] [varchar] (85) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXTrdHP_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
