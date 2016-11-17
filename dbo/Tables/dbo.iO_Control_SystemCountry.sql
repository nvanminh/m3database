CREATE TABLE [dbo].[iO_Control_SystemCountry]
(
[XSYSct_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XSYSct_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_Type] [int] NULL,
[XSYSct_IDUser] [int] NULL,
[XSYSct_Code] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_DateFormat] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_BSBFormat] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_Currency] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_CurrencyCode] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_CurrencyName] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_PostCodeDefined] [bit] NULL,
[XSYSct_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XSYSct_SecurityValue] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_SystemCountry] ADD CONSTRAINT [PK_iO_Control_SystemCountry] PRIMARY KEY CLUSTERED  ([XSYSct_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemCountry', 'COLUMN', N'XSYSct_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemCountry', 'COLUMN', N'XSYSct_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_SystemCountry', 'COLUMN', N'XSYSct_Ownership'
GO
