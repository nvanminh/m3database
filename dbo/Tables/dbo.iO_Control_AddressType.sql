CREATE TABLE [dbo].[iO_Control_AddressType]
(
[XAT_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XAT_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XAT_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_IDLink_XCY] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_Type] [int] NULL,
[XAT_IDUser] [int] NULL,
[XAT_IDARMclassic] [int] NULL,
[XAT_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_SecurityValue] [int] NULL,
[XAT_B2BKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XAT_Image] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_AddressType] ADD CONSTRAINT [PK_iO_Control_AddressType] PRIMARY KEY CLUSTERED  ([XAT_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressType', 'COLUMN', N'XAT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressType', 'COLUMN', N'XAT_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_AddressType', 'COLUMN', N'XAT_Ownership'
GO
