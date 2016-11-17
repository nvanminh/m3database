CREATE TABLE [dbo].[iO_Control_ClientBusinessStructure]
(
[XCB_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCB_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCB_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCB_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCB_Type] [int] NULL,
[XCB_IDUser] [int] NULL,
[XCB_SecurityValue] [int] NULL,
[XCB_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCB_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientBusinessStructure] ADD CONSTRAINT [PK_iO_Control_ClientBusinessStructure] PRIMARY KEY CLUSTERED  ([XCB_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructure', 'COLUMN', N'XCB_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructure', 'COLUMN', N'XCB_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructure', 'COLUMN', N'XCB_Ownership'
GO
