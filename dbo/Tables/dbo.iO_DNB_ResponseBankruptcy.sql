CREATE TABLE [dbo].[iO_DNB_ResponseBankruptcy]
(
[DNBb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_SeqNumber] [bigint] NULL,
[DNBb_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_DateDeclared] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_ActionTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_ActionTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_Court] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_ProceedingsNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_ProceedingsDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_DischargeAnnulmentDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBb_Comments] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseBankruptcy] ADD CONSTRAINT [PK_iO_DNB_ResponseBankruptcy] PRIMARY KEY CLUSTERED  ([DNBb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
