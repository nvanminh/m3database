CREATE TABLE [dbo].[iO_System_DataShare]
(
[SYSds_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSds_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSds_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_XSVc] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_Key2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSds_IDUser] [int] NULL,
[SYSds_Type] [int] NULL,
[SYSds_Date] [datetime] NULL,
[SYSds_DataID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_DataShare] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_DataDate] [datetime] NULL,
[SYSds_DataDouble] [float] NULL,
[SYSds_DataInteger] [int] NULL,
[SYSds_DataText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSds_IDLink_Key3] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_DataShare] ADD CONSTRAINT [PK_iO_System_DataShare] PRIMARY KEY CLUSTERED  ([SYSds_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-111029_Data_ID] ON [dbo].[iO_System_DataShare] ([SYSds_DataID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_System_DataShare] ON [dbo].[iO_System_DataShare] ([SYSds_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_System_DataShare_25_1507536454__K9_K8] ON [dbo].[iO_System_DataShare] ([SYSds_IDLink_Key2], [SYSds_IDLink_Key1]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_System_DataShare_1] ON [dbo].[iO_System_DataShare] ([SYSds_IDLink_RMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_System_DataShare_10] ON [dbo].[iO_System_DataShare] ([SYSds_IDLink_XSVc], [SYSds_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_System_DataShare_2] ON [dbo].[iO_System_DataShare] ([SYSds_IDLink_XSVc], [SYSds_Type]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataShare', 'COLUMN', N'SYSds_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataShare', 'COLUMN', N'SYSds_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataShare', 'COLUMN', N'SYSds_Ownership'
GO
