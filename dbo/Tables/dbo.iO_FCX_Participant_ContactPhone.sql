CREATE TABLE [dbo].[iO_FCX_Participant_ContactPhone]
(
[FCXpcp_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXpcp_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_IDLink_FCXp] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXpcp_PhoneType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_PhoneNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXpcp_Extension] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
