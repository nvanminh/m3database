CREATE TABLE [dbo].[iO_DNB_ResponseMatchPerson]
(
[DNBmp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBmp_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_SeqNumber] [bigint] NULL,
[DNBmp_MatchType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_SegID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_ConsumerID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_DateFirstRecorded] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_Gender] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_Surname] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_DateOfBirth] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_DriversLicence] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBmp_Employer] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseMatchPerson] ADD CONSTRAINT [PK_iO_Response_MatchPerson] PRIMARY KEY CLUSTERED  ([DNBmp_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
