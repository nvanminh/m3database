CREATE TABLE [dbo].[iO_DNB_ResponsePhoneValidation]
(
[DNBpv_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBpv_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_SeqNumber] [bigint] NULL,
[DNBpv_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_ValidationType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_Type] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_Address] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_Locality] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_PostCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_Surname] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_NameOther] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_TraceMatch] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_PhoneNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_AlphaScore] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_ScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_MaxScorePoints] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_ScoreWeightPercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBpv_ScorePercentage] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponsePhoneValidation] ADD CONSTRAINT [PK_iO_DNB_ResponsePhoneValidation] PRIMARY KEY CLUSTERED  ([DNBpv_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
