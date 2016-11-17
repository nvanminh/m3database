CREATE TABLE [dbo].[iO_Control_WorkFlowDetail]
(
[XWKd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKd_IDLink_XWKm_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKd_IDLink_XWKm_Key2] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKd_SeqNo] [int] NULL,
[XWKd_Type] [int] NULL,
[XWKd_IDUser] [int] NULL,
[XWd_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WorkFlowDetail] ADD CONSTRAINT [PK_iO_Control_WorkFlowDetail] PRIMARY KEY CLUSTERED  ([XWKd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowDetail] ON [dbo].[iO_Control_WorkFlowDetail] ([XWKd_IDLink_XWKm_Key1], [XWKd_IDLink_XWKm_Key2]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Control_WorkFlowDetail_Seqnumber] ON [dbo].[iO_Control_WorkFlowDetail] ([XWKd_SeqNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowDetail', 'COLUMN', N'XWKd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowDetail', 'COLUMN', N'XWKd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowDetail', 'COLUMN', N'XWKd_Ownership'
GO
