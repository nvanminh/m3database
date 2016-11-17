CREATE TABLE [dbo].[iO_System_DataBase]
(
[SYSdb_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSdb_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SYSdb_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_IDLink_Type] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_IDLink_FullComputerName] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[SYSdb_IDUser] [int] NULL,
[SYSdb_Type] [int] NULL,
[SYSdb_Properties] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_StartSeqNo] [int] NULL,
[SYSdb_Instance] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_Command] [int] NULL,
[SYSdb_LastChanged] [datetime] NULL,
[SYSdb_ServiceInstance] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_PropertyName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SYSdb_PropertyValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_System_DataBase] ADD CONSTRAINT [PK_iO_System_DataBase] PRIMARY KEY CLUSTERED  ([SYSdb_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataBase', 'COLUMN', N'SYSdb_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataBase', 'COLUMN', N'SYSdb_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_System_DataBase', 'COLUMN', N'SYSdb_Ownership'
GO
