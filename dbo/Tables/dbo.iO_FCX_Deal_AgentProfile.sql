CREATE TABLE [dbo].[iO_FCX_Deal_AgentProfile]
(
[FCXda_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXda_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXda_FirmCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_LegacyOfficeID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_LegacySystem] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_LegacyUserID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_LegacyRegistrationNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ProfileStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_UserProfileID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_UserType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ContactSalutation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ContactFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ContactMiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ContactLastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_ContactEmailAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXda_PreferredContact] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
