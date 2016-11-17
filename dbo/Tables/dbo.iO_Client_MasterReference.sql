CREATE TABLE [dbo].[iO_Client_MasterReference]
(
[CMR_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMR_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMR_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_XCY] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_XSU] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_XSYSct] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_XSYSlt] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CMR_RunStatus] [int] NULL,
[CMR_IDUser] [int] NULL,
[CMR_Type] [int] NULL,
[CMR_Name] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_Soundex] [char] (4) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_BlackList] [bit] NULL,
[CMR_SecuirtyLock] [bit] NULL,
[CMR_SecurityValue] [int] NULL,
[CMR_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_LanguagePreference] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_Flag_ExistingClient] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_DateTime] [smalldatetime] NULL CONSTRAINT [DF_iO_Client_MasterReference_CMR_DateTime] DEFAULT (getdate()),
[CMR_BlacklistDate] [datetime] NULL,
[CMR_StockCode] [varchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_MatrixStatus] [int] NULL,
[CMR_IDLink_DeDupe] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_IDLink_KeySearch] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CMR_CreditBureauResponse] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_MasterReference] ADD CONSTRAINT [PK_Client_Master] PRIMARY KEY CLUSTERED  ([CMR_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DeDupe_01_iO_Client_MasterReference] ON [dbo].[iO_Client_MasterReference] ([CMR_IDLink_KeySearch]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_MasterReference] ON [dbo].[iO_Client_MasterReference] ([CMR_Name]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20131207-103509_CMR_Seqnumber] ON [dbo].[iO_Client_MasterReference] ([CMR_SeqNumber]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_MasterReference', 'COLUMN', N'CMR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_MasterReference', 'COLUMN', N'CMR_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_MasterReference', 'COLUMN', N'CMR_Ownership'
GO
