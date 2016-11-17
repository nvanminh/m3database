CREATE TABLE [dbo].[iO_FNF_FileStatusALL]
(
[FNFfsa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_SeqNumber] [int] NULL,
[FNFfsa_FileNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FNFfsa_Status] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
