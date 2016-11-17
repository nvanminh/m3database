CREATE TABLE [dbo].[iO_Control_ProductValuation]
(
[XRV_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRV_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_IDLink_XSCc] [int] NULL,
[XRV_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRV_IDUser] [int] NULL,
[XRV_Type] [int] NULL,
[XRV_SecurityValue] [int] NULL,
[XRV_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductValuation] ADD CONSTRAINT [PK_iO_Control_ProductTypeValuation] PRIMARY KEY CLUSTERED  ([XRV_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductValuation', 'COLUMN', N'XRV_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductValuation', 'COLUMN', N'XRV_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductValuation', 'COLUMN', N'XRV_Ownership'
GO
