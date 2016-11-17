CREATE TABLE [dbo].[iO_FCX_Deal_LegacyDetails]
(
[FCXdl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXdl_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_IDLink_FCXd] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXdl_LegacyApplicationReference] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_LegacyOfficeID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_LegacySystem] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXdl_LegacyUserID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
