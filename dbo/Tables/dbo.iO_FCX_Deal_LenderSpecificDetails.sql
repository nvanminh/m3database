CREATE TABLE [dbo].[iO_FCX_Deal_LenderSpecificDetails]
(
[FCXdls_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdls_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdls_CommissionCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_ForceDuplicateSubmissionFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_MultiProject] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_ProprietairePlus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdls_ProprietairePlusLOC] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
