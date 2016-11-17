CREATE TABLE [dbo].[iO_EFX_Scores]
(
[EFXSC_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Type] [int] NULL,
[EFXSC_IDUser] [int] NULL,
[EFXSC_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXSC_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_productType] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_productId] [int] NULL,
[EFXSC_description] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_VersionNumber] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_ModelId] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_ScoreNumber] [int] NULL,
[EFXSC_ScoreIndicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_SignIndicator] [varchar] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_ScoreValue] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_ScoreNarrative] [varchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_ScoreAttribute] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_identifier] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_AttributeValue] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Reason_code] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Reason_description] [varchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_RejectCode_code] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_RejectCode_description] [varchar] (70) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXSC_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO