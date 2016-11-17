CREATE TABLE [dbo].[iO_TaskStaffPriority]
(
[CMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Task_Type_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_TaskStaffPriority] ADD CONSTRAINT [PK_iO_TaskCmrPriority] PRIMARY KEY CLUSTERED  ([CMR_ID], [Task_Type_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_TaskStaffPriority] ADD CONSTRAINT [fk_PriorityCmr] FOREIGN KEY ([CMR_ID]) REFERENCES [dbo].[iO_Client_MasterReference] ([CMR_ID])
GO
ALTER TABLE [dbo].[iO_TaskStaffPriority] ADD CONSTRAINT [fk_PriorityTask] FOREIGN KEY ([Task_Type_ID]) REFERENCES [dbo].[iO_Control_TaskMaster] ([XTKM_ID])
GO
