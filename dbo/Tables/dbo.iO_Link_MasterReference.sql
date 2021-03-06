CREATE TABLE [dbo].[iO_Link_MasterReference]
(
[LMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_XSC_lnk] [int] NULL,
[LMR_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_RMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Code_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_Association] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_CreatedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_IDLink_ModifiedBy] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[LMR_Type] [int] NULL,
[LMR_IDUser] [int] NULL,
[LMR_Date_Modified] [datetime] NULL,
[LMR_ReceiveNotification] [bit] NULL,
[LMR_DeleteFlag] [bit] NULL,
[LMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LMR_ReceiveStatement] [bit] NULL,
[LMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Link_MasterReference] ADD CONSTRAINT [PK_iO_Link_MasterReference] PRIMARY KEY CLUSTERED  ([LMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Link_MasterReference_Link_Ass] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_Association]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Link_MasterReference_CMR] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_CMR]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Link_MasterReference_CMR_Link_Ass] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_CMR], [LMR_IDLink_Association]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Link_MasterReference_CMR_XSC_LinkAss_LMR] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_CMR], [LMR_IDLink_XSC_lnk], [LMR_IDLink_Association], [LMR_ID]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Link_MasterReference_RMR] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_Code_ID]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Link_MasterReference_RMR_Link_Ass] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_Code_ID], [LMR_IDLink_Association]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Link_MasterReference_RMR_CMR_XSC] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_Code_ID], [LMR_IDLink_XSC_lnk], [LMR_IDLink_CMR]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Link_MasterReference_RMR_ID] ON [dbo].[iO_Link_MasterReference] ([LMR_IDLink_RMR]) WITH (FILLFACTOR=60) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_MasterReference', 'COLUMN', N'LMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_MasterReference', 'COLUMN', N'LMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Link_MasterReference', 'COLUMN', N'LMR_Ownership'
GO
