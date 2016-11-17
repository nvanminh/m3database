CREATE TABLE [dbo].[iO_Client_OtherDetail]
(
[COT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COT_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COT_IDLink_Key1] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[COT_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[COT_IDUser] [int] NULL,
[COT_Type] [int] NULL,
[COT_ApprovalLimit] [float] NULL,
[COT_RecommenditionLimit] [float] NULL,
[COT_UnderWriterFiles] [int] NULL,
[COT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_OtherDetail] ADD CONSTRAINT [PK_iO_Client_OtherDetail] PRIMARY KEY CLUSTERED  ([COT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_OtherDetail] ON [dbo].[iO_Client_OtherDetail] ([COT_IDLink_CMR], [COT_IDLink_Key1]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_OtherDetail', 'COLUMN', N'COT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_OtherDetail', 'COLUMN', N'COT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_OtherDetail', 'COLUMN', N'COT_Ownership'
GO
