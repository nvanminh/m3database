CREATE TABLE [dbo].[iO_DNB_ResponseCCBValidation]
(
[DNBccb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBccb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_SeqNumber] [bigint] NULL,
[DNBccb_VerificationResult] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBccb_EVFileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseCCBValidation] ADD CONSTRAINT [PK_iO_DNB_ResponseCCBValidation] PRIMARY KEY CLUSTERED  ([DNBccb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
