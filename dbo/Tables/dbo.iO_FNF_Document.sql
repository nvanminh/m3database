CREATE TABLE [dbo].[iO_FNF_Document]
(
[FNFd_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FNFd_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_SeqNumber] [int] NULL,
[FNFd_FileName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_StorageFileID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFd_DocBase64] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FNF_Document] ADD CONSTRAINT [io_fnf_document_PrimaryKey] PRIMARY KEY CLUSTERED  ([FNFd_ID]) ON [PRIMARY]
GO
