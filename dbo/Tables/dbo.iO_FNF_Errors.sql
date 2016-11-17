CREATE TABLE [dbo].[iO_FNF_Errors]
(
[FNFe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_SeqNumber] [int] NULL,
[FNFe_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_Operation] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_ErrorNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_ErrorMessage] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFe_IDLink_SCM_ParentID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
