CREATE TABLE [dbo].[iO_FCX_Deal_FirmProfile_ContactPhone]
(
[FCXdfcp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdfcp_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_IDLink_FCXdf] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdfcp_PhoneType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_PhoneNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdfcp_PhoneExtension] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
