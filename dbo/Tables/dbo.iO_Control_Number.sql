CREATE TABLE [dbo].[iO_Control_Number]
(
[XCN_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCN_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCN_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCN_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCN_Type] [int] NULL,
[XCN_IDUser] [int] NULL,
[XCN_IDARMclassic] [int] NULL,
[XCN_TableName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCN_Number] [bigint] NULL,
[XCN_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCN_SecurityValue] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_Number] ADD CONSTRAINT [PK_iO_Control_Number] PRIMARY KEY CLUSTERED  ([XCN_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
