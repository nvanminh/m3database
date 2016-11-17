CREATE TABLE [dbo].[iO_FCX_ApplicantGroup_ApplicantLiabilityBroker]
(
[FCXaalb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FCXaalb_IDLink_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_IDLink_SCM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_IDLink_FCXaa] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1),
[FCXaalb_CBScraped] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_CreditLimit] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_LiabilityAmount] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_LiabilityDescription] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_LiabilityMonthlyPayment] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_LiabilityPayoffType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_LiabilityType] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FCXaalb_MaturityDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
