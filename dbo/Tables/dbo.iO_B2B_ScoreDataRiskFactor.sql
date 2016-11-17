CREATE TABLE [dbo].[iO_B2B_ScoreDataRiskFactor]
(
[BBsr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBsr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_IDLink_BBsm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_ImpactLevel] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_ImpactEffect] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_ImpactDesc] [varchar] (45) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsr_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_ScoreDataRiskFactor] ADD CONSTRAINT [PK_iO_B2B_ScoreDataRiskFactor] PRIMARY KEY CLUSTERED  ([BBsr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataRiskFactor', 'COLUMN', N'BBsr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataRiskFactor', 'COLUMN', N'BBsr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_ScoreDataRiskFactor', 'COLUMN', N'BBsr_Ownership'
GO
