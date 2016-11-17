CREATE TABLE [dbo].[iO_Control_EmployeePerformanceType]
(
[XEPT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XEPT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XEPT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XEPT_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XEPT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XEPT_IDUser] [int] NULL,
[XEPT_IDLink_XSCc] [int] NULL,
[XEPT_SecurityValue] [int] NULL,
[XEPT_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XEPT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_EmployeePerformanceType] ADD CONSTRAINT [PK_iO_Control_EmployeePerformanceType] PRIMARY KEY CLUSTERED  ([XEPT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_EmployeePerformanceType', 'COLUMN', N'XEPT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_EmployeePerformanceType', 'COLUMN', N'XEPT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_EmployeePerformanceType', 'COLUMN', N'XEPT_Ownership'
GO
