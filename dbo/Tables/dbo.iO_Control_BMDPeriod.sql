CREATE TABLE [dbo].[iO_Control_BMDPeriod]
(
[XBP_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XBP_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XBP_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XBP_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XBP_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XBP_IDUser] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_BMDPeriod] ADD CONSTRAINT [PK_iO_Control_BMDPeriod] PRIMARY KEY CLUSTERED  ([XBP_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_BMDPeriod', 'COLUMN', N'XBP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_BMDPeriod', 'COLUMN', N'XBP_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_BMDPeriod', 'COLUMN', N'XBP_Ownership'
GO
