CREATE TABLE [dbo].[iO_Client_TypeStandard]
(
[CTS_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTS_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTS_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTS_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTS_IDLink_CMR] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CTS_SeqNumber] [bigint] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[CTS_Name_1] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTS_Name_2] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CTS_IDUser] [int] NULL,
[CTS_Type] [int] NULL,
[CTS_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Client_TypeStandard] ADD CONSTRAINT [PK_iO_Client_TypeDepartment] PRIMARY KEY CLUSTERED  ([CTS_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Client_TypeStandard] ON [dbo].[iO_Client_TypeStandard] ([CTS_IDLink_CMR]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeStandard', 'COLUMN', N'CTS_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeStandard', 'COLUMN', N'CTS_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Client_TypeStandard', 'COLUMN', N'CTS_Ownership'
GO
