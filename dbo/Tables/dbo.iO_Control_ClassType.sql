CREATE TABLE [dbo].[iO_Control_ClassType]
(
[XCT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCT_Type] [int] NULL,
[XCT_IDUser] [int] NULL,
[XCT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCT_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassType] ADD CONSTRAINT [PK_iO_Control_ClassType] PRIMARY KEY CLUSTERED  ([XCT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassType', 'COLUMN', N'XCT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassType', 'COLUMN', N'XCT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClassType', 'COLUMN', N'XCT_Ownership'
GO
