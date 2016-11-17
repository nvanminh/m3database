CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantLiabilityCreditBureau]
(
[FCXaalc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaalc_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaalc_CBScraped] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_CreditLimit] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_LiabilityAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_LiabilityDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_LiabilityMonthlyPayment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_LiabilityPayoffType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_LiabilityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalc_MaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
