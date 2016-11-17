CREATE TABLE [dbo].[iO_FCX_Deal_AgentProfile_ContactAddress]
(
[FCXdaca_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdaca_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_IDLink_FCXda] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdaca_UnitNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_StreetNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_StreetName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_StreetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_StreetDirection] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_City] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_Province] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_InternationalPostalCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_PostalCodeFSA] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_PostalCodeLDU] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdaca_Country] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
