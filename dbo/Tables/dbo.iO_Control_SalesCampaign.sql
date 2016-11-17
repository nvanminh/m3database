CREATE TABLE [dbo].[iO_Control_SalesCampaign]
(
[XSCa_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCa_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSCa_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCa_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCa_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCa_IDUser] [int] NULL,
[XSCa_IDLink_XSCc] [int] NULL,
[XSCa_SecurityValue] [int] NULL,
[XSCa_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSCa_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SalesCampaign] ADD CONSTRAINT [PK_iO_Control_SalesCampaign] PRIMARY KEY CLUSTERED  ([XSCa_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SalesCampaign', 'COLUMN', N'XSCa_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SalesCampaign', 'COLUMN', N'XSCa_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SalesCampaign', 'COLUMN', N'XSCa_Ownership'
GO
