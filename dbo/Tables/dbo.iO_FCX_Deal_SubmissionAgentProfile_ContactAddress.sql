CREATE TABLE [dbo].[iO_FCX_Deal_SubmissionAgentProfile_ContactAddress]
(
[FCXdsca_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdsca_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_IDLink_FCXds] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdsca_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_StreetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_StreetDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_InternationalPostalCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_PostalCodeFSA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_PostalCodeLDU] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdsca_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
