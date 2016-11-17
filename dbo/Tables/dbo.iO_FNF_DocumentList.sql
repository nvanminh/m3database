CREATE TABLE [dbo].[iO_FNF_DocumentList]
(
[FNFdl_ID] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FNFdl_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_SeqNumber] [int] NULL,
[FNFdl_StorageFileID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_FileName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_DocumentType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_DocumentCategory] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_DocumentSource] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_DocumentSourceDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_AddedByUserName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_FileSizeOnDisk] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_IsPublic] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_DateAdded] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_LastViewed] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFdl_ApprovedForBranch] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FNF_DocumentList] ADD CONSTRAINT [io_fnf_documentlist_PrimaryKey] PRIMARY KEY CLUSTERED  ([FNFdl_ID]) ON [PRIMARY]
GO
