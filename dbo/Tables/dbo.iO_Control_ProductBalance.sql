CREATE TABLE [dbo].[iO_Control_ProductBalance]
(
[XRBl_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRBl_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRBl_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_IDLink_XSCc] [int] NULL,
[XRBl_Type] [int] NULL,
[XRBl_IDUser] [int] NULL,
[XRBl_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_Rebuild] [bit] NULL,
[XRBl_SecurityValue] [int] NULL,
[XRBl_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_IDLink_XTRM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_Rebuild_Accruals] [bit] NULL,
[XRBl_Rebuild_InstalmentArrears] [bit] NULL,
[XRBl_IDLink_XSYSct_Base] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_IDLink_XSYSct_Target] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRBl_CurrencyConversion] [bit] NULL,
[XRBl_CurrencyUseMatrix] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductBalance] ADD CONSTRAINT [PK_iO_Control_ProductTypeBalance] PRIMARY KEY CLUSTERED  ([XRBl_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ProductBalance] ON [dbo].[iO_Control_ProductBalance] ([XRBl_IDUser]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductBalance', 'COLUMN', N'XRBl_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductBalance', 'COLUMN', N'XRBl_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductBalance', 'COLUMN', N'XRBl_Ownership'
GO
