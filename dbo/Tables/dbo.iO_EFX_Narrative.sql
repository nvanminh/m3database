CREATE TABLE [dbo].[iO_EFX_Narrative]
(
[EFXNarr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Type] [int] NULL,
[EFXNarr_IDUser] [int] NULL,
[EFXNarr_IDLink_EFXSeg] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_IDLink_EFXSeg_Type] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[EFXNarr_Narrative_Code] [varchar] (2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Narrative_Description] [varchar] (130) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EFXNarr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
