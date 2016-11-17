CREATE TABLE [dbo].[iO_Control_Cost]
(
[XCTc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCTc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_Type] [int] NULL,
[XCTc_IDUser] [int] NULL,
[XCTc_SecurityValue] [int] NULL,
[XCTc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_IDLink_XSCc] [int] NULL,
[XCTc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTc_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Cost] ADD CONSTRAINT [PK_iO_Control_Cost] PRIMARY KEY CLUSTERED  ([XCTc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Cost', 'COLUMN', N'XCTc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Cost', 'COLUMN', N'XCTc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_Cost', 'COLUMN', N'XCTc_Ownership'
GO
