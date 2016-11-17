CREATE TABLE [dbo].[iO_Control_WorkFlowMaster]
(
[XWKm_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKm_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKm_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_IDLink_Key2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_IDLink_XRU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_Type] [int] NULL,
[XWKm_IDUser] [int] NULL,
[XWKm_PageNo] [int] NULL,
[XWKm_SeqNo] [int] NULL,
[XWKm_NodeType] [int] NULL,
[XWKm_NodePartID] [int] NULL,
[XWKm_NodePortIDT] [int] NULL,
[XWKm_NodePortIDB] [int] NULL,
[XWKm_NodePortIDL] [int] NULL,
[XWKm_NodePortIDR] [int] NULL,
[XWKm_NodeLinkBalloon] [int] NULL,
[XWKm_NodeLocX] [float] NULL,
[XWKm_NodeLocY] [float] NULL,
[XWKm_NodeSizeW] [float] NULL,
[XWKm_NodeSizeH] [float] NULL,
[XWKm_AuditOption] [bit] NULL,
[XWKm_NodeText] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKm_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WorkFlowMaster] ADD CONSTRAINT [PK_iO_Control_WorkFlowMaster] PRIMARY KEY CLUSTERED  ([XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_6] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_DEBUG_dta_index_iO_Control_WorkFlowMaster_25_393104491__K5_K6_K10_K1_K12_K13_9] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_ID], [XWKm_NodeType], [XWKm_NodePartID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_2] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodePartID], [XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_3] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodeType], [XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_7] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodeType], [XWKm_NodePortIDB], [XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_WorkFlowMaster_83_393104491__K5_K6_K10_K12_K15_K1_13] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodeType], [XWKm_NodePortIDB], [XWKm_ID]) INCLUDE ([XWKm_NodePartID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_4] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodeType], [XWKm_NodePortIDT], [XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_5] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_1] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_NodePortIDT], [XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_PageNo], [XWKm_NodeType]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_8] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_PageNo], [XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_NodeType], [XWKm_ID], [XWKm_NodePortIDL]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_WorkFlowMaster_83_393104491__K10_K5_K6_K12_K1_K16_13] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_PageNo], [XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_NodeType], [XWKm_ID], [XWKm_NodePortIDL]) INCLUDE ([XWKm_NodePartID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowMaster_9] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_PageNo], [XWKm_NodePortIDT], [XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_NodeType], [XWKm_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [_dta_index_iO_Control_WorkFlowMaster_83_393104491__K10_K14_K5_K6_K12_K1_13] ON [dbo].[iO_Control_WorkFlowMaster] ([XWKm_PageNo], [XWKm_NodePortIDT], [XWKm_IDLink_Key1], [XWKm_IDLink_Key2], [XWKm_NodeType], [XWKm_ID]) INCLUDE ([XWKm_NodePartID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowMaster', 'COLUMN', N'XWKm_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowMaster', 'COLUMN', N'XWKm_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowMaster', 'COLUMN', N'XWKm_Ownership'
GO
