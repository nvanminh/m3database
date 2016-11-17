CREATE TABLE [dbo].[iO_EFX_FraudWarning]
(
[EFXFRD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Type] [int] NULL,
[EFXFRD_IDUser] [int] NULL,
[EFXFRD_IDLink_EFXRQ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXFRD_IDLink_EFXSBJ] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_ProductID] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Description] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXFRD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
