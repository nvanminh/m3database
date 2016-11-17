CREATE TABLE [dbo].[iO_Control_IncomeType]
(
[XIN_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XIN_OWnership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XIN_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_IDLink_XSCc] [int] NULL,
[XIN_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_Type] [int] NULL,
[XIN_IDUser] [int] NULL,
[XIN_SecurityValue] [int] NULL,
[XIN_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_B2PUsesL12] [bit] NULL,
[XIN_AlternateDetail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XIN_PercentToUse] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_IncomeType] ADD CONSTRAINT [PK_iO_Control_IncomeType] PRIMARY KEY CLUSTERED  ([XIN_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_IncomeType', 'COLUMN', N'XIN_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_IncomeType', 'COLUMN', N'XIN_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_IncomeType', 'COLUMN', N'XIN_OWnership'
GO
