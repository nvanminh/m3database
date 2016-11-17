CREATE TABLE [dbo].[iO_Control_LiabilitiesCredit]
(
[XLBc_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLBc_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XLBc_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_IDLink_XSCc] [int] NULL,
[XLBc_Type] [int] NULL,
[XLBc_IDUser] [int] NULL,
[XLBc_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_SecurityValue] [int] NULL,
[XLBc_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XLBc_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_LiabilitiesCredit] ADD CONSTRAINT [PK_iO_Control_LiabilitiesType] PRIMARY KEY CLUSTERED  ([XLBc_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesCredit', 'COLUMN', N'XLBc_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesCredit', 'COLUMN', N'XLBc_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_LiabilitiesCredit', 'COLUMN', N'XLBc_Ownership'
GO
