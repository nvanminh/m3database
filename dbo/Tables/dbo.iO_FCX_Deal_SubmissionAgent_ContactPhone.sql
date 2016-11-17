CREATE TABLE [dbo].[iO_FCX_Deal_SubmissionAgent_ContactPhone]
(
[FCXdscp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdscp_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_IDLink_FCXdsa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdscp_PhoneType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_PhoneNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdscp_PhoneExtension] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
