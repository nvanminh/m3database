CREATE TABLE [dbo].[iO_B2B_DetailDirectorHistory]
(
[BBdh_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BBdh_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_IDLink_BBcm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_Source] [int] NULL,
[BBdh_AppointmentDate] [datetime] NULL,
[BBdh_CeasedDate] [datetime] NULL,
[BBdh_LastKnownAsDirDate] [datetime] NULL,
[BBdh_TypeOfDir] [varchar] (8) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_IDLink_BBcm2] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BBdh_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_B2B_DetailDirectorHistory] ADD CONSTRAINT [PK_iO_B2B_DetailDirectorHistory] PRIMARY KEY CLUSTERED  ([BBdh_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDirectorHistory', 'COLUMN', N'BBdh_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Synchronisation process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDirectorHistory', 'COLUMN', N'BBdh_IDLink_Sync'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDirectorHistory', 'COLUMN', N'BBdh_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_B2B_DetailDirectorHistory', 'COLUMN', N'BBdh_Ownership'
GO
