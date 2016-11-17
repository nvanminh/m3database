CREATE TABLE [dbo].[iO_EFX_FraudMessage]
(
[EFXFRDm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Type] [int] NULL,
[EFXFRDm_IDUser] [int] NULL,
[EFXFRDm_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_IDLink_FRD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXFRDm_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Priority] [int] NULL,
[EFXFRDm_FrCode] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Description] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRDm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
