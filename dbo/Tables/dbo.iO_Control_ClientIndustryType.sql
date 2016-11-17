CREATE TABLE [dbo].[iO_Control_ClientIndustryType]
(
[XCI_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCI_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCI_Type] [int] NULL,
[XCI_IDUser] [int] NULL,
[XCI_SecurityValue] [int] NULL,
[XCI_Detail] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCI_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCI_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCI_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientIndustryType] ADD CONSTRAINT [PK_iO_Control_ClientIndustryType] PRIMARY KEY CLUSTERED  ([XCI_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientIndustryType', 'COLUMN', N'XCI_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientIndustryType', 'COLUMN', N'XCI_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientIndustryType', 'COLUMN', N'XCI_Ownership'
GO
