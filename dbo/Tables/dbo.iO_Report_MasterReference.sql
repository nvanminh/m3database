CREATE TABLE [dbo].[iO_Report_MasterReference]
(
[OMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_IDLink_BatchID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[OMR_IDUser] [int] NULL,
[OMR_Type] [int] NULL,
[OMR_Value] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_ValueDate] [datetime] NULL,
[OMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OMR_ValueInt] [numeric] (18, 0) NULL,
[OMR_ValueFloat] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Report_MasterReference] ADD CONSTRAINT [PK_iO_Report_MasterReference] PRIMARY KEY CLUSTERED  ([OMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-105339_BatchID] ON [dbo].[iO_Report_MasterReference] ([OMR_IDLink_BatchID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Report_MasterReference', 'COLUMN', N'OMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Report_MasterReference', 'COLUMN', N'OMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Report_MasterReference', 'COLUMN', N'OMR_Ownership'
GO
