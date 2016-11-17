CREATE TABLE [dbo].[iO_Control_ClientEmploymentBasis]
(
[XCEt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCEt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCEt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_IDUser] [int] NULL,
[XCEt_IDLink_XSCc] [int] NULL,
[XCEt_SecurityValue] [int] NULL,
[XCEt_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_Type] [int] NULL,
[XCEt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEt_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientEmploymentBasis] ADD CONSTRAINT [PK_iO_Control_ClientEmploymentBasis] PRIMARY KEY CLUSTERED  ([XCEt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary Key.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientEmploymentBasis', 'COLUMN', N'XCEt_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Used to compare records in Replication process.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientEmploymentBasis', 'COLUMN', N'XCEt_IDLink_Version'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Redundant.', 'SCHEMA', N'dbo', 'TABLE', N'iO_Control_ClientEmploymentBasis', 'COLUMN', N'XCEt_Ownership'
GO
