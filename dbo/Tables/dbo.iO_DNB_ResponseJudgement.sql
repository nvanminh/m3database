CREATE TABLE [dbo].[iO_DNB_ResponseJudgement]
(
[DNBj_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBj_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_SeqNumber] [bigint] NULL,
[DNBj_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Sequence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_DateLodged] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_ActionTypeCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_ActionTypeDesc] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Creditor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Court] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Amount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_PlaintiffNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_PlaintiffName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_DatePaid] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBj_Comments] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseJudgement] ADD CONSTRAINT [PK_iO_DNB_ResponseJudgement] PRIMARY KEY CLUSTERED  ([DNBj_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
