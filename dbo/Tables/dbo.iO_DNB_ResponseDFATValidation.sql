CREATE TABLE [dbo].[iO_DNB_ResponseDFATValidation]
(
[DNBdfat_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DNBdfat_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_IDLink_SCM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_IDLink_DNBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_SeqNumber] [bigint] NULL,
[DNBdfat_ExactName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_MatchType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_Reference] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_NameType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_DateOfBirth] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_PlaceOfBirth] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_Citizenship] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_Address] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_Affiliation] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_AffiliationInfo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_ListingInfo] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DNBdfat_ControlDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DNB_ResponseDFATValidation] ADD CONSTRAINT [PK_iO_DNB_ResponseDFATValidation] PRIMARY KEY CLUSTERED  ([DNBdfat_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
