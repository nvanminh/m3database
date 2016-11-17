CREATE TABLE [dbo].[iO_FCX_Deal_AgentProfile_ContactPhone]
(
[FCXdacp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdacp_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_IDLink_FCXda] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdacp_PhoneType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_PhoneNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdacp_PhoneExtension] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
