CREATE TABLE [dbo].[iO_FCX_LifeAndDisability_NonMortgageApplicant_InsuranceCoverage]
(
[FCXldni_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXldni_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_IDLink_FCXldn] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXldni_AmountCoverageRequest] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_InsuranceStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_InsuranceType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_PercentCoverageRequest] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXldni_Premium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
