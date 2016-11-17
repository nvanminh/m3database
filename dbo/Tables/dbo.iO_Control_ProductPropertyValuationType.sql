CREATE TABLE [dbo].[iO_Control_ProductPropertyValuationType]
(
[XRVt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRVt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XRVt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_Type] [int] NULL,
[XRVt_IDUser] [int] NULL,
[XRVt_SecurityValue] [int] NULL,
[XRVt_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XRVt_IDARMclassic] [int] NULL,
[XRVt_IDLink_XSCc] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ProductPropertyValuationType] ADD CONSTRAINT [PK_iO_Control_ProductPropertyValuationType] PRIMARY KEY CLUSTERED  ([XRVt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyValuationType', 'COLUMN', N'XRVt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyValuationType', 'COLUMN', N'XRVt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ProductPropertyValuationType', 'COLUMN', N'XRVt_Ownership'
GO
