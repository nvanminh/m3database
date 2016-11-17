CREATE TABLE [dbo].[iO_Client_ControlDate]
(
[CXD_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CXD_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CXD_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CXD_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CXD_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CXD_IDLink_XCD] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CXD_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CXD_IDUser] [int] NULL,
[CXD_Type] [int] NULL,
[CXD_Start] [datetime] NULL,
[CXD_End] [datetime] NULL,
[CXD_Next] [datetime] NULL,
[CXD_Prev] [datetime] NULL,
[CXD_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_ControlDate] ADD CONSTRAINT [PK_iO_Client_ControlDate] PRIMARY KEY CLUSTERED  ([CXD_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_ControlDate] ON [dbo].[iO_Client_ControlDate] ([CXD_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ControlDate', 'COLUMN', N'CXD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ControlDate', 'COLUMN', N'CXD_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_ControlDate', 'COLUMN', N'CXD_Ownership'
GO
