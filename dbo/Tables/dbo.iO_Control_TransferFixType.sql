CREATE TABLE [dbo].[iO_Control_TransferFixType]
(
[XTRFfixt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRFfixt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixt_IDLink_XTRF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixt_OneOnly] [bit] NULL,
[XTRFfixt_FilePostionFirst] [bit] NULL,
[XTRFfixt_FilePostionLast] [bit] NULL,
[XTRFfixt_FilePostionAny] [bit] NULL,
[XTRFfixt_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransferFixType] ADD CONSTRAINT [PK_iO_Control_TransferFixedType] PRIMARY KEY CLUSTERED  ([XTRFfixt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixType', 'COLUMN', N'XTRFfixt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixType', 'COLUMN', N'XTRFfixt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixType', 'COLUMN', N'XTRFfixt_Ownership'
GO
