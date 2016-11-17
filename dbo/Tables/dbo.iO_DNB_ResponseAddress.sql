CREATE TABLE [dbo].[iO_DNB_ResponseAddress]
(
[DNBa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_SeqNumber] [bigint] NULL,
[DNBa_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_AddressLine] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_Locality] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_Postcode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_Surname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_GivenName1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_GivenName2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_TraceMatch] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_AlphaScore] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_ScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_MaxScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_ScoreWeightPercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_ScorePercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_FirstSpotDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_LOS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBa_TransactionDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseAddress] ADD CONSTRAINT [PK_iO_DNB_ResponseAddress] PRIMARY KEY CLUSTERED  ([DNBa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
