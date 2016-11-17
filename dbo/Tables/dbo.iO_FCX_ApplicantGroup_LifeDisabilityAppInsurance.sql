CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_LifeDisabilityAppInsurance]
(
[FCXaali_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaali_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_IDLink_FCXaal] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaali_AmountCoverageRequest] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_InsuranceStatus] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_InsuranceType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_percentCoverageRequest] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaali_Premium] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
