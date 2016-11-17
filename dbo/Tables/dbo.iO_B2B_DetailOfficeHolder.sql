CREATE TABLE [dbo].[iO_B2B_DetailOfficeHolder]
(
[BBdf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_Source] [int] NULL,
[BBdf_AppointmentDate] [datetime] NULL,
[BBdf_OfficerName] [varchar] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_OfficerPosition] [varchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdf_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailOfficeHolder] ADD CONSTRAINT [PK_iO_B2B_DetailOfficeHolder] PRIMARY KEY CLUSTERED  ([BBdf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailOfficeHolder', 'COLUMN', N'BBdf_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailOfficeHolder', 'COLUMN', N'BBdf_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailOfficeHolder', 'COLUMN', N'BBdf_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailOfficeHolder', 'COLUMN', N'BBdf_Ownership'
GO
