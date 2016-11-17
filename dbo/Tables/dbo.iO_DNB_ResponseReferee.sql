CREATE TABLE [dbo].[iO_DNB_ResponseReferee]
(
[DNBr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_SeqNumber] [bigint] NULL,
[DNBr_AddressScore] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_TotalScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_MaxScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_TotalScorePercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_ScoreRating] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBr_ScoreOverrideReason] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseReferee] ADD CONSTRAINT [PK_iO_DNB_ResponseReferee] PRIMARY KEY CLUSTERED  ([DNBr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
