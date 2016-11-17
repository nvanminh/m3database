CREATE TABLE [dbo].[iO_DNB_ResponseIdentiCheck]
(
[DNBi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_SeqNumber] [bigint] NULL,
[DNBi_FirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_OtherName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_Surname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_Result] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_Reason] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_TotalScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_MaxScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_TotalScorePercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_ScoreRating] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_ScoreOverrideReason] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_PassportDetailsVerified] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_PassportStatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_MedicareDetailsVerified] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBi_MedicareStatusCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseIdentiCheck] ADD CONSTRAINT [PK_iO_DNB_ResponseIdentiCheck] PRIMARY KEY CLUSTERED  ([DNBi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
