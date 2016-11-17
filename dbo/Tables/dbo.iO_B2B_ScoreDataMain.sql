CREATE TABLE [dbo].[iO_B2B_ScoreDataMain]
(
[BBsm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBsm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_ScoreType] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_ScoreCardName] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_RelRisk] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_RelRiskIdx] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_RiskOdds] [varchar] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_PopulationName] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_PopulationOdds] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[BBsm_ScoreCardModel] [varchar] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_VedaScore] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_ApplicantOdds] [varchar] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_Percentile] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsm_VedaScoreIndex] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ScoreDataMain] ADD CONSTRAINT [PK_iO_B2B_ScoreDataMain] PRIMARY KEY CLUSTERED  ([BBsm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataMain', 'COLUMN', N'BBsm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataMain', 'COLUMN', N'BBsm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataMain', 'COLUMN', N'BBsm_Ownership'
GO
