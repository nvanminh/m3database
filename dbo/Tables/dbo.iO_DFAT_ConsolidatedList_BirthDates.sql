CREATE TABLE [dbo].[iO_DFAT_ConsolidatedList_BirthDates]
(
[DCLb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCLb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLb_IDLink_DCLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLb_Circa] [bit] NULL,
[DCLb_BirthDate] [datetime] NULL,
[DCLb_BirthDateRaw] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DCLb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_DFAT_ConsolidatedList_BirthDates] ADD CONSTRAINT [PK_iO_DFAT_ConsolidatedList_BirthDates] PRIMARY KEY CLUSTERED  ([DCLb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_BirthDates', 'COLUMN', N'DCLb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_BirthDates', 'COLUMN', N'DCLb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_DFAT_ConsolidatedList_BirthDates', 'COLUMN', N'DCLb_Ownership'
GO
