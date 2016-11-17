CREATE TABLE [dbo].[iO_Control_ClientCategory]
(
[XCCe_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCCe_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCe_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCe_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCe_Type] [int] NULL,
[XCCe_IDUser] [int] NULL,
[XCCe_SecurityValue] [int] NULL,
[XCCe_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCe_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientCategory] ADD CONSTRAINT [PK_iO_Control_CategoryType] PRIMARY KEY CLUSTERED  ([XCCe_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientCategory', 'COLUMN', N'XCCe_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientCategory', 'COLUMN', N'XCCe_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientCategory', 'COLUMN', N'XCCe_Ownership'
GO
