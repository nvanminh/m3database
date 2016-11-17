CREATE TABLE [dbo].[iO_Control_TransferMaster]
(
[XTRF_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRF_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_XSCc] [int] NULL,
[XTRF_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_SQLImport] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_SQLExport] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_FileTo] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_IDLink_SelectionForm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_Type] [int] NULL,
[XTRF_IDUser] [int] NULL,
[XTRF_SecurityValue] [int] NULL,
[XTRF_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_XMLData] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_XMLSchema] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_Data] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_Schema] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_FixedLength] [int] NULL,
[XTRF_CSVDelimited] [int] NULL,
[XTRF_CSVDelimitedOther] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_FileLocation] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_FileName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRF_NewlineHandlingType] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransferMaster] ADD CONSTRAINT [PK_iO_Control_TransferMaster] PRIMARY KEY CLUSTERED  ([XTRF_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferMaster', 'COLUMN', N'XTRF_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferMaster', 'COLUMN', N'XTRF_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferMaster', 'COLUMN', N'XTRF_Ownership'
GO
