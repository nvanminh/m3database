CREATE TABLE [dbo].[iO_Control_CompanyEntityType]
(
[XCCE_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCCE_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCCE_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_IDLink_XSCc] [int] NULL,
[XCCE_Type] [int] NULL,
[XCCE_IDUser] [int] NULL,
[XCCE_Detail] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_B2BKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_SecurityValue] [int] NULL,
[XCCE_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCCE_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_CompanyEntityType] ADD CONSTRAINT [PK_iO_Control_CompanyEntityType] PRIMARY KEY CLUSTERED  ([XCCE_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CompanyEntityType', 'COLUMN', N'XCCE_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CompanyEntityType', 'COLUMN', N'XCCE_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_CompanyEntityType', 'COLUMN', N'XCCE_Ownership'
GO
