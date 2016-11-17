CREATE TABLE [dbo].[iO_FCX_Deal_FirmProfile_ContactAddress]
(
[FCXdfca_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdfca_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_IDLink_FCXdf] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdfca_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_StreetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_StreetDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_InternationalPostalCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_PostalCodeFSA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_PostalCodeLDU] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfca_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
