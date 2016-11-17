CREATE TABLE [dbo].[iO_Control_ProductPurpose]
(
[XRPu_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPu_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRPu_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_IDLink_XSCc] [int] NULL,
[XRPu_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_IDLink_XRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_Type] [int] NULL,
[XRPu_IDUser] [int] NULL,
[XRPu_IDARMclassic] [int] NULL,
[XRPu_SecurityValue] [int] NULL,
[XRPu_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRPu_AlternateDetail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPurpose] ADD CONSTRAINT [PK_iO_Control_ProductPurpose] PRIMARY KEY CLUSTERED  ([XRPu_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPurpose', 'COLUMN', N'XRPu_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPurpose', 'COLUMN', N'XRPu_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPurpose', 'COLUMN', N'XRPu_Ownership'
GO
