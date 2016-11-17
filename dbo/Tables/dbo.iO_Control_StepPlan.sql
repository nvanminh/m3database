CREATE TABLE [dbo].[iO_Control_StepPlan]
(
[XRUplan_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRUplan_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRUplan_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_IDLink_XRU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_IDLink_Step] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_Type] [int] NULL,
[XRUplan_IDUser] [int] NULL,
[XRUplan_IDOrder] [int] NULL,
[XRUplan_Detail] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_Severity] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRUplan_SecurityValue] [int] NULL,
[XRUplan_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_StepPlan] ADD CONSTRAINT [PK_iO_Control_StepPlan] PRIMARY KEY CLUSTERED  ([XRUplan_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_StepPlan] ON [dbo].[iO_Control_StepPlan] ([XRUplan_IDLink_XRU]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepPlan', 'COLUMN', N'XRUplan_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepPlan', 'COLUMN', N'XRUplan_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_StepPlan', 'COLUMN', N'XRUplan_Ownership'
GO
