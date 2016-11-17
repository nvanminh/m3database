CREATE TABLE [dbo].[iO_OFAC_SDNList_BirthDates]
(
[OSLb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OSLb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLb_IDLink_OSLm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLb_Primary] [bit] NULL,
[OSLb_Circa] [bit] NULL,
[OSLb_BirthDate] [datetime] NULL,
[OSLb_BirthDateRaw] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OSLb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_OFAC_SDNList_BirthDates] ADD CONSTRAINT [PK_iO_OFAC_SDNList_BirthDates] PRIMARY KEY CLUSTERED  ([OSLb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_BirthDates', 'COLUMN', N'OSLb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_BirthDates', 'COLUMN', N'OSLb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_OFAC_SDNList_BirthDates', 'COLUMN', N'OSLb_Ownership'
GO
