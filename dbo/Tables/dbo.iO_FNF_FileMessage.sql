CREATE TABLE [dbo].[iO_FNF_FileMessage]
(
[FNFfm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_SeqNumber] [int] NULL,
[FNFfm_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_Message] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_InternalReferenceNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_Operation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfm_IDLink_SCM_ParentID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
