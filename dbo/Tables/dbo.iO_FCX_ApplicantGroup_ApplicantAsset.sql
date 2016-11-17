CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantAsset]
(
[FCXaaas_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaaas_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaaas_AssetDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_AssetType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaaas_AssetValue] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
