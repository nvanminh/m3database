CREATE TABLE [dbo].[iO_Control_ProductPropertyType]
(
[XRTy_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTy_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRTy_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_IDLink_XSCc] [int] NULL,
[XRTy_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_Type] [int] NULL,
[XRTY_IDUser] [int] NULL,
[XRTy_SecurityValue] [int] NULL,
[XRTy_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRTy_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyType] ADD CONSTRAINT [PK_iO_Control_ProductPropertyType] PRIMARY KEY CLUSTERED  ([XRTy_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyType', 'COLUMN', N'XRTy_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyType', 'COLUMN', N'XRTy_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyType', 'COLUMN', N'XRTy_Ownership'
GO
