CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_LifeDisabilityApp]
(
[FCXaal_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaal_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaal_CoverType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_InsuranceProportions] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_Amortization] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_InsureadAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_TotalLoanExceeded] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthCompleted] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthDeclarationRequired] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_LongFormRequired] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthQuestion1] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthQuestion2] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthQuestion3] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaal_HealthDeclaration_HealthQuestion4] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
