CREATE TABLE [dbo].[io_product_controldate_LoanFundingDateBackupApril]
(
[RCD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_IDLink_XCD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RCD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[RCD_IDUser] [int] NULL,
[RCD_Type] [int] NULL,
[RCD_CurrentStart] [datetime] NULL,
[RCD_CurrentEnd] [datetime] NULL,
[RCD_LastStart] [datetime] NULL,
[RCD_LastEnd] [datetime] NULL,
[RCD_Start] [datetime] NULL,
[RCD_End] [datetime] NULL,
[RCD_Next] [datetime] NULL,
[RCD_Prev] [datetime] NULL,
[RCD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
