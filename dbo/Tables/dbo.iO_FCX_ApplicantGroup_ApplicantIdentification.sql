CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantIdentification]
(
[FCXaai_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaai_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaai_IdentificationNumber] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IdentificationCountry] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaai_IdentificationType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
