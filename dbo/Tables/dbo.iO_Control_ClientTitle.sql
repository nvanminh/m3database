CREATE TABLE [dbo].[iO_Control_ClientTitle]
(
[XCTi_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCTi_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCTi_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTi_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTi_Type] [int] NULL,
[XCTi_IDUser] [int] NULL,
[XCTi_IDARMclassic] [int] NULL,
[XCTi_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTi_SecurityValue] [int] NULL,
[XCTi_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientTitle] ADD CONSTRAINT [PK_iO_Control_ClientTitle] PRIMARY KEY CLUSTERED  ([XCTi_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientTitle', 'COLUMN', N'XCTi_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientTitle', 'COLUMN', N'XCTi_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientTitle', 'COLUMN', N'XCTi_Ownership'
GO
