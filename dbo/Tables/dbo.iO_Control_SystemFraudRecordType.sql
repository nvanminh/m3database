CREATE TABLE [dbo].[iO_Control_SystemFraudRecordType]
(
[XSYSft_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSft_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_IDUser] [int] NULL,
[XSYSft_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_IDLink_XSCc] [int] NULL,
[XSYSft_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_Type] [int] NULL,
[XSYSft_SecurityValue] [int] NULL,
[XSYSft_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSft_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemFraudRecordType] ADD CONSTRAINT [PK_iO_Control_SystemFraudRecordType] PRIMARY KEY CLUSTERED  ([XSYSft_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemFraudRecordType', 'COLUMN', N'XSYSft_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemFraudRecordType', 'COLUMN', N'XSYSft_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemFraudRecordType', 'COLUMN', N'XSYSft_Ownership'
GO
