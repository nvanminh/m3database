CREATE TABLE [dbo].[iO_FNF_FileStatus_FileNote]
(
[FNFfn_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_SeqNumber] [int] NULL,
[FNFfn_Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_Note] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfn_CreateDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
