CREATE TABLE [dbo].[iO_FCX_Deal]
(
[FCXd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXd_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_IDLink_FCXl] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[FCXd_Application_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_Application_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_CombinedGDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_CombinedLTV] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_CombinedTDS] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_DealPurpose] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_DealType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_EstimatedClosing_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_FinancialWaiver_Date] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_RefiImprovementAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_RefiImprovementsDesc] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_RefiImprovementsFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_RefiPurpose] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_TaxPayor] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXd_ThirdPartyApplicationFlag] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_FCX_Deal] ADD CONSTRAINT [PK_FCXd_ID] PRIMARY KEY CLUSTERED  ([FCXd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
