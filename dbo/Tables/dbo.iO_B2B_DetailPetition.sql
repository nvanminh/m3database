CREATE TABLE [dbo].[iO_B2B_DetailPetition]
(
[BBdt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_Source] [int] NULL,
[BBdt_PetitionDate] [datetime] NULL,
[BBdt_CreditorName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_LiquidatorName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_CourtNum] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdt_HearingDate] [datetime] NULL,
[BBdt_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailPetition] ADD CONSTRAINT [PK_iO_B2B_DetailPetition] PRIMARY KEY CLUSTERED  ([BBdt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPetition', 'COLUMN', N'BBdt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPetition', 'COLUMN', N'BBdt_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPetition', 'COLUMN', N'BBdt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailPetition', 'COLUMN', N'BBdt_Ownership'
GO
