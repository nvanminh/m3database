CREATE TABLE [dbo].[iO_Control_ClientBusinessStructureGL]
(
[XCBg_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCBg_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCBg_IDLink_XCB] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCBg_Type] [int] NULL,
[XCBg_FullPath] [varchar] (1500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCBg_Post] [bit] NULL,
[XCBg_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCBg_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCBg_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientBusinessStructureGL] ADD CONSTRAINT [PK_iO_Control_Client_GLStructure] PRIMARY KEY CLUSTERED  ([XCBg_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructureGL', 'COLUMN', N'XCBg_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructureGL', 'COLUMN', N'XCBg_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientBusinessStructureGL', 'COLUMN', N'XCBg_Ownership'
GO
