CREATE TABLE [dbo].[iO_FNF_ReactivateFile]
(
[FNFrf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_SeqNumber] [int] NULL,
[FNFrf_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFrf_Message] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
