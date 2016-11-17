CREATE TABLE [dbo].[iO_FCX_Notes]
(
[FCXn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXn_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_IDLink_FCXl] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXn_Category] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_EntryDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_Language] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXn_Text] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
