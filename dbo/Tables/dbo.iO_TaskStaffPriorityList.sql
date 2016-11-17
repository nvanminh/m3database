CREATE TABLE [dbo].[iO_TaskStaffPriorityList]
(
[PriorityPK] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[Priority] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_TaskStaffPriorityList] ADD CONSTRAINT [PK_iO_TaskStaffPriorityList] PRIMARY KEY CLUSTERED  ([PriorityPK]) ON [PRIMARY]
GO
