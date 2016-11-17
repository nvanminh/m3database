CREATE TABLE [dbo].[iO_FCX_ApplicantGroup]
(
[FCXa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXa_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_IDLink_FCXl] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXa_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FCXa_ApplicantGroupType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FCX_ApplicantGroup] ADD CONSTRAINT [PK_FCXa_ID] PRIMARY KEY CLUSTERED  ([FCXa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
