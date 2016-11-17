CREATE TABLE [dbo].[iO_Control_WorkFlowAction]
(
[XWKa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XWKa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_IDLink_XWKm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_IDLink_Code] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_IDLink_Link] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_IDLink_Association] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_When] [int] NULL,
[XWKa_SeqNo] [int] NULL,
[XWKa_Type] [int] NULL,
[XWKa_AfterEnter] [int] NULL,
[XWKa_ProcessType] [int] NULL,
[XWKa_ProcessStopOverRide] [int] NULL,
[XWKa_ControlName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWka_CommandLine] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XWKa_Timeout] [int] NULL,
[XWKa_PollingInterval] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_WorkFlowAction] ADD CONSTRAINT [PK_iO_Control_WorkFlowAction] PRIMARY KEY CLUSTERED  ([XWKa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_WorkFlowAction] ON [dbo].[iO_Control_WorkFlowAction] ([XWKa_IDLink_XWKm], [XWKa_SeqNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [iO_Control_WorkFlowAction_Seqnumber] ON [dbo].[iO_Control_WorkFlowAction] ([XWKa_SeqNo]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowAction', 'COLUMN', N'XWKa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowAction', 'COLUMN', N'XWKa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_WorkFlowAction', 'COLUMN', N'XWKa_Ownership'
GO
