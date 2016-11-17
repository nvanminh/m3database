CREATE TABLE [dbo].[iO_Product_LoanICB]
(
[RICB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RICB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_SeqNumber] [bigint] NULL,
[RICB_IDLink_InternalFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_InternalFlagDate] [datetime] NULL,
[RICB_InternalFlagProfile] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_InternalFlagProfileDate] [datetime] NULL,
[RICB_ICBFlag] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_ICBFlagDate] [datetime] NULL,
[RICB_ICBPaymentProfile] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_ICBPaymentProfileDate] [datetime] NULL,
[RICB_AgreementNo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RICB_InternalFlag] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Product_LoanICB] ADD CONSTRAINT [PK_iO_Product_LoanICB] PRIMARY KEY CLUSTERED  ([RICB_ID]) ON [PRIMARY]
GO
