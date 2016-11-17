CREATE TABLE [dbo].[iO_Control_ChequeType]
(
[XCTt_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCTt_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCTt_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTt_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTt_Type] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTt_IDUser] [int] NULL,
[XCTt_Detail] [varchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTt_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCTt_TypeCatID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ChequeType] ADD CONSTRAINT [PK_iO_Control_ChequeType] PRIMARY KEY CLUSTERED  ([XCTt_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
