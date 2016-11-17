CREATE TABLE [dbo].[iO_Control_TransferFixDetail]
(
[XTRFfixd_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XTRFfixd_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_IDLink_XTRF] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_IDLink_XTRFfixt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_Position] [int] NULL,
[XTRFfixd_Length] [int] NULL,
[XTRFfixd_FieldName] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XTRFfixd_Type] [int] NULL,
[XTRFfixd_Optional] [bit] NULL,
[XTRFfixd_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_TransferFixDetail] ADD CONSTRAINT [PK_iO_Control_TransferFixedDetail] PRIMARY KEY CLUSTERED  ([XTRFfixd_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixDetail', 'COLUMN', N'XTRFfixd_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixDetail', 'COLUMN', N'XTRFfixd_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_TransferFixDetail', 'COLUMN', N'XTRFfixd_Ownership'
GO
