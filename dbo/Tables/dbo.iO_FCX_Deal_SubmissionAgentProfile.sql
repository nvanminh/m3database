CREATE TABLE [dbo].[iO_FCX_Deal_SubmissionAgentProfile]
(
[FCXds_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXds_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXds_FirmCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_LegacyOfficeID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_LegacySystem] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_LegacyUserID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_LegacyRegistrationNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ProfileStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_UserProfileID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_UserType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ContactSalutation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ContactFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ContactMiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ContactLastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_ContactEmailAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXds_PreferredContact] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
