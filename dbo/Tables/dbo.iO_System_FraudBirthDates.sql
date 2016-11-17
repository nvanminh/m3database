CREATE TABLE [dbo].[iO_System_FraudBirthDates]
(
[SYSfb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSfb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfb_IDLink_SYSfm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfb_Circa] [bit] NULL,
[SYSfb_BirthDate] [datetime] NULL,
[SYSfb_BirthDateRaw] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSfb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSfb_BirthDateTo] [datetime] NULL,
[SYSfb_AdditionalInfo] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_FraudBirthDates] ADD CONSTRAINT [PK_iO_System_FraudBirthDates] PRIMARY KEY CLUSTERED  ([SYSfb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudBirthDates', 'COLUMN', N'SYSfb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudBirthDates', 'COLUMN', N'SYSfb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_FraudBirthDates', 'COLUMN', N'SYSfb_Ownership'
GO
