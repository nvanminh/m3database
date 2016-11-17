CREATE TABLE [dbo].[iO_B2B_SummaryData]
(
[BBsd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBsd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_IDLink_BBmr] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_Value] [varchar] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_Type] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_CurrencyCode] [varchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBsd_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_SummaryData] ADD CONSTRAINT [PK_iO_B2B_SummaryData] PRIMARY KEY CLUSTERED  ([BBsd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_SummaryData', 'COLUMN', N'BBsd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_SummaryData', 'COLUMN', N'BBsd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_SummaryData', 'COLUMN', N'BBsd_Ownership'
GO
