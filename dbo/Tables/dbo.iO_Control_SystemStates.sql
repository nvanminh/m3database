CREATE TABLE [dbo].[iO_Control_SystemStates]
(
[XSYSsa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSsa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_Type] [int] NULL,
[XSYSsa_IDUser] [int] NULL,
[XSYSsa_ABBR] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_FullName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSsa_IDUser_NBC] [int] NULL,
[XSYSsa_IDUser_PRF] [bit] NULL,
[XSYSsa_IDUser_FCX] [bit] NULL,
[XSYSsa_IDUser_Zone] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemStates] ADD CONSTRAINT [PK_iO_Control_SystemStates] PRIMARY KEY CLUSTERED  ([XSYSsa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStates', 'COLUMN', N'XSYSsa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStates', 'COLUMN', N'XSYSsa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemStates', 'COLUMN', N'XSYSsa_Ownership'
GO
