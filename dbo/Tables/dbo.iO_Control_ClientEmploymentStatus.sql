CREATE TABLE [dbo].[iO_Control_ClientEmploymentStatus]
(
[XCEs_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCEs_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCEs_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_IDUser] [int] NULL,
[XCEs_IDLink_XSCc] [int] NULL,
[XCEs_SecurityValue] [int] NULL,
[XCEs_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_Type] [int] NULL,
[XCEs_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_B2PKeyword] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCEs_IDARMclassic] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClientEmploymentStatus] ADD CONSTRAINT [PK_iO_Control_ClientEmploymentStatus] PRIMARY KEY CLUSTERED  ([XCEs_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
