CREATE TABLE [dbo].[iO_EFX_ConsumerStatement]
(
[EFXCS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Type] [int] NULL,
[EFXCS_IDUser] [int] NULL,
[EFXCS_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXCS_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_DateReported] [int] NULL,
[EFXCS_DateToBePurged] [int] NULL,
[EFXCS_Statement] [varchar] (400) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXCS_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
