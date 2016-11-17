CREATE TABLE [dbo].[iO_Control_WorkFlowRule]
(
[XWKr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_IDLink_XWKm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_SeqNo] [int] NULL,
[XWKr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_Field1] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_Field2] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_Cond] [int] NULL,
[XWKr_Type] [int] NULL,
[XWKr_Continue] [bit] NULL,
[XWKr_AskQuestion] [bit] NULL,
[XWKr_Reason] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WorkFlowRule] ADD CONSTRAINT [PK_iO_Control_WorkFlowRule] PRIMARY KEY CLUSTERED  ([XWKr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-110346_Fields] ON [dbo].[iO_Control_WorkFlowRule] ([XWKr_Field1], [XWKr_Field2], [XWKr_Cond]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowRule] ON [dbo].[iO_Control_WorkFlowRule] ([XWKr_IDLink_XWKm]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowRule', 'COLUMN', N'XWKr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowRule', 'COLUMN', N'XWKr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowRule', 'COLUMN', N'XWKr_Ownership'
GO
