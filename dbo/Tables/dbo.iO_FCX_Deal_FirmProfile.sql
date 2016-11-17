CREATE TABLE [dbo].[iO_FCX_Deal_FirmProfile]
(
[FCXdf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdf_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdf_FirmCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_FirmName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_LicenceRegistrationNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_ContactSalutation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_ContactFirstName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_ContactMiddleName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_ContactLastName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_ContactEmailAddress] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdf_PreferredContact] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
