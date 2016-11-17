CREATE TABLE [dbo].[iO_Control_ClassClientField]
(
[XCYf_ID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCYf_Ownership] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_IDLink_Version] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_IDLink_Sync] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_IDLink_XCY] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_IDLink_XFDM] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_IDLink_Code] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_Type] [int] NULL,
[XCYf_IDUser] [int] NULL,
[XCYf_IDControl] [int] NULL,
[XCYf_Detail] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[XCYf_SecurityValue] [int] NULL,
[XCYf_Note] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[iO_Control_ClassClientField] ADD CONSTRAINT [PK_iO_Control_ClassClientField] PRIMARY KEY CLUSTERED  ([XCYf_ID]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_iO_Control_ClassClientField] ON [dbo].[iO_Control_ClassClientField] ([XCYf_IDLink_XCY]) WITH (FILLFACTOR=85) ON [PRIMARY]
GO
