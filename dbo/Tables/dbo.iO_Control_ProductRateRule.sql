CREATE TABLE [dbo].[iO_Control_ProductRateRule]
(
[XRRr_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRRr_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRr_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRr_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRr_IDLink_XRRm] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRr_Type] [int] NULL,
[XRRr_IDUser] [int] NULL,
[XRRr_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRRr_SecurityValue] [int] NULL,
[XRRr_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductRateRule] ADD CONSTRAINT [PK_iO_Control_ProductRateRule] PRIMARY KEY CLUSTERED  ([XRRr_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateRule', 'COLUMN', N'XRRr_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateRule', 'COLUMN', N'XRRr_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductRateRule', 'COLUMN', N'XRRr_Ownership'
GO
